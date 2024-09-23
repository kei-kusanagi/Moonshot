//
//  ContentView.swift
//  Moonshot
//
//  Created by Juan Carlos Robledo Morales on 23/09/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        ScrollView {
//            LazyVStack(spacing: 10) {
//                ForEach(0..<100) {
//                    CustomText("Item \($0)")
//                        .font(.title)
//                }
//            }
//            .frame(maxWidth: .infinity)
//        }
        ScrollView(.horizontal) {
            LazyHStack(spacing: 10) {
                ForEach(0..<100) {
                    CustomText("Item \($0)")
                        .font(.title)
                }
            }
        }

    }
}

struct CustomText: View {
    let text: String

    var body: some View {
        Text(text)
    }

    init(_ text: String) {
        print("Creando un nuevo CustomText")
        self.text = text
    }
}


#Preview {
    ContentView()
}
