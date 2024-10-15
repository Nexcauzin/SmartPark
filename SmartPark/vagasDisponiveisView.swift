//
//  estacionamentoIsoladoView.swift
//  SmartPark
//
//  Created by Turma02-26 on 14/10/24.
//

import SwiftUI

struct vagasDisponiveisView: View {
    
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
                    Text("Vagas Disponiveis")
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
                
            }
            
            
        }.ignoresSafeArea()
    }
}

#Preview {
    vagasDisponiveisView()
}
