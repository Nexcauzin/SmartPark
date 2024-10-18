//
//  Model.swift
//  SmartPark
//
//  Created by Turma02-26 on 09/10/24.
//

import Foundation
import MapKit

struct Estacionamento : Hashable, Decodable{
    let _id: String
    let nome: String
    let latitude: Float
    let longitude: Float
    let custo: Float
    let avaliacao: Float
    let avaliacaoContagem: Int
}


struct Carro: Hashable, Decodable{
    let _id: String
    let status: String
    let last_arrival: String
    let last_exit: String
}


struct VagasD: Hashable{
    var nome: String
    var nom: String
    var vagaLivre: Bool
}

var vagasD = [
    VagasD(nome: "2", nom: "1", vagaLivre: true),
    VagasD(nome: "4" , nom: "3", vagaLivre: false),
    VagasD(nome: "6" , nom: "5", vagaLivre: true),
    VagasD(nome: "8", nom: "7", vagaLivre: false),
    VagasD(nome: "10", nom: "9", vagaLivre: true),
]
