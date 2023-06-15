//
//  alkminiApp.swift
//  alkmini
//
//  Created by Alberto Morgante Medina on 9/6/23.
//

import SwiftUI

@main
struct alkminiApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .commands {
            CommandMenu("Opciones") {
                Button("Opción 1", action: voidreturn)
                Button("Opción 2", action: voidreturn)
            }
        }
    }
}

func voidreturn() {
}
