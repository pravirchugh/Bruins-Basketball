//
//  BruinsWidget.swift
//  BruinsWidget
//
//  Created by Pravir Chugh on 4/5/24.
//

import WidgetKit
import SwiftUI

struct Provider: TimelineProvider {
    func placeholder(in context: Context) -> SimpleEntry {
        SimpleEntry(date: Date(), emoji: "😀")
    }

    func getSnapshot(in context: Context, completion: @escaping (SimpleEntry) -> ()) {
        let entry = SimpleEntry(date: Date(), emoji: "😀")
        completion(entry)
    }

    func getTimeline(in context: Context, completion: @escaping (Timeline<Entry>) -> ()) {
        var entries: [SimpleEntry] = []

        // Generate a timeline consisting of five entries an hour apart, starting from the current date.
        let currentDate = Date()
        for hourOffset in 0 ..< 5 {
            let entryDate = Calendar.current.date(byAdding: .hour, value: hourOffset, to: currentDate)!
            let entry = SimpleEntry(date: entryDate, emoji: "😀")
            entries.append(entry)
        }

        let timeline = Timeline(entries: entries, policy: .atEnd)
        completion(timeline)
    }
}

struct SimpleEntry: TimelineEntry {
    let date: Date
    let emoji: String
}

struct BruinsWidgetEntryView : View {
    var entry: Provider.Entry
    var textColor = Color(red: 0.102, green: 0.118, blue: 0.192)

    var body: some View {
        VStack {
            Text("Time:")
            Text(entry.date, style: .time)

            Text("Emoji:")
            Text(entry.emoji)
            
            Text("Next Upcoming Game:")
                .foregroundColor(textColor)
                .font(.system(size: 16))
                .underline(true, color: textColor)
            Text("@ Arizona State")
                .foregroundColor(textColor)
            Text("on March 9th")
                .foregroundColor(textColor)
        }
    }
}

struct BruinsWidget: Widget {
    let kind: String = "BruinsWidget"

    var body: some WidgetConfiguration {
        // body property here -> static widget
        StaticConfiguration(kind: kind, provider: Provider()) {
            entry in
            if #available(iOS 17.0, *) {
                BruinsWidgetEntryView(entry: entry)
                    .containerBackground(.fill.tertiary, for: .widget)
            } else {
                BruinsWidgetEntryView(entry: entry)
                    .padding()
                    .background()
            }
        }
        .configurationDisplayName("Bruins Basketball Widget")
        .description("This widget gives a small glimpse.")
        .supportedFamilies([.systemSmall])
    }
}

#Preview(as: .systemSmall) {
    BruinsWidget()
} timeline: {
    SimpleEntry(date: .now, emoji: "😀")
    SimpleEntry(date: .now, emoji: "🤩")
}
