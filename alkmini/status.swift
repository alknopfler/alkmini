//
//  status.swift
//  alkmini
//
//  Created by Alberto Morgante Medina on 15/6/23.
//

import Foundation

func ejecutarScript() -> Bool {
    let task = Process()
    task.launchPath = "/usr/bin/env" // Ruta del ejecutable de la terminal
    task.arguments = ["bash", "-c", "echo \"Hola mundo\""] // Comando a ejecutar

    let pipe = Pipe()
    task.standardOutput = pipe
    task.standardError = pipe
    task.launch()
    task.waitUntilExit()

    let data = pipe.fileHandleForReading.readDataToEndOfFile()
    if let output = String(data: data, encoding: .utf8) {
        print("Salida del comando: \(output)")
    }

    return task.terminationStatus == 0
}


func checkStatus() -> Bool {
    let task = Process()
    task.launchPath = "/sbin/ping" // Ruta del ejecutable de ping
    task.arguments = ["-c", "4", "alkmini"] // Comando ping y argumentos (ejemplo: 4 pings a la dirección IP 8.8.8.8)

    let pipe = Pipe()
    task.standardOutput = pipe
    task.standardError = pipe
    task.launch()
    task.waitUntilExit()

    let data = pipe.fileHandleForReading.readDataToEndOfFile()
    if let output = String(data: data, encoding: .utf8) {
        print("Salida del comando ping: \(output)")
    }

    return task.terminationStatus == 0
}
