//
//  ContentView.swift
//  Riter
//
//  Created by Shahed Tarek  on 17/06/2023.
//
import SwiftUI

struct ContentView: View {
    
    @State var counter = 0
    @State var message = ""
    
var body: some View {
VStack {
Text("\(counter)")
    HStack ( alignment:  .bottom, spacing: -10){
        Rectangle()
            .frame(width: 20)
        Text("🇱🇾")
            .font(.system(size: 100))
            .offset(y: CGFloat(-10 * counter))
    }
    
    
    
    
    Button {
        print("Raising flag")
        withAnimation {
            counter += 1
            if counter >= 45 {
                counter = 45
            }
        
        else if counter >= 40 {
                message = "Patriotic 3"
        }
        else if counter >= 30 {
                message = "Patriotic 2"
        }
        else if counter >= 20 {
                message = "Patriotic 1"
                
            }
        }
        } label: {
            Text("Raise Flag")
            
                .padding()
                .background(.blue)
                .foregroundColor(.white)
                .cornerRadius(10)
                .shadow(color: .black.opacity(0.3), radius: 10)
        }
            
            Button {
                counter = 0
            }label: {
                Text("Reset")
                    .padding()
                    .background(.red)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .shadow(color: .black.opacity(0.3), radius: 10)
            }
            
       // Text(message)
           // if counter >= 40 {
                //Text("😡")
                    //.padding()
                   // .font(.system(size: 80))
            }
        
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
