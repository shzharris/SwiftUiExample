//
//  PickerUIView.swift
//  Days100OfSwiftUI
//
//  Created by HarrisShao on 2025/6/8.
//

import SwiftUI

struct PickerUIView: View {

    @State var selectValue: String = "Most Recent"
    let filterOptions : [String] = [
        "Most Recent", "Most popular", "Most Liked"
    ]
    
    
    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor.red
        
        let attributes: [NSAttributedString.Key:Any] = [
            .foregroundColor: UIColor.white
        ]
        UISegmentedControl.appearance().setTitleTextAttributes(attributes, for: .selected)
    }

    var body: some View {

        Picker(
            selection: $selectValue,
            label:
                HStack{
                    Text("Filter:")
                    Text(selectValue)
                }
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(Color.blue)
                .cornerRadius(10)
                .shadow(color:Color.blue.opacity(0.3), radius:10, x: 0, y:10)
            ,
            content: {
                ForEach(filterOptions.indices) { option in
//                    HStack {
                        Text(filterOptions[option]).tag(filterOptions[option])
//                        Image(systemName: "heart.fill")
//                    }
                    
                }
            }
        )
        .pickerStyle(SegmentedPickerStyle())
        

        //        VStack {
        //
        //            HStack {
        //                Text("Age:")
        //                Text(selectValue)
        //            }
        //
        //            Picker(
        //                selection: $selectValue,
        //                label: Text("Picker"),
        //                content: {
        //
        //                    ForEach(19..<90, content: { number in
        //                        Text("\(number)")
        //                            .tag("\(number)")
        //                            .font(.headline)
        //                            .foregroundColor(.red)
        //                    })
        //                }
        //            )
        ////            .background(Color.gray.opacity(0.3))
        //            .pickerStyle(WheelPickerStyle())
        //        }

    }
}

#Preview {
    PickerUIView()
}
