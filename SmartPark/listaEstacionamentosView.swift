//
//  listaEstacionamentosView.swift
//  SmartPark
//
//  Created by Turma02-26 on 09/10/24.
//

import SwiftUI

struct listaEstacionamentosView: View {
    
    var body: some View {
        NavigationStack{
            ZStack{
                Color.corTopoLista
                
                VStack{
                    Spacer()
                    Color.corBackground
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
                    HStack{
                        Text("LISTA DE\nESTACIONAMENTOS")
                            .font(.system(size: 25))
                            .foregroundStyle(.white)
                            .bold()
                            .padding(.horizontal, 0)
                        
                        Spacer()
                        
                        Image(.carroIsolado)
                            .resizable()
                            .frame(width: 80, height: 80)
                            .padding(.horizontal, 0)
                    }.padding(.horizontal, 22)
                    
                    Spacer()
                }.padding(.vertical, 48)
                
                VStack{
                    ScrollView(.vertical){
                        ForEach(estacionamentos){ estacionamento in
                            NavigationLink(destination: vagasDisponiveisView()){
                                ZStack{
                                    HStack{
                                        Rectangle()
                                            .foregroundStyle(.corVerdeEscuro)
                                            .frame(width: 10, height: 80)
                                            .offset(x: 4, y: 0)
                                        
                                        Rectangle()
                                            .foregroundStyle(.corVerdeClaro)
                                            .frame(width: 320, height: 80)
                                            .offset(x: -4, y: 0)
                                    }
                                    .clipShape(
                                        .rect(
                                            topLeadingRadius: 20,
                                            bottomLeadingRadius: 20,
                                            bottomTrailingRadius: 20,
                                            topTrailingRadius: 20
                                        )
                                    )
                                        
                                    
                                    HStack{
                                        Image(.parkingSymbol)
                                        
                                        
                                        VStack(alignment: .leading, spacing: 0){
                                            Text(estacionamento.nome)
                                                .foregroundStyle(.black)
                                                .bold()
                                                .padding(.vertical, 3)
                                            
                                            Text("R$ \(estacionamento.custo, specifier: "%.2f")/hora")
                                                .foregroundStyle(.black)
                                                .padding(.vertical, 3)
                                        }
                                        
                                        Spacer()
                                        
                                        VStack{
                                            Text("\(estacionamento.avaliacao, specifier: "%.1f") ★")
                                                .foregroundStyle(.black)
                                            Text("(\(estacionamento.avaliacaoContagem))")
                                                .foregroundStyle(.black)
                                        }
                                        
                                    }.padding(.horizontal, 40)
                                }
                            }
                        }
                    }
                }.padding(.top, 190) // Sim é uma gambiarra, so consegui assim
                
                
            }.ignoresSafeArea()
        }.tint(.white)
    }
}

#Preview {
    listaEstacionamentosView()
}
