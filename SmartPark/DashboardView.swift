//
//  ContentView.swift
//  SmartPark
//
//  Created by Turma02-23 on 14/10/24.
//

import SwiftUI

struct DashboardView: View {
    @State var backgroundColor : Color = .white
    @StateObject var viewModel = ViewModel()
//    @State var dadosSmartPark: SmartPark
    @State var faturamentoMensal: Double = 500000
    @State var valorOcupaMensal: Int = 3542
    @State var dataAux = "024-10-17T22:30:31.377Z"
    
    @State var formatter = DateFormatter()
    
    func converterMilissegundos(milissegundos: Int64) -> String {
            let segundos = (TimeInterval(milissegundos) / 1000)
            let date = Date(timeIntervalSince1970:  segundos)
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "HH:mm - dd/MM/yy"
            return dateFormatter.string(from: date)
    }
    
    var body: some View {
        ZStack {
            
            VStack{
                Color.corTopoLista
                
            }.ignoresSafeArea()
            
            VStack{
                
                HStack{
                    Text("DASHBOARD")
                        .font(.title)
                        .foregroundStyle(.white)
                        .padding(13.0)
                    Spacer()
                    Image("carroIsolado")
                        .resizable()
                        .frame(width:80, height: 80)
                        .padding(20.0)
                }
                Spacer()
                
                
                ZStack{
                    
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
                    
                    
                    ScrollView{
                        VStack{
                            
                            VStack{
                                VStack{
                                    ZStack{
                                        
                                        Color.corTopoLista
                                        
                                            .frame(width: 330, height: 35)
                                            .clipShape(
                                                .rect(
                                                    topLeadingRadius: 60,
                                                    bottomLeadingRadius: 0,
                                                    bottomTrailingRadius: 0,
                                                    topTrailingRadius: 60
                                                )
                                            ).padding(.top, 35)
                                        
                                        
                                        Text("DATA/HORA ÚLTIMA ENTRADA")
                                            .font(.system(size: 13))
                                            .font(.title)
                                            .foregroundStyle(.white)
                                            .padding(13.0)
                                            .frame(width: 240, height: 35)
                                            .padding(.top, 35)
                                        
                                    }.padding(-8)
                                    
                                    ZStack{
                                        Color.secundaria
                                            .frame(width: 330, height: 50)
                                            .clipShape(
                                                .rect(
                                                    topLeadingRadius: 0,
                                                    bottomLeadingRadius: 0,
                                                    bottomTrailingRadius: 0,
                                                    topTrailingRadius: 0
                                                )
                                            )
                                        
                                        ForEach(Array(arrayLiteral: viewModel.Carro.sorted(by: {Int($0.last_arrival) ?? 0 > Int($1.last_arrival) ?? 0} ).first ?? SmartPark(_id: "", last_arrival: "", last_exit: "", status: "")), id: \.self) { d in
//                                            Text("\(formatter.date(from: d.last_arrival) ?? Date())")
//                                            converterMilissegundos(milissegundos: d.last_arrival)
                                            
//                                            Text("\(Date(timeIntervalSince1970: ((Double(d.last_arrival) ?? 0)/1000)))")
                                            
                                            Text(converterMilissegundos(milissegundos: Int64(d.last_arrival) ?? 1))
                                        }
                                    }
                                }
                                
                                VStack{
                                    ZStack{
                                        
                                        Color.corTopoLista
                                        
                                            .frame(width: 330, height: 35)
                                            .clipShape(
                                                .rect(
                                                    topLeadingRadius: 0,
                                                    bottomLeadingRadius: 0,
                                                    bottomTrailingRadius: 0,
                                                    topTrailingRadius: 0
                                                )
                                            ).padding(.top, 30)
                                        
                                        
                                        Text("DATA/HORA ÚLTIMA SAIDA")
                                            .font(.system(size: 13))
                                            .font(.title)
                                            .foregroundStyle(.white)
                                            .padding(13.0)
                                            .frame(width: 240, height: 35)
                                            .padding(.top, 30)
                                        
                                    }.padding(-8)
                                    
                                    ZStack{
                                        Color.secundaria
                                            .frame(width: 330, height: 50)
                                            .clipShape(
                                                .rect(
                                                    topLeadingRadius: 0,
                                                    bottomLeadingRadius: 0,
                                                    bottomTrailingRadius: 0,
                                                    topTrailingRadius: 0
                                                )
                                            )
                                        
                                        ForEach(Array(arrayLiteral: viewModel.chars.sorted(by: {Int($0.last_exit) ?? 0 > Int($1.last_exit) ?? 0} ).first ?? SmartPark(_id: "", last_arrival: "", last_exit: "", status: "")), id: \.self) { d in
                                            
                                            Text(converterMilissegundos(milissegundos: Int64(d.last_exit) ?? 1))
                                        }
                                    }
                                }.padding(.top, -4)
                            }.padding(.leading, 15)
                            
                            
                            
                            
                            VStack{
                                
                                VStack{
                                    ZStack{
                                        
                                        
                                        Image("graficoRecta")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 300, height: 160)
                                        
                                        
                                        
                                    }
                                }.padding()
                                
                                HStack{
                                    ZStack{
                                        
                                        Color.corTopoLista
                                        
                                            .frame(width: 150, height: 50)
                                            .clipShape(
                                                .rect(
                                                    topLeadingRadius: 0,
                                                    bottomLeadingRadius: 0,
                                                    bottomTrailingRadius: 0,
                                                    topTrailingRadius: 0
                                                )
                                            ).padding()
                                        
                                        
                                        Text("MÉDIA DE OCUPAÇAO"+"\n"+"MENSAL")
                                            .lineLimit(6)
                                            .font(.system(size: 10))
                                            .font(.title)
                                            .foregroundStyle(.white)
                                            .padding(13.0)
                                            .frame(width: 150,height: 50)
                                            .padding()
                                        
                                        
                                    }.padding(-40)
                                    
                                    ZStack{
                                        Color.corVerdeClaro
                                            .frame(width: 150, height: 50)
                                            .clipShape(
                                                .rect(
                                                    topLeadingRadius: 0,
                                                    bottomLeadingRadius: 0,
                                                    bottomTrailingRadius: 30,
                                                    topTrailingRadius: 0
                                                )
                                            ).padding()
                                        
                                        Text("\(valorOcupaMensal)")
                                            .font(.title)
                                            .foregroundColor(.black)
                                            .font(.system(size: 14))
                                            .bold()
                                            .padding()
                                        
                                    }
                                    
                                }.padding(.leading, 30)
                            }
                            Spacer()
                        }
        
                    }
                }
            }
        }.onAppear() {
            viewModel.fetch()
            formatter.dateFormat = "HH:mm E, d MMM y"
//            var date = Date(timeIntervalSince1970: (1477593000000 / 1000.0))
//            print("\(date)")
        }
    }
    
}

#Preview {
    DashboardView()
}

