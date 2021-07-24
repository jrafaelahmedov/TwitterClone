//
//  LoginView.swift
//  TwitterClone
//
//  Created by Rafael.Ahmedov on 7/13/21.
//

import SwiftUI

struct WelcomeView: View {
    @State var selectionViewRegister: Int? = nil
    @State var selectionViewLogin: Int? = nil
    
    init() {
            UINavigationBar.appearance().backgroundColor = UIColor(Color("backgroundColor"))
    }

    var body: some View {
        NavigationView{
        VStack{
            Image("Twitter")
                .resizable()
                .frame(width: 30, height: 25, alignment: .center).foregroundColor(Color("bg"))
                .padding()
            Spacer()
            VStack{
            Text("See what's happening \n in the world right now.")
                .font(.system(size: 30))
                .foregroundColor(Color("textColor"))
                .bold()
                NavigationLink (destination: RegisterView(),tag: 1,selection : $selectionViewRegister){
                      Button(action: {
                           self.selectionViewRegister = 1
                        print("clicked")
                       }){
                 Text("Create account").font(.system(size: 20))
                    .foregroundColor(.white)
                    .bold()
                    .padding(.leading,80)
                    .padding(.trailing, 80)
                    .padding(.top , 10)
                    .padding(.bottom,10)
            }.background(Color("bg"))
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .padding(10)
                }
            }
            Spacer()
            HStack(){
                Text("Have an account already?").frame(alignment:.leading).foregroundColor(Color("textColor"))
                NavigationLink (destination: LoginView(),tag: 1,selection : $selectionViewLogin){
                Text("Log in").foregroundColor(.blue)
                    .onTapGesture {
                        self.selectionViewLogin = 1
                    }
                }
            }
        }
        .navigationBarHidden(true)
//        .background(ignoresSafeArea(.all))
        }
    }
}

