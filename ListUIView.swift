//
//  ListUIView.swift
//  Days100OfSwiftUI
//
//  Created by HarrisShao on 2025/6/6.
//

import SwiftUI

struct ListUIView: View {

    @State var fruits: [String] = [
        "apple", "orange", "banana", "peach",

    ]

    @State var veggies: [String] = [
        "tomato", "potato", "carrot",
    ]

    var body: some View {

        NavigationView {
            List {
                Section(
                    header:
                        HStack {
                            Text("Fruits")
                            Image(systemName: "flame.fill")
                        }
                        .font(.headline)
                        .foregroundColor(.orange)
                ) {
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit.capitalized)
                            .foregroundColor(.gray)
                            .font(.caption)
                        
                    }
                    .onDelete(perform: { indexSet in
                        delete(indexSet: indexSet)
                    })
                    .onMove(perform: { indices, newOffset in
                        move(indices: indices, newOffset: newOffset)
                    })
                    .listRowBackground(Color.pink)
                }

                Section(
                    header: Text("Veggies"),
                    content: {
                        ForEach(veggies, id: \.self) { veggie in
                            Text(veggie.capitalized)

                        }
                    }
                )

            }
            .accentColor(.purple)
//            .listStyle(InsetGroupedListStyle())
            .navigationTitle("Grocery List")
            .navigationBarItems(
                leading: EditButton(),
                trailing: addButton
            )
            
        }
        .accentColor(.red)

    }

    var addButton: some View {
        Button(
            "Add",
            action: {
                add()
            }
        )
    }

    func delete(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }

    func move(indices: IndexSet, newOffset: Int) {
        fruits.move(fromOffsets: indices, toOffset: newOffset)
    }

    func add() {
        fruits.append("coconut")
    }
}

#Preview {
    ListUIView()
}
