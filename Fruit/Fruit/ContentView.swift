//
//  ContentView.swift
//  Fruit
//
//  Created by Coco Ma on 3/7/22.
//

import SwiftUI

class Fruit: ObservableObject {
    @Published var name = "Apple"
    
}

struct InnerView: View {
    @EnvironmentObject var fruit: Fruit
    
    var body: some View {
        Button("Change Fruit") {
            fruit.name = "Orange"
        }
    }
}

struct ContentView: View {
    
    @StateObject var fruit = Fruit()
    
    var body: some View {
        VStack {
            Text("Your fruit is \(fruit.name)")
            InnerView().environmentObject(fruit)
        }
    }
}

