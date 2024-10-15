//
//  Model.swift
//  SmartPark
//
//  Created by Turma02-26 on 09/10/24.
//

import Foundation
import MapKit

struct Estacionamento : Identifiable{
    let id = UUID()
    let nome: String
    let localizacao: CLLocationCoordinate2D
    let vagas: Vagas
    let custo: Float
    let avaliacao: Float
    let avaliacaoContagem: Int
}


struct Vagas{
    let vaga_1: String
    let vaga_2: String
    let vaga_3: String
    let vaga_4: String
}



// Dados compartilhados através do app
var estacionamentos = [
    Estacionamento(nome: "River Shopping", localizacao: CLLocationCoordinate2D(latitude: -9.395108, longitude: -40.492994), vagas: Vagas(vaga_1: "Ocupado", vaga_2: "Livre", vaga_3: "Ocupado", vaga_4: "Ocupado"), custo: 10, avaliacao: 4.5, avaliacaoContagem: 137),
    Estacionamento(nome: "Hotel Costa do Rio", localizacao: CLLocationCoordinate2D(latitude: -9.401267, longitude: -40.504280), vagas: Vagas(vaga_1: "Ocupado", vaga_2: "Livre", vaga_3: "Ocupado", vaga_4: "Ocupado"), custo: 15, avaliacao: 3, avaliacaoContagem: 29)
]
