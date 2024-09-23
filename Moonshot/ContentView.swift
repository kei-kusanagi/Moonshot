//
//  ContentView.swift
//  Moonshot
//
//  Created by Juan Carlos Robledo Morales on 23/09/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Image("WhiteGlint")
            .resizable()
                .scaledToFit()
                .containerRelativeFrame(.horizontal) { size, axis in
                    size * 0.80
                }
    }
}


#Preview {
    ContentView()
}
