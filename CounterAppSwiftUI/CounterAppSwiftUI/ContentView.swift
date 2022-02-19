//
//  ContentView.swift
//  CounterAppSwiftUI
//
//  Created by Coco Ma on 2/14/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var num = 0
    
    var body: some View {
        Image("library")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 50, height: 50)
            .clipShape(Circle())
        
        VStack(spacing: 50){
            
            Text(String(num))
                .font(.system(size: 50))
            
            HStack() {
                Button("decrement") {
                    if (num > 0) {
                        num -= 1
                    }
                }
                
                Button("increment") {
                    num += 1
                }
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
