//
//  ContentView.swift
//  Settings
//
//  Created by Coco Ma on 2/28/22.
//

import SwiftUI

struct ContentView: View {
    
    var names = ["Tony", "Jordan", "Ddoski", "Bob", "Joe"]
    
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("part 1")) {
                    NavigationLink(destination: Text("Airplane Mode")) {
                        Text("Airplane Mode")
                    }
                    
                    NavigationLink(destination: Text("Wi-Fi")) {
                        Text("Wi-Fi")
                    }
                    
                    NavigationLink(destination: Text("Bluetooth")) {
                        Text("Bluetooth")
                    }
                    
                    NavigationLink(destination: Text("Cellular")) {
                        Text("Cellular")
                    }
                    
                    NavigationLink(destination: Text("Personal Hotspot")) {
                        Text("Personal Hotspot")
                    }
                }
                
                Section(header: Text("part 2")) {
                    NavigationLink(destination: Text("Notifications")) {
                        Text("Notifications")
                    }
                    
                    NavigationLink(destination: Text("Sounds & Haptics")) {
                        Text("Sounds & Haptics")
                    }
                    
                    NavigationLink(destination: Text("Focus")) {
                        Text("Focus")
                    }
                    
                    NavigationLink(destination: Text("Screen Time")) {
                        Text("Screen Time")
                    }
                }
                
                Section(header: Text("part 3")) {
                    ForEach(names, id: \.self) {name in
                        Text(name)
                    }
                }
                
            }
            .navigationTitle("Settings")
        }
    }
}


