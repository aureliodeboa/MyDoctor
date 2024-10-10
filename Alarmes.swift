//
//  Alarmes.swift
//  MyDoctor
//
//  Created by Turma01-3 on 08/10/24.
//

import SwiftUI
// AlarmeCard para exibir a hora e o nome do remédio
struct AlarmeCard: View {
    var remedio: Remedio
    
    var body: some View {
        HStack {
            Text(remedio.hora)
                .font(.title)
            Spacer()
            Text(remedio.nome)
                .font(.title2)
        
        }.padding(.horizontal,20)
        .frame(minWidth: 100, maxWidth: 300, minHeight: 90, maxHeight: 100)
        .background(Color(.lightGray))
        .cornerRadius(10).scaledToFit()
    }
}

// Lista de Alarmes
struct AlarmeList: View {
    @State var remedios: [Remedio] = carregarRemedios()
    
    var body: some View {
        VStack {
            ForEach(remedios) { remedio in
                AlarmeCard(remedio: remedio)
                    .padding(.bottom, 5)
            }
        }.onAppear{
            remedios = carregarRemedios()
        }
    }
}

// Tela principal dos Alarmes
struct Alarmes: View {
    var body: some View {
        ScrollView {
            AlarmeList()
        }
        .padding()
    }
}

#Preview {
    Alarmes()
}

