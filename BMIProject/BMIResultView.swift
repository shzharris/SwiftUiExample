//
//  BMIResultView.swift
//  Days100OfSwiftUI
//
//  Created by HarrisShao on 2025/6/11.
//

import SwiftUI

struct BMIResultView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var height: Double
    var weight: Double
    var bmiNum: Double
    var bmiResult: String
    var bmiColor: Color
    
    var body: some View {
        
        VStack {
            Spacer()
            computeResultView
            Spacer()
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                HStack {
                    Image(systemName: "gobackward")
                    Text("重新计算")
                }
                .font(.system(size: 17))
                .foregroundStyle(.white)
                .frame(width: 200, height: 48)
                .background(Color.blue)
                .cornerRadius(8)
                .padding(.horizontal)
            }

        }
        .navigationBarHidden(true)
        
    }
    // 计算结果
    private var computeResultView: some View {
        VStack(spacing: 28) {
            Text("你的 BMI 是")
                .font(.system(size: 17))
                .foregroundStyle(Color.gray)
            
            Text(String(format:"%.2f", bmiNum))
                .font(.system(size: 48))
                .foregroundStyle(bmiColor)
            
            Text(bmiResult)
                .font(.system(size:  23))
                .bold()
                .foregroundStyle(Color.white)
                .padding(.vertical, 6)
                .padding(.horizontal, 30)
                .background(bmiColor)
                .cornerRadius(32)
            
            HStack {
                Text(String(format: "%.0f", height) + " cm")
                Text("|")
                Text(String(format: "%.0f", weight) + " kg")
            }
            .font(.system(size: 17))
            .foregroundStyle(.gray)
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(Color(.systemGray6))
        .cornerRadius(16)
        .padding()
    }
    
}



#Preview {
    BMIResultView(height: 175, weight: 65, bmiNum: 24, bmiResult: "正常", bmiColor: Color.green)
}
