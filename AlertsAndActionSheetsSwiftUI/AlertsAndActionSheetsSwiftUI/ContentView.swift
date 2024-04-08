//
//  ContentView.swift
//  AlertsAndActionSheetsSwiftUI
//
//  Created by Vemireddy Vijayasimha Reddy on 04/04/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showAlert = false
    @State private var showActionSheet = false
    var body: some View {
        VStack {
            Button(action: {
                showAlert.toggle()
                
                
            }, label: {
                Text("Alets")
            })
            .alert(Text("Alert"), isPresented: $showAlert) {
                Button(role: .destructive) {
                    
                } label: {
                    Text("Cancel")
                }
                
                Button(role: .none) {
                    
                } label: {
                    Text("OK")
                }
                
                Button(role: .cancel) {
                    
                } label: {
                    Text("OKK")
                }


            }
            .padding(.bottom, 20)
            
            Button(action: {
                showActionSheet.toggle()
            }, label: {
                Text("ActionSheet")
            })
//            .actionSheet(isPresented: $showActionSheet, content: {
//                ActionSheet(title: Text("Action Sheet"), message: Text("Message"), buttons: [
//                
//                    .default(Text("default")) {
//                        
//                    },
//                    .destructive(Text("Desctructive"), action: {
//                        
//                    }),
//                    .default(Text("default")) {
//                        
//                    },
//                
//                
//                ])
//                
//            })
            .confirmationDialog("Action Sheet", isPresented: $showActionSheet, titleVisibility: .automatic) {
                
            }
        
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
