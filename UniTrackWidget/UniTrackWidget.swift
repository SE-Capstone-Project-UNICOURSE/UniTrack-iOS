//
//  FinanceWidget.swift
//  FinanceWidget
//
//  Created by UI8 on 15/10/2020.
//

import WidgetKit
import SwiftUI
import Intents

struct Provider: IntentTimelineProvider {
    func placeholder(in context: Context) -> SimpleEntry {
        SimpleEntry(date: Date(), configuration: ConfigurationIntent())
    }

    func getSnapshot(for configuration: ConfigurationIntent, in context: Context, completion: @escaping (SimpleEntry) -> ()) {
        let entry = SimpleEntry(date: Date(), configuration: configuration)
        completion(entry)
    }

    func getTimeline(for configuration: ConfigurationIntent, in context: Context, completion: @escaping (Timeline<Entry>) -> ()) {
        var entries: [SimpleEntry] = []

        // Generate a timeline consisting of five entries an hour apart, starting from the current date.
        let currentDate = Date()
        for hourOffset in 0 ..< 5 {
            let entryDate = Calendar.current.date(byAdding: .hour, value: hourOffset, to: currentDate)!
            let entry = SimpleEntry(date: entryDate, configuration: configuration)
            entries.append(entry)
        }

        let timeline = Timeline(entries: entries, policy: .atEnd)
        completion(timeline)
    }
}

struct SimpleEntry: TimelineEntry {
    let date: Date
    let configuration: ConfigurationIntent
}

//This is a data model for transactions that widget displays. You can modify text, icons, colors and many other things here.
struct Transactions: Identifiable, Hashable {
    var id = UUID()
    let icon: String
    let iconBackground: Color
    let title: String
    let description: String
    let amount: String
    let amountTextColor: Color
}

var transactions = [
    Transactions(
        icon: "creditcard.fill",
        iconBackground: Color(.systemIndigo),
        title: "UI8 LLC",
        description: "Today",
        amount: "- $44.92",
        amountTextColor: Color(.systemRed)),
    Transactions(
        icon: "bag.fill",
        iconBackground: Color(.systemOrange),
        title: "Groceries",
        description: "20 min ago",
        amount: "- $12.06",
        amountTextColor: Color(.systemRed)),
    Transactions(
        icon: "arrowshape.turn.up.left.fill",
        iconBackground: Color(.systemGreen),
        title: "Transfer to Jenny",
        description: "Thanks for dinner",
        amount: "- $17.41",
        amountTextColor: Color(.systemRed)),
    Transactions(
        icon: "cart.fill",
        iconBackground: Color(.systemYellow),
        title: "Amazon store",
        description: "Yesterday",
        amount: "- $99.65",
        amountTextColor: Color(.systemRed)),
    Transactions(
        icon: "arrowshape.turn.up.forward.fill",
        iconBackground: Color(.systemPurple),
        title: "Transfer from Cole",
        description: "15 Oct 2020, 5:32 PM",
        amount: "+ $25",
        amountTextColor: Color(.systemGreen))
]

//This a transaction item. You can modify the way it looks like here.
struct TransactionItem: View {
    @Environment(\.widgetFamily) var widgetFamily
    var transactions: Transactions
    var body: some View {
        if widgetFamily == .systemSmall {
            HStack(spacing: 10) {
                Image(systemName: transactions.icon)
                    .font(.system(size: 13, weight: .medium, design: .default))
                    .foregroundColor(Color.white)
                    .frame(width: 32, height: 32)
                    .background(transactions.iconBackground)
                    .clipShape(Circle())
                VStack(alignment: .leading, spacing: 2) {
                    Text(transactions.title)
                        .font(.footnote)
                        .fontWeight(.medium)
                        .lineLimit(1)
                    Text(transactions.description)
                        .font(.caption2)
                        .foregroundColor(.secondary)
                        .lineLimit(1)
                }
            }
        } else if widgetFamily == .systemMedium || widgetFamily == .systemLarge {
            HStack(spacing: 15) {
                Image(systemName: transactions.icon)
                    .font(.system(size: 17, weight: .medium, design: .default))
                    .foregroundColor(Color.white)
                    .frame(width: 40, height: 40)
                    .background(transactions.iconBackground)
                    .clipShape(Circle())
                HStack(alignment: .top, spacing: 15) {
                    VStack(alignment: .leading, spacing: 2) {
                        Text(transactions.title)
                            .font(.subheadline)
                            .fontWeight(.medium)
                            .lineLimit(1)
                        Text(transactions.description)
                            .font(.footnote)
                            .foregroundColor(.secondary)
                            .lineLimit(1)
                    }
                    Spacer()
                    Text(transactions.amount)
                        .font(.subheadline)
                        .fontWeight(.medium)
                        .lineLimit(1)
                        .foregroundColor(transactions.amountTextColor)
                }
            }
        }
    }
}

//This is an actual widget.
struct FinanceWidgetEntryView : View {
    @Environment(\.widgetFamily) var widgetFamily
    var entry: Provider.Entry
    var body: some View {
        if widgetFamily == .systemSmall {
            FinanceSmallWidget()
            
        } else if widgetFamily == .systemMedium {
            FinanceMediumWidget()
            
        } else if widgetFamily == .systemLarge {
            FinanceLargeWidget()
        }
    }
}

//This is a content for small widget size.
struct FinanceSmallWidget: View {
    @State var transactionItems = transactions
    var body: some View {
        HStack(spacing: 0) {
            VStack(alignment: .leading, spacing: 15) {
                Text("Recent")
                    .font(.footnote)
                    .foregroundColor(.secondary)
                VStack(alignment: .leading, spacing: 15) {
                    TransactionItem(transactions: transactionItems[0])
                    TransactionItem(transactions: transactionItems[1])
                }
            }
            Spacer()
        }
        .padding(.all, 16)
    }
}

//This is a content for medium widget size.
struct FinanceMediumWidget: View {
    @State var transactionItems = transactions
    var body: some View {
        HStack(spacing: 0) {
            VStack(alignment: .leading, spacing: 15) {
                Text("Recent")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                VStack(alignment: .leading, spacing: 15) {
                    TransactionItem(transactions: transactionItems[0])
                    TransactionItem(transactions: transactionItems[1])
                }
            }
            Spacer()
        }
        .padding(.all, 16)
    }
}

//This is a content for large widget size.
struct FinanceLargeWidget: View {
    @State var transactionItems = transactions
    var body: some View {
        HStack(spacing: 0) {
            VStack(alignment: .leading, spacing: 15) {
                Text("Recent")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                ForEach(transactionItems, id: \.self) { transactionItem in
                    TransactionItem(transactions: transactionItem)
                }
            }
            Spacer()
        }
        .padding(.all, 16)
    }
}

//This is information about the widget.
@main
struct FinanceWidget: Widget {
    let kind: String = "FinanceWidget"

    var body: some WidgetConfiguration {
        IntentConfiguration(kind: kind, intent: ConfigurationIntent.self, provider: Provider()) { entry in
            FinanceWidgetEntryView(entry: entry)
        }
        .configurationDisplayName("Finance")
        .description("See your latest transactions")
        .supportedFamilies([.systemSmall, .systemMedium, .systemLarge])
    }
}

struct FinanceWidget_Previews: PreviewProvider {
    static var previews: some View {
        FinanceWidgetEntryView(entry: SimpleEntry(date: Date(), configuration: ConfigurationIntent()))
            .previewContext(WidgetPreviewContext(family: .systemSmall))
    }
}
