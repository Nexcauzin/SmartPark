//
//  CalcularFinal.swift
//  DesafioFinal
//
//  Created by Turma21-02 on 14/10/24.
//

import Foundation

//
//  ContentView.swift
//  DesafioFinal
//
//  Created by Turma21-02 on 09/10/24.
//

import SwiftUI

struct CheckItem{
    var name: String
    var isChecked: Bool
}

struct CalcularFinal: View {
    var x: Bool = false
    @State var y: Color = .white
    @State var nome = 70
    @State var sub = 60
    @State var soma = 80
    @State var result: Double = 0.0
    

    
    func Calculator(taxa: Double, tempo: Double){
        result = taxa * tempo
        
        
    }
    
    var body: some View {
        
        ZStack {
            
            VStack{
                Color.corTopoLista
            }
            
            VStack{
                HStack{
                    Text("Cálculo de Custo")
                        .font(.title)
                        .foregroundStyle(.white)
                        .padding(13.0)
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
        HStack{
            VStack{
                ZStack{
                    Rectangle()
                        .frame(width:160, height: 25)
                        .foregroundStyle(.corTopoLista)
                        .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                    
                        .clipShape(
                            .rect(
                                topLeadingRadius: 60,
                                bottomLeadingRadius: 0,
                                bottomTrailingRadius: 0,
                                topTrailingRadius: 0
                            )
                        )
                    
                    Text("TAXA")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundStyle(y)
                        .padding(20.0)
                    
                    ZStack{
                        VStack{
                            Rectangle()
                                .frame(width:160, height:25)
                                .foregroundStyle(.secundaria)
                                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                                .padding(.top, 50.0)
                            
                            
                            TextField("Digite", value: $sub, format: .number)
                                .multilineTextAlignment(.center)
                                .foregroundStyle(.black)
                                .padding(-32)
                        }
                    }
                }.padding(-50)
                
                ZStack{
                    Rectangle()
                        .frame(width:160, height: 25)
                        .foregroundStyle(.corTopoLista)
                        .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                    
                        .clipShape(
                            .rect(
                                topLeadingRadius: 60,
                                bottomLeadingRadius: 0,
                                bottomTrailingRadius: 0,
                                topTrailingRadius: 0
                            )
                        )
                    
                    Text("TEMPO")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundStyle(y)
                        .padding(20.0)
                    
                    ZStack{
                        VStack{
                            Rectangle()
                                .frame(width:160, height:25)
                                .foregroundStyle(.secundaria)
                                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                                .padding(.top, 50.0)
                            
                            
                            TextField("Digite", value: $soma, format: .number)
                                .multilineTextAlignment(.center)
                                .foregroundStyle(.black)
                                .padding(-32)
                        }
                        
                    }
                }
                
                Button(action:
                        {
                    Calculator(taxa: Double(soma), tempo: Double(sub))
                }
                       , label: {
                    Text("Calcular").frame(width: 175, height: 48).background(.corVerdeEscuro).foregroundColor(.white).clipShape(RoundedRectangle(cornerRadius: 8))
                })
                
            }.padding(-32)
            
            ZStack{
                Rectangle()
                    .frame(width:160, height: 25)
                    .foregroundStyle(.corTopoLista)
                    .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                    .clipShape(
                        .rect(
                            topLeadingRadius: 60,
                            bottomLeadingRadius: 0,
                            bottomTrailingRadius: 0,
                            topTrailingRadius: 0
                        )
                    )
                    .offset(x: 0, y: -150)
                
                Text("PLUS")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundStyle(y)
                    .padding(20.0)
                    .offset(x: 0, y: -150)
                
                ZStack{
                    VStack{
                        ZStack{
                            Rectangle()
                                .frame(width:160, height:330)
                                .foregroundStyle(.secundaria)
                                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                                .padding(.top, 50.0)
                            VStack{
                                HStack{
                                    Image(systemName: "checkmark.rectangle")
                                    Text("Carregamento de Veiculo")
                                }.offset(x: 8, y: 8)
                                
                                HStack{
                                    Image(systemName: "checkmark.rectangle")
                                    Text("Manutenção Básica")
                                }.padding(20)
                                HStack{
                                    Image(systemName: "checkmark.rectangle")
                                    Text("Lavagem")
                                }.offset(x: -14)
                                
                                HStack{
                                    Image(systemName: "checkmark.rectangle")
                                    Text("Serviço de Manobrista")
                                }.offset(x: -5, y: 18)
                            }
                        }
                    }
                    
                }
            }
            
        }
                    ZStack{
                        Rectangle()
                            .frame(width:320, height: 25)
                            .foregroundStyle(.corTopoLista)
                            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                           
                            .clipShape(
                                .rect(
                                    topLeadingRadius: 60,
                                    bottomLeadingRadius: 0,
                                    bottomTrailingRadius: 0,
                                    topTrailingRadius: 0
                                )
                            )
                    
                            Text("TOTAL")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundStyle(y)
                                .padding(20.0)
                        
                            ZStack{
                                VStack{
                                    Rectangle()
                                        .frame(width:320, height:25)
                                        .foregroundStyle(.secundaria)
                                        .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                                        .padding(.top, 50.0)
                                    
                                    
                                    Text("\(result, specifier: "%.2f")")
                                        .multilineTextAlignment(.center)
                                        .foregroundStyle(.black)
                                        .padding(-35)
                                }
                            }
                    
                    
                    }.offset(x: 0 ,y: 250)
        }
        
    }
}

#Preview {
    CalcularFinal()
}
