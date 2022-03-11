//
//  ContentView.swift
//  Profile
//
//  Created by Coco Ma on 3/7/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var name: String = ""
    
    @State var email: String = ""
    
    @State var isOn: Bool = true
    
    @State var bio: String = ""
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    VStack {
                        Image("dfr7_4Kn_400x400")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 100, height: 100)
                            .clipShape(Circle())
                        
                        HStack {
                            Text("Name:")
                            TextField("Name", text: $name)
                        }
                        
                        HStack {
                            Text("Email:")
                            TextField("Email", text: $email)
                        }
                        
                        Toggle(isOn: $isOn) {
                            Text("Private Account")
                        }
                        
                        HStack {
                            Text("Bio:")
                            TextField("Bio", text: $bio)
                        }
                    }
                }
                
                Section {
                    NavigationLink(destination: Text("Privacy")) {
                        Text("Privacy")
                    }
                    
                    NavigationLink(destination: Text("Notifications")) {
                        Text("Notifications")
                    }
                    
                    NavigationLink(destination: Text("Help")) {
                        Text("Help")
                    }
                }
                
        }
        
        }
    }
}

