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
                        Label("Mapa", systemImage: "paintbrush.fill")
                    }
                
                listaEstacionamentosView()
                    .tabItem {
                        Label("Lista", systemImage: "line.3.horizontal")
                    }
            }
            
            
        }
    }
}

#Preview {
    ContentView()
}
