//
//  mapaView.swift
//  SmartPark
//
//  Created by Turma02-26 on 09/10/24.
//

import SwiftUI
import MapKit



struct mapaEstacionamentosView: View {
    @State var showSheet = false
    
    @State var position = MapCameraPosition.region(
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: -9.412964, longitude: -40.515343),
            span: MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1)))
    
    
    var body: some View {
        NavigationStack{
            ZStack{
                Map(){
                    // Botões do mapa
                    ForEach(estacionamentos){ estacionamento in
                        Annotation("", coordinate: estacionamento.localizacao){
                            NavigationLink(destination: vagasDisponiveisView()){
                                HStack{
                                    ZStack{
                                        // Imagem do botao
                                        HStack{
                                            Image(.botaoMapa)
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 60, height: 60)
                                                .shadow(color: .black, radius: 1)
                                        }
                                        
                                        HStack{
                                            Text("R$ \(Int(estacionamento.custo))")
                                                .foregroundStyle(.black)
                                                .bold()
                                                .font(.system(size: 12))
                                                .offset(x: 8, y: -2.5)
                                        }
                                    }
                                    // Legenda lateral
                                    VStack{
                                        Text(estacionamento.nome)
                                            .bold()
                                            .font(.system(size: 12))
                                        HStack{
                                            Text("\(estacionamento.avaliacao, specifier: "%.1f") ★ (\(estacionamento.avaliacaoContagem))")
                                                .font(.system(size: 12))
                                        }
                                    }.foregroundStyle(.black)
                                        .font(.system(size: 13))
                                        .offset(x: 0, y: -3)
                                }
                            }
                        }
                    }
                }
            }
        }.tint(.white)
    }
}

#Preview {
    mapaEstacionamentosView()
}
