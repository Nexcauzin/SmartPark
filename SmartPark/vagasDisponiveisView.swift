import SwiftUI


struct vagasDisponiveisView: View {
    var x: Bool = false
    @State var y: Color = .black
    @StateObject var viewModel = ViewModel()
    
    
    func getNomeVaga(id: String) -> String {
        if(id == "123"){ return "1"}
        if(id == "456") {return "2"}
        return "3"
    }
    
    
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
                            ForEach(viewModel.carros, id: \.self) { car in
                                VStack{
                                    HStack{
                                        ZStack{
                                            Rectangle()
                                                .frame(width:122, height: 60)
                                                .foregroundStyle(.corTopoLista)
                                                .border(Color.orange)
                                                .cornerRadius(10)
                                            
                                            
                                            HStack{
                                                Text("\(getNomeVaga(id: car._id))")
                                                    .font(.title)
                                                    .foregroundStyle(.yellow)
                                                    .padding(10.0)
                                                if car.status == "OCUPADO" {
                                                    Image(systemName: "car.fill")
                                                        .resizable()
                                                        .foregroundStyle(Color.red)
                                                        .frame(width:30, height: 30)
                                                        .padding(10.0)
                                                } else {
                                                    Image(systemName: "car.fill")
                                                        .resizable()
                                                        .foregroundStyle(Color.green)
                                                        .frame(width:30, height: 30)
                                                        .padding(10.0)
                                                }
                                            }
                                           
                                        }
                                    }
                                }
                            }
                        }.offset(x: -100, y: 155)
                        .onAppear(){
                            viewModel.fetch2()
                        }
                    }
                }
            }
        }
    }
}
#Preview {
    vagasDisponiveisView()
}
