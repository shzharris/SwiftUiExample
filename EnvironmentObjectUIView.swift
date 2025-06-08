//
//  EnvironmentObjectUIView.swift
//  Days100OfSwiftUI
//
//  Created by HarrisShao on 2025/6/8.
//

import SwiftUI

class EnvironmentViewModel: ObservableObject {

    @Published var dataArray: [String] = []

    init() {
        getData()

    }

    func getData() {

        self.dataArray.append(contentsOf: ["Iphone", "ipad", "Imac", "IWatch"])
    }

}

struct EnvironmentObjectUIView: View {
    @StateObject var viewModel: EnvironmentViewModel = EnvironmentViewModel()

    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.dataArray, id: \.self) { item in
                    NavigationLink(
                        destination: DetailView(
                            selectItem: item
                        )
                    ) {
                        Text(item)
                    }

                }
            }
            .navigationTitle("Ios Devices")
        }
        .environmentObject(viewModel)
    }

}

struct DetailView: View {

    let selectItem: String

    var body: some View {
        ZStack {
            Color.orange.ignoresSafeArea()

            NavigationLink(
                destination: FinalView(),
                label: {
                    Text(selectItem)
                        .font(.headline)
                        .foregroundColor(.orange)
                        .padding()
                        .padding(.horizontal)
                        .background(Color.white)
                        .cornerRadius(30)
                }
            )

        }
    }
}

struct FinalView: View {

    //    @ObservedObject var viewModel: EnvironmentViewModel
    @EnvironmentObject var viewModel: EnvironmentViewModel

    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [.red, .blue, .green]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()

            ScrollView {
                VStack(spacing: 20) {
                    ForEach(viewModel.dataArray, id: \.self) { item in
                        Text(item)
                    }
                }
                .foregroundColor(.white)
                .font(.largeTitle)
            }
        }
    }
}

#Preview {
    EnvironmentObjectUIView()
    //    DetailView(selectItem: "Iphone")
    //    FinalView()
}
