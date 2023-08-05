//
//  ContentView.swift
//  acclerometer_data
//
//  Created by School on 2/2/23.
//

import SwiftUI

struct ContentView:View {
    @ObservedObject var counter = acc()
    
    var body: some View {
       
        
        VStack {
            Label("p", systemImage: "42.circle")
            Text("t\(counter.dd)")
        }
       
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
