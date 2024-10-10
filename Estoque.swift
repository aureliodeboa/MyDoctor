import SwiftUI

import SwiftUI

struct Estoque: View {
    var body: some View {
        VStack {
            HStack {
                Text("Monitoramento")
                    .font(.title2)
                    .foregroundColor(Color.black)
                Spacer()
                Image(systemName: "checkmark.circle.fill")
                    .foregroundColor(Color.green)
                Text("Ativo")
                    .font(.title2)
                    .foregroundColor(Color.black)
            }
            .padding(15)
            
            VStack(spacing: 10) { // Espaçamento entre as caixas
                HStack {
                    Text("Ibuprofeno")
                        .padding()
                        .foregroundStyle(Color.white)
                    Spacer()
                    Text("30 Cápsulas")
                        .padding()
                        .foregroundStyle(Color.white)
                    Image(systemName: "pencil")
                        .foregroundColor(Color.white)
                        .padding()
                }
                .frame(width: 300, height: 100)
                .background(Color(red: 254/255, green: 123/255, blue: 150/255))
                .cornerRadius(5)
                
                HStack {
                    Text("Pregabalina")
                        .padding()
                        .foregroundStyle(Color.white)
                    Spacer()
                    Text("30 Cápsulas")
                        .padding()
                        .foregroundStyle(Color.white)
                    Image(systemName: "pencil")
                        .foregroundColor(Color.white)
                        .padding()
                }
                .frame(width: 300, height: 100)
                .background(Color(red: 254/255, green: 123/255, blue: 150/255))
                .cornerRadius(5)
                
                HStack {
                    Text("Xigduo")
                        .padding()
                        .foregroundStyle(Color.white)
                    Spacer()
                    Text("1 Cápsulas")
                        .padding()
                        .foregroundStyle(Color.white)
                    Image(systemName: "pencil")
                        .foregroundColor(Color.white)
                        .padding()
                }
                .frame(width: 300, height: 100)
                .background(Color.pink)
                .cornerRadius(5)
                
                HStack {
                    Text("Vazio")
                        .padding()
                        .foregroundStyle(Color.white)
                    Spacer()
                    Text("-")
                        .padding()
                        .foregroundStyle(Color.white)
                    Spacer()
                    Image(systemName: "pencil")
                        .foregroundColor(Color.white)
                        .padding()
                }
                .frame(width: 300, height: 100)
                .background(Color(red: 254/255, green: 123/255, blue: 150/255))
                .cornerRadius(5)
            }
            .frame(width: 300, height: 430)
            .padding(20)
            .background(Color.white)
            .cornerRadius(15) // Cantos arredondados para a caixa principal
            .shadow(color: Color.gray.opacity(0.5), radius: 10, x: 5, y: 5) // Sombra aplicada à caixa
        }
    }
}

#Preview {
    Estoque()
}


