//
//  Mascota.swift
//  CursoObjectiveC
//
//  Created by Felipe Hernandez on 07/09/16.
//  Copyright © 2016 Felipe Hernandez. All rights reserved.
//

import Cocoa

class Mascota: NSObject {
    var owner: User = User()
    var nombre: String = ""
    
    
    func traerTexto() -> String {
        return "Mi dueño se llama \(owner.nombreCompleto())"
    }
}
