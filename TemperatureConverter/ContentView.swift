//
//  ContentView.swift
//  TemperatureConverter
//
//  Created by Esma Özcan on 4.08.2024.
//

import SwiftUI

struct ContentView: View {
    
    @State var celcius = "0"
    @State var fahrenayt = "0"
    @State var showButton = true
    
    
    func temperatureConverter(){
       
        
        if(!showButton){
            fahrenayt = String(format: "%.2f", (Double(celcius) ?? 0) * 1.8 + 32)
        }
    }
    
    
    var body: some View {
        
        HStack{
            
            TextField("Celcius",text: $celcius)
                .frame(width: 100)
                .padding()
                .background(Color.black.opacity(0.08))
                .cornerRadius(5)
                .padding(.trailing)
                .onChange(of: celcius, temperatureConverter)
                
                
            if(showButton){
                Button{
                    //1.odev
                    //celcius butona basıldığında fahrenayta dönecek
                    //butonu ortadan tamamen kaldır. Inputa yazdığı an otomatik fahrenayt değeri yazsın
                    //Sonuç virgüllü olacak ama virgül sonrası uzun bir data istemiyorum. Virgülden sonra sadece 2 değer olacak.
                    
                    showButton = false
                    temperatureConverter()
                    
  
                }
            label: {
                    Image(systemName: "repeat")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(20)
                        
                }
            }
            
            Text("Fahrenayt: \(fahrenayt)")
                .padding()
                .background(Color.yellow)
                .cornerRadius(5)
                .padding(.leading)
        }
        //.background(Color.yellow)
        
        
    }
}

#Preview {
    ContentView()
}

