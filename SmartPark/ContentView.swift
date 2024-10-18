//
//  ContentView.swift
//  SmartPark
//
//  Created by Turma02-26 on 09/10/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            TabView{
                mapaEstacionamentosView()
                    .tabItem{
                        Label("Mapa", systemImage: "map.circle.fill")
                    }
                
                listaEstacionamentosView()
                    .tabItem {
                        Label("Lista", systemImage: "line.3.horizontal.circle.fill")
                    }
                
                CalcularFinal()
                    .tabItem{
                        Label("Calcular", systemImage: "wallet.pass.fill")
                    }
                
                //waveform.path.ecg.rectangle.fill // Dashboard
            }
        }
    }
}

#Preview {
    ContentView()
}
