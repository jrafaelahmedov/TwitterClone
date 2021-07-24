//
//  Search.swift
//  TwitterClone
//
//  Created by Rafael.Ahmedov on 7/12/21.
//

import SwiftUI

struct Search: View {
    var body: some View {
        NavigationView{
            List(0..<10) {i in
                Text("Trending \(i)")
                
            }.navigationBarTitle("",displayMode: .inline)
            .navigationBarItems(leading:
             HStack {
                Image("rafael").resizable().frame(width: 35, height: 35).clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/).onTapGesture {
                    print("profile photo clicked")
                }
                           
             }
                ,trailing:
                    Button(action: {
                        
                    }, label: {
                        Image("add").resizable().frame(width: 35, height: 25)
                    }).foregroundColor(Color("bg"))
        )
        }
    }
}
