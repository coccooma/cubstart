//
//  ContentView.swift
//  Shopping List
//
//  Created by Tony Hong on 3/11/22.
//

import SwiftUI

class Items: Identifiable {
    
    let imageName: String
    let itemName: String
    let quantity: Int
    
    init(image: String, item: String, quant: Int) {
        self.imageName = image
        self.itemName = item
        self.quantity = quant
    }
    
}

struct ContentView: View {
    
    var fruit_list = [
        Items(image: "banana", item: "Bananas", quant: 3),
        Items(image: "apple", item: "Apples", quant: 4),
        Items(image: "eggs", item: "Eggs", quant: 12)
    ]
    
    var vegetable_list = [
        Items(image: "cabbage", item: "Cabbages", quant: 1),
        Items(image: "cucumber", item: "Cucumbers", quant: 5)
    ]
    
    var cupNoodles_list = [
        Items(image: "spicy", item: "Spicy Cup Noodles", quant: 4),
        Items(image: "chicken", item: "Chicken Cup Noodles", quant: 2)
    ]
        
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Fruits")) {
                    ForEach(fruit_list) { i in
                        CustomCell(imageName: i.imageName, itemName: i.itemName, quantity: i.quantity)
                    }
                }
                
                Section(header: Text("Vegetables")) {
                    ForEach(vegetable_list) { i in
                        CustomCell(imageName: i.imageName, itemName: i.itemName, quantity: i.quantity)
                    }
                }
                
                Section(header: Text("Cup Noodles")) {
                    ForEach(cupNoodles_list) { i in
                        CustomCell(imageName: i.imageName, itemName: i.itemName, quantity: i.quantity)
                    }
                }
            }.navigationTitle("Shopping List")
        }
        
    }

}

