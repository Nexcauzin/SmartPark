//
//  vagaIsoladaView.swift
//  SmartPark
//
//  Created by Turma02-26 on 14/10/24.
//

import SwiftUI

struct vagaIsoladaView: View {
    
    @State var estacionamentoSelecionado = "River Shopping"
    @State var vagaSelecionada = 1
    @State var statusVagaSelecionada = "OCUPADO"
    
    var body: some View {
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
                    Text("Estacionamento " + estacionamentoSelecionado)
                        .font(.system(size: 25))
                        .foregroundStyle(.white)
                        .bold()
                    Spacer()
                    
                    Image(.carroIsolado)
                        .resizable()
                        .frame(width: 80, height: 80)
                }.padding(.horizontal, 22)
                
                Spacer()
            }.padding(.vertical, 50)
            
            
            VStack{
                ZStack{
                    
                    // Desenho das vagas
                    VStack{
                        Color.corTopoLista
                            .frame(width: 100, height: 30)
                            .clipShape(
                                .rect(
                                    topLeadingRadius: 60,
                                    bottomLeadingRadius: 0,
                                    bottomTrailingRadius: 0,
                                    topTrailingRadius: 0
                                )
                            )
                        
                        Color.corVerdeEscuro
                            .frame(width: 100, height: 80)
                            .clipShape(
                                .rect(
                                    topLeadingRadius: 0,
                                    bottomLeadingRadius: 0,
                                    bottomTrailingRadius: 30,
                                    topTrailingRadius: 0
                                )
                            )
                            .offset(x: 0, y: -8)
                        Spacer()
                    }.offset(x:-100, y:-20)
                    
                    Text("VAGA")
                        .font(.system(size: 20))
                        .offset(x:-98, y:-243)
                        .bold()
                        .foregroundStyle(.corBackground)
                    
                    Text("\(vagaSelecionada)")
                        .font(.system(size: 80))
                        .offset(x:-100, y:-190)
                        .bold()
                        .foregroundStyle(.corBackground)
                    
                    
                    // Desenho STATUS
                    VStack{
                        Color.corTopoLista
                            .frame(width: 160, height: 30)
                        
                        if (statusVagaSelecionada == "LIVRE"){
                            Color.green
                                .frame(width: 160, height: 30)
                                .clipShape(
                                    .rect(
                                        topLeadingRadius: 0,
                                        bottomLeadingRadius: 60,
                                        bottomTrailingRadius: 0,
                                        topTrailingRadius: 0
                                    )
                                )
                                .offset(x:0, y:-8)
                        }
                        if (statusVagaSelecionada == "OCUPADO"){
                            Color.corVermelho
                                .frame(width: 160, height: 30)
                                .clipShape(
                                    .rect(
                                        topLeadingRadius: 0,
                                        bottomLeadingRadius: 60,
                                        bottomTrailingRadius: 60,
                                        topTrailingRadius: 0
                                    )
                                )
                                .offset(x:0, y:-8)
                        }
                    }.offset(x:80, y:-224.5)
                    
                    Text("STATUS")
                        .offset(x:80, y:-242)
                        .bold()
                        .foregroundStyle(.corBackground)
                        .font(.system(size: 20))
                    
                    Text(statusVagaSelecionada)
                        .offset(x: 80, y: -214)
                        .bold()
                        .foregroundStyle(.corBackground)
                        .font(.system(size: 20))
                    
                    // Desenho TIPO DE VEICULO
                    VStack{
                        Color.corTopoLista
                            .frame(width: 220, height: 30)
                            .clipShape(
                                .rect(
                                    topLeadingRadius: 60,
                                    bottomLeadingRadius: 0,
                                    bottomTrailingRadius: 0,
                                    topTrailingRadius: 0
                                )
                            )
                        Color.corCinza
                            .frame(width: 220, height: 30)
                            .clipShape(
                                .rect(
                                    topLeadingRadius: 0,
                                    bottomLeadingRadius: 0,
                                    bottomTrailingRadius: 60,
                                    topTrailingRadius: 0
                                )
                            )
                            .offset(x:0, y:-8)
                    }.offset(x: -40, y:-80)
                    
                    Text("Tipo de Veiculo Aceito")
                        .bold()
                        .foregroundStyle(.white)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .offset(x:100, y:-18)
                        .offset(x: -40, y:-80)
                    
                    Text("CARRO")
                        .bold()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .offset(x: 98, y: 11)
                        .offset(x: -40, y:-80)
                    
                    // Desenho TIPO DE VAGA
                    VStack{
                        Color.corTopoLista
                            .frame(width: 220, height: 30)
                            .clipShape(
                                .rect(
                                    topLeadingRadius: 60,
                                    bottomLeadingRadius: 0,
                                    bottomTrailingRadius: 0,
                                    topTrailingRadius: 0
                                )
                            )
                        Color.corCinza
                            .frame(width: 220, height: 30)
                            .clipShape(
                                .rect(
                                    topLeadingRadius: 0,
                                    bottomLeadingRadius: 0,
                                    bottomTrailingRadius: 60,
                                    topTrailingRadius: 0
                                )
                            )
                            .offset(x:0, y:-8)
                    }.offset(x: -40, y:10)
                    
                    Text("Tipo de Vaga")
                        .bold()
                        .foregroundStyle(.white)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .offset(x:100, y:-18)
                        .offset(x: -40, y:10)
                    
                    Text("PADRÃO")
                        .bold()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .offset(x: 98, y: 11)
                        .offset(x: -40, y:10)
                    
                    // SUPORTE PLUS
                    VStack{
                        Color.corTopoLista
                            .frame(width: 220, height: 30)
                            .clipShape(
                                .rect(
                                    topLeadingRadius: 60,
                                    bottomLeadingRadius: 0,
                                    bottomTrailingRadius: 0,
                                    topTrailingRadius: 0
                                )
                            )
                        Color.corCinza
                            .frame(width: 220, height: 30)
                            .clipShape(
                                .rect(
                                    topLeadingRadius: 0,
                                    bottomLeadingRadius: 0,
                                    bottomTrailingRadius: 60,
                                    topTrailingRadius: 0
                                )
                            )
                            .offset(x:0, y:-8)
                    }.offset(x: -40, y:100)
                    
                    Text("Suporte PLUS")
                        .bold()
                        .foregroundStyle(.white)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .offset(x:100, y:-18)
                        .offset(x: -40, y:100)
                        
                    
                    Text("MANOBRISTA")
                        .bold()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .offset(x: 98, y: 11)
                        .offset(x: -40, y:100)
                }
                
            }.padding(.top, 190)
            
        }.ignoresSafeArea()
    }
}

#Preview {
    vagaIsoladaView()
}
