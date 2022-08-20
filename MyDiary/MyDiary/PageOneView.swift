//
//  PageOneView.swift
//  MyDiary
//
//  Created by Mac on 20/08/2022.
//

import SwiftUI

struct PageOneView: View {
    
    @State var C1 : Color
    
    @State var N1 : String
    
    var body: some View {
        ZStack{
            C1.ignoresSafeArea()
            
            VStack{
            Text(N1)
                    .font(.custom("Amiri-BoldItalic", size: 36))
                    .padding()
                    .background(.white.opacity(0.3))
                    .cornerRadius(15)
            }
        }
    }
}

//struct PageOneView_Previews: PreviewProvider {
//    static var previews: some View {
//        PageOneView(C1: Color, N1: String)
//    }
//}
