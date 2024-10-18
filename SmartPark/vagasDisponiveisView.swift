//  ContentView.swift
//  DesafioFinal
//
//  Created by Turma21-02 on 09/10/24.
//

import SwiftUI

struct vagasDisponiveisView: View {
    var x: Bool = false
    @State var y: Color = .black
    @StateObject var viewModel = ViewModel()
    
    
    var body: some View {
        NavigationStack{
            ZStack {
                
                VStack{
                    Color.corTopoLista
                    
                }.ignoresSafeArea()
            
                    VStack{
                        
                        HStack{
                            Text("Vagas Disponíveis")
                                .font(.title)
                                .foregroundStyle(.white)
                                .padding(25.0)
                            Spacer()
                            Image( "carroIsolado")
                                .resizable()
                                .frame(width:80, height: 80)
                                .padding(20.0)
                        }
                        Spacer()
                        Color.white
                            .frame(width: 373, height: 530)
                            .clipShape(
                                .rect(
                                    topLeadingRadius: 60,
                                    bottomLeadingRadius: 0,
                                    bottomTrailingRadius: 0,
                                    topTrailingRadius: 0
                                )
                            )
                    }
                
                    VStack{
                        ZStack{
                            Image("formatoEstacionamento")
                                .resizable()
                                .frame(width: 400, height: 480)
                                .offset(x:0, y: 100)
                            
                            ScrollView{
                                ForEach(vagasD, id: \.self) { car in
                                    VStack{
                                        HStack{
                                            ZStack{
                                                Rectangle()
                                                    .frame(width:122, height: 60)
                                                    .foregroundStyle(.corTopoLista)
                                                    .border(Color.orange)
                                                    .cornerRadius(10)
                                                
                                                HStack{
                                                    Text(car.nome)
                                                        .font(.title)
                                                        .foregroundStyle(.yellow)
                                                        .padding(10.0)
                                                    
                                                    
                                                    
                                                    Image(systemName: "car.fill")
                                                        .resizable()
                                                        .foregroundStyle(car.vagaLivre ? Color.red : Color.corVerdeEscuro)
                                                        .frame(width:30, height: 30)
                                                        .padding(10.0)
                                                }
                                                
                                            }.padding(30)
                                            
                                            ZStack{
                                                Rectangle()
                                                    .frame(width:122, height: 60)
                                                    .foregroundStyle(.corTopoLista)
                                                    .border(Color.orange)
                                                    .cornerRadius(10)
                                                
                                                HStack{
                                                    Text(car.nom)
                                                        .font(.title)
                                                        .foregroundStyle(.yellow)
                                                        .padding(10.0)
                                                    
                                                    Image(systemName: "car.fill")
                                                        .resizable()
                                                        .foregroundStyle(car.vagaLivre ? Color.corVerdeEscuro : Color.corVerdeEscuro)
                                                        .frame(width:30, height: 30)
                                                        .padding(10.0)
                                                }
                                                
                                            }.padding(30)
                                        }
                                    }.padding(-30)
                                    .offset(x:0, y: 210)
                                }.padding()
                            }
                    }
                }
            }
        }.onAppear(){
            viewModel.fetch2()
        }
    }
}

#Preview {
    vagasDisponiveisView()
}
