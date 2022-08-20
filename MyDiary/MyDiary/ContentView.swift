//
//  ContentView.swift
//  MyDiary
//
//  Created by Mac on 20/08/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var Colors = [Color.green.opacity(0.7),Color.indigo.opacity(0.7),Color.pink.opacity(0.6),Color.blue.opacity(0.5),Color.purple.opacity(0.9)]
    
    @State var M1 = ""
    @State var selected = Color.purple
    
    var body: some View {
        NavigationView{
            ZStack{
                Color.yellow.opacity(0.6).ignoresSafeArea()
                VStack{
                    Spacer()
                    
                    Text("Choose your favourite color")
                        .font(.custom("Amiri-BoldItalic", size: 25))
                        .padding()
                        .background(.white.opacity(0.4))
                        .cornerRadius(15)
                    HStack{
                    ForEach(Colors, id: \.self){ color in
                        
                        
                        Circle()
                            .fill(color)
                            .frame(width: 70, height: 90)
                            .onTapGesture {
                                selected = color
                            }
                            
                        
                        
                        }
                    }
                    
                    Text("write what you want")
                        .font(.custom("Amiri-BoldItalic", size: 25))
                        .padding()
                        .background(.white.opacity(0.4))
                        .cornerRadius(15)
                    
                    TextField("             Write Here", text: $M1)
                        .font(.custom("Amiri-BoldItalic", size: 25))
                        .frame(width: 300, height: 65)
                        .background(.white.opacity(0.7))
                        .cornerRadius(15)
                   Spacer()
                    
                    NavigationLink(destination: PageOneView(C1: selected, N1: M1)) {
                      
                        Text("Save")
                            .font(.custom("Amiri-BoldItalic", size: 45))
                            .padding()
                            .background(.white.opacity(0.4))
                            .cornerRadius(15)
                    }
                    
                }
            }
            .navigationTitle("Diary of a Crazy Life 🔥")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
