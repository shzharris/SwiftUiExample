//
//  SwiftUIView.swift
//  Days100OfSwiftUI
//
//  Created by HarrisShao on 2025/6/2.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        Text( "如果你了解其他编程语言，那么你应该很熟悉这种写法——在 Swift 中，这行代码就是一个完整的程序。你不需要为了输出文本或处理字符串而导入一个单独的库。全局作用域中的代码会被当做程序的入口点，因此你不需要 main() 函数。你也不需要在每条语句的末尾添加分号")
            //            .font(.title)
            //            .font(.largeTitle)
            //            .fontWeight(.black)
            //            .fontDesign(.rounded)
            //            .font(.system(size: 40))
//            .italic()
            //            .underline(true, color:.red)
            //            .strikethrough(true, color: .red)
//            .foregroundColor(.red)
//            .multilineTextAlignment(.leading)
//            .lineLimit(1)
//            .truncationMode(.head)
//            .lineSpacing(12)
//            .fontWidth(.expanded)
            .tracking(2.0)
//            .frame(width: 200, height: 40)
//            .minimumScaleFactor(0.1)
//        
//        HStack {
//            Text("AA").baselineOffset(10)
//            Text("BB")
//            Text("CC").baselineOffset(-20)
//        }
        Color(red:1, green: 1, blue: 0)
        Color.accentColor
            
    }
}

#Preview {
    SwiftUIView()
}
