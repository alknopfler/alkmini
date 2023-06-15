//
//  ContentView.swift
//  alkmini
//
//  Created by Alberto Morgante Medina on 9/6/23.
//

import SwiftUI

struct ContentView: View {
    @State private var statusServer: Bool = false
    @State private var textColor: Color = .black
    @State private var serverColor: Color = .black
    @State private var showMenu = false

    var body: some View {
        VStack {
            HStack {
                Image(systemName: "server.rack")
                    .foregroundColor(serverColor)
                Text("Alkmini Server")
                    .foregroundColor(textColor)
                    .padding()
            }
            Button(action: {
                // Aquí ejecuta tu script y asigna el resultado a la variable scriptResult
                statusServer = checkStatus()

                // Actualiza el color del texto según el resultado del script
                if statusServer {
                    textColor = .green
                    serverColor = .green
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
            .toolbar {
                ToolbarItem(placement: .navigation) {
                    Button(action: {
                                    showMenu = true
                    })
                    {
                        Image(systemName: "gearshape")
                            .font(.system(size: 18))
                    }
                    .popover(isPresented: $showMenu) {
                            Menu {
                                Button("Opción 1", action: voidreturn)
                                Button("Opción 2", action: voidreturn)
                                } label: {
                                        EmptyView()
                                }
                    }
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
