//
//  ViewModel.swift
//  SmartPark
//
//  Created by Turma02-26 on 16/10/24.
//

import Foundation

class ViewModel: ObservableObject{
    @Published var estacionamentos: [Estacionamento] = []
    @Published var carros: [Carro] = []
    
    func fetch(){
        let task = URLSession.shared.dataTask(with: URL(string: "http://10.87.154.241:1880/get-parks")!){ data, _, error in
            do{
                self.estacionamentos = try JSONDecoder().decode([Estacionamento].self, from: data!)
            }catch{
                print(error)
            }
        }
        task.resume()
    }
    
    func fetch2(){
        let task = URLSession.shared.dataTask(with: URL(string: "http://10.87.154.241:1880/read-data")!){
            data, _, error in
            do{
                self.carros = try JSONDecoder().decode([Carro].self, from: data!)
            }catch{
                print(error)
            }
        }
        task.resume()
}
}
