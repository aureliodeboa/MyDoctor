import SwiftUI

// Componente para o card de cada remédio
struct RemedioCard: View {
    @Binding var remedio: RemedioAPI  // Use Binding para permitir alterações
    @State private var isEditPresented: Bool = false
    
    var body: some View {
        HStack {
            Text(remedio.nome)
                .padding()
                .foregroundStyle(Color.white)
            Spacer()
            Text("\(Int(remedio.quantidade)) \(remedio.unidade)")
                .padding()
                .foregroundStyle(Color.white)
            
            Button(action: {
                isEditPresented = true
            }) {
                Image(systemName: "pencil")
                    .foregroundColor(Color.white)
                    .padding()
            }
            .sheet(isPresented: $isEditPresented) {
                EditarRemedioView(remedio: $remedio)
            }
        }
        .frame(width: 300, height: 100)
        .background(Color(red: 254/255, green: 123/255, blue: 150/255))
        .cornerRadius(5)
    }
}

// View principal que lista os remédios
struct Estoque: View {
    @State private var remedios: [RemedioAPI] = []
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 10) {
                    ForEach($remedios) { $remedio in
                        RemedioCard(remedio: $remedio)
                    }
                }
                .onAppear {
                    carregarRemedios { remediosAPI in
                        self.remedios = remediosAPI
                    }
                }
                .padding(20)
            }
            
            .background(Color.white)
            .cornerRadius(15)
            .shadow(color: Color.gray.opacity(0.5), radius: 10, x: 5, y: 5)
        }
    }
}

// Tela para editar o remédio, com labels para os campos
struct EditarRemedioView: View {
    @Binding var remedio: RemedioAPI
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        Form {
            Section(header: Text("Editar Remédio")) {
                HStack {
                    Text("Nome:")
                    TextField("Nome", text: $remedio.nome)
                }
                
                HStack {
                    Text("Hora:")
                    TextField("Hora", text: $remedio.hora)
                }
                
                HStack {
                    Text("Detalhe:")
                    TextField("Detalhe", text: $remedio.detalhe)
                }
                
                DatePicker("Início do Tratamento", selection: $remedio.inicioTratamento, displayedComponents: .date)
                DatePicker("Fim do Tratamento", selection: $remedio.fimTratamento, displayedComponents: .date)
                
                HStack {
                    Picker("Unidade", selection: $remedio.unidade) {
                        Text("mg").tag("mg")
                        Text("ml").tag("ml")
                        Text("cápsulas").tag("cápsulas")
                    }
                }
                
                HStack {
                    Text("Quantidade:")
                    TextField("Quantidade", value: $remedio.quantidade, format: .number)
                        .keyboardType(.decimalPad)
                }
                
                HStack {
                    Text("Estoque:")
                    TextField("Estoque", value: $remedio.estoque, format: .number)
                        .keyboardType(.decimalPad)
                }
            }
            
            Button(action: {
                editarRemedio(remedio) // Chamada para atualizar o remédio na API
                presentationMode.wrappedValue.dismiss() // Fechar a tela após salvar
            }) {
                Text("Salvar")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
        }
        .navigationTitle("Editar Remédio")
    }
}




#Preview {
    Estoque()
}
