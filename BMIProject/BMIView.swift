//
//  BMIView.swift
//  Days100OfSwiftUI
//
//  Created by HarrisShao on 2025/6/11.
//

import SwiftUI

struct BMIView: View {

    @State private var userHeight: Double = 175.0
    @State private var userWeight: Double = 65.0
    @State private var showBMIResultView: Bool = false
    @State private var bmiResult: String = "正常"
    @State private var bmiColor: Color = .green
    @State private var bmiNum: Double = 0

    var body: some View {
        NavigationStack {
            ZStack(alignment: .bottom) {
                Form {
                    LabeledContent("身高cm") {
                        TextField("请输入", value: $userHeight, format: .number)
                    }

                    LabeledContent("体重kg") {
                        TextField("请输入", value: $userWeight, format: .number)
                    }
                }
                .multilineTextAlignment(.trailing)

                VStack(
                    spacing: 48,
                    content: {
                        bmiReferenceView
                        Button {
                            self.showBMIResultView.toggle()
                            computeBMI()
                        } label: {
                            Text("立即计算")
                                .font(.system(size: 17))
                                .foregroundStyle(Color.white)
                                .frame(maxWidth: .infinity, maxHeight: 48)
                                .background(Color.green)
                                .cornerRadius(16)
                                .padding(.horizontal)
                        }

                    }
                )
            }
            .navigationTitle("BMI计算器")
            .navigationBarTitleDisplayMode(.inline)
            .navigationDestination(isPresented: $showBMIResultView) {
               
                
                BMIResultView(
                    height: userHeight,
                    weight: userWeight,
                    bmiNum: bmiNum,
                    bmiResult: bmiResult,
                    bmiColor: bmiColor
                )
            }
        }
        
        

    }

    

    private var bmiReferenceView: some View {
        VStack(spacing: 20) {
            HStack {
                Image(systemName: "paperplane")
                Text("参考标准")
                    .font(.title3)
                    .bold()
            }

            BMIReferenceItemView(
                bmiColor: Color.blue,
                bmiResult: "过轻",
                bmiScope: "BMI <= 18.5"
            )
            BMIReferenceItemView(
                bmiColor: Color.green,
                bmiResult: "正常",
                bmiScope: "18.5 < BMI <= 24"
            )
            BMIReferenceItemView(
                bmiColor: Color.yellow,
                bmiResult: "过重",
                bmiScope: "24 < BMI <= 28"
            )
            BMIReferenceItemView(
                bmiColor: Color.orange,
                bmiResult: "肥胖",
                bmiScope: "28 < BMI <= 32"
            )
            BMIReferenceItemView(
                bmiColor: Color.red,
                bmiResult: "重度肥胖",
                bmiScope: "BMI > 32"
            )
        }
        .padding()
        .background(Color.white)
        .cornerRadius(16)
        .padding(.horizontal)
    }

    
    func computeBMI(){
        
        let squaredHeight = (userHeight / 100) * (userHeight / 100)
        bmiNum = userWeight / squaredHeight

        switch bmiNum {
        case ...18.5:
            bmiResult = "过轻"
            bmiColor = Color.blue
        case 18.5..<24:
            bmiResult = "正常"
            bmiColor = Color.green
        case 24..<28:
            bmiResult = "过重"
            bmiColor = Color.yellow
                    case 28..<32:
            bmiResult = "肥胖"
            bmiColor = Color.orange
        default:
            bmiResult = "重度肥胖"
            bmiColor = Color.red
        }
        print(bmiResult, bmiColor)

    }
}

struct BMIReferenceItemView: View {

    var bmiColor: Color
    var bmiResult: String
    var bmiScope: String

    var body: some View {

        HStack(
            spacing: 20,
            content: {
                Rectangle()
                    .fill(bmiColor)
                    .frame(width: 60, height: 20)
                    .cornerRadius(4)

                Text(bmiResult)
                    .foregroundStyle(bmiColor)

                Spacer()

                Text(bmiScope)
            }
        )

    }
}

#Preview {
    BMIView()
}
