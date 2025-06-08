//
//  DataPickerUIView.swift
//  Days100OfSwiftUI
//
//  Created by HarrisShao on 2025/6/8.
//

import SwiftUI

struct DataPickerUIView: View {
    
    @State var selectDate:Date = Date()
    
    let startingDate: Date = Calendar.current.date(from: DateComponents(year: 2018)) ?? Date()
    let endingDate: Date = Date()
    
    var dateFormatter : DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .short
        return formatter
    }
    
    
    var body: some View {
        
        VStack {
            Text("Selected date is:")
            Text(dateFormatter.string(from: selectDate)).font(.title)
            //        DatePicker("Select a Date", selection: $selectDate)
            //        DatePicker("Select a Date", selection: $selectDate, displayedComponents: [.date, .hourAndMinute])
            DatePicker("Selet a date", selection: $selectDate, in: startingDate...endingDate, displayedComponents: [.date, .hourAndMinute])
                        .accentColor(.red)
                        .datePickerStyle(
                            CompactDatePickerStyle()
            //                GraphicalDatePickerStyle()
            //                WheelDatePickerStyle()
                        )
        }
        
    }
}

#Preview {
    DataPickerUIView()
}
