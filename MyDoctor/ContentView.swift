//
//  ContentView.swift
//  MyDoctor
//
//  Created by Turma01-3 on 08/10/24.
//

import SwiftUI

struct NavBar: View {
    @State var remedios: [Remedio] = carregarRemedios()
    var body: some View {
        TabView {
            
            ScreenIdoso()
             .tabItem {
                 Label(
                     title: { Text("Tela acessivel") },

                     icon: {  Image(systemName: "person.fill") }
                 )
             }
         Alarmes().tabItem {
                   Label(
                       title: { Text("Alarmes") },
                       icon: { Image(systemName: "calendar") }
                   )
            }
          
            NovoRemedioView().tabItem {
                Label(
                    title: { Text("Medicamentos") },
                    icon: { Image(systemName: "pills.fill") }
                )
            }
          
           Estoque()
            .tabItem {
                Label(
                    title: { Text("Monitoramento") },
                    icon: { Image(systemName: "shippingbox.fill") }
                )
            }
            
            
        }
    }
}

struct ContentView: View {
    var body: some View {
       
        NavBar()
        
        
    }
}

#Preview {
    ContentView()
}
