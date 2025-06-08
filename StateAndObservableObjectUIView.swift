//
//  StateAndObservableObjectUIView.swift
//  Days100OfSwiftUI
//
//  Created by HarrisShao on 2025/6/8.
//

import SwiftUI

struct FruitModel: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let count: Int
}

class FruitViewModel: ObservableObject {

    @Published var fruitArray: [FruitModel] = []
    @Published var isLoading: Bool = false
    
    init() {
        getFruits()
    }

    func getFruits() {
        let fruit1 = FruitModel(name: "Banana", count: 1)
        let fruit2 = FruitModel(name: "Watermater", count: 91)
        let fruit3 = FruitModel(name: "Apples", count: 11)

        isLoading = true
        DispatchQueue.main.asyncAfter(
            deadline: .now() + 3.0,
            execute: {
                self.fruitArray.append(fruit1)
                self.fruitArray.append(fruit2)
                self.fruitArray.append(fruit3)
                self.isLoading = false

            }
        )

    }

    func deleteFruit(index: IndexSet) {
        fruitArray.remove(atOffsets: index)
    }

}

struct StateAndObservableObjectUIView: View {

    // @StateObject -> USE THIS ON
    @StateObject var fruitViewModel: FruitViewModel = FruitViewModel()

    var body: some View {

        NavigationView {
            List {

                if fruitViewModel.isLoading {
                    ProgressView()
                } else {

                    ForEach(fruitViewModel.fruitArray) { fruit in
                        HStack {
                            Text("\(fruit.count)")
                                .foregroundColor(.red)
                            Text(fruit.name)
                                .font(.headline)
                                .bold()
                        }
                    }
                    .onDelete(perform: fruitViewModel.deleteFruit)

                }
            }
            .listStyle(GroupedListStyle())
            .navigationTitle("Fruit List")
            .navigationBarItems(
                trailing:
                    NavigationLink(
                        destination: SecondScreenView(fruitViewModel:fruitViewModel),
                        label: {
                            Image(systemName: "arrow.right").font(.title)
                        }
                    )

            )
            
        }

    }

}

struct SecondScreenView: View {

    @Environment(\.presentationMode) var presentationMode
    @ObservedObject var fruitViewModel:FruitViewModel

    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()

            VStack {
                ForEach(fruitViewModel.fruitArray) { fruit in
                    Text(fruit.name)
                        .foregroundColor(.white)
                        .font(.headline)
                }
            }

        }
    }
}

#Preview {
    StateAndObservableObjectUIView()
    //    SecondScreenView()
}
