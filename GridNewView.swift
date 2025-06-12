//
//  GridNewView.swift
//  Days100OfSwiftUI
//
//  Created by HarrisShao on 2025/6/12.
//

import SwiftUI

struct GridNewView: View {
    var body: some View {
        
        Grid(alignment: .center, horizontalSpacing: 8, verticalSpacing: 8, content: {
            ForEach(0..<4) {rowIndex in
                GridRow() {
                    
                    ForEach(0..<4) { coloumnIndex in
                        
                        let cellNumber = (rowIndex * 4) + (coloumnIndex + 1)
                        if (cellNumber == 7) {
                            EmptyView()
                        } else {
                            cell(int: cellNumber)
                                .gridCellColumns(cellNumber == 6 ? 2 : 1)

                        }
                        
                    }
                }
                
            }
            
        })
        
//        Grid() {
//            GridRow {
//                cell(int: 1)
//                cell(int: 2)
//                cell(int: 3)
//            }
////            cell(int: 441111)
//            Divider()
//                .gridCellUnsizedAxes(.horizontal)
//            
//            GridRow {
//                cell(int: 4)
//                cell(int: 5)
//            }
//        }
    }
    
    private func cell(int: Int) -> some View {
        Text("\(int)")
            .font(.largeTitle)
            .padding()
            .background(Color.blue)
    }
}

#Preview {
    GridNewView()
}
