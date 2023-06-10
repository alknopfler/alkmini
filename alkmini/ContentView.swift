//
//  ContentView.swift
//  alkmini
//
//  Created by Alberto Morgante Medina on 9/6/23.
//

import SwiftUI

struct ContentView: View {
    @State private var scriptResult: Bool = false
    @State private var textColor: Color = .black

    var body: some View {
        VStack {
            HStack{
                Text("Alkmini Server")
                    .foregroundColor(textColor)
                    .padding()
                Image(server.rack)
                
            }
            Button(action: {
                // Aquí ejecuta tu script y asigna el resultado a la variable scriptResult
                scriptResult = true

                // Actualiza el color del texto según el resultado del script
                if scriptResult {
                    textColor = .green
                } else {
                    textColor = .red
                }
            }) {
                Text("Server Status")
                    .foregroundColor(.black)
                    .padding()
                    .cornerRadius(10)
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
