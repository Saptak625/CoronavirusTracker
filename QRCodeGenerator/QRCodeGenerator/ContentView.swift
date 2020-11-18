//
//  ContentView.swift
//  QRCodeGenerator
//
//  Created by Student on 11/18/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Text("Hello, world!")
                .padding()
            QRCodeView(text: "Test QR Code Message")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
