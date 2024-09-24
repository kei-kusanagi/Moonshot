//
//  ContentView.swift
//  Moonshot
//
//  Created by Juan Carlos Robledo Morales on 23/09/24.
//

import SwiftUI

struct ContentView: View {
    
    let astronauts = Bundle.main.decode("astronauts.json")
    
    var body: some View {
        Text(String(astronauts.count))

    }
}



#Preview {
    ContentView()
}
