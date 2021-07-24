//
//  LoginView.swift
//  TwitterClone
//
//  Created by Rafael.Ahmedov on 7/13/21.
//

import SwiftUI
import Firebase

struct LoginView: View {
    private let lineThickness = CGFloat(2.0)
    @State var selectionView: Int? = nil
    @State var password: String = "123456"
    @State var email: String = "rafael@gmail.com"
    @State var contentView: Int? = nil
    @State var isLoading = false
    
    var body: some View {
            VStack(alignment: .center){
 
            Spacer()
            VStack{
                VStack{
                    TextField("Email address", text: $email).padding(.top,5).foregroundColor(Color("textColor"))
                    Divider()
                     .frame(height: 1)
                     .background(Color("bg"))
                }.padding(.bottom, lineThickness)
                .padding(.leading, 40).padding(.trailing,40).padding(.bottom,20)

                VStack{
                    SecureField("Password", text: $password).padding(.top,5).foregroundColor(Color("textColor"))
                    Divider()
                     .frame(height: 1)
                     .background(Color("bg"))
                }.padding(.bottom, lineThickness)
                .padding(.leading, 40).padding(.trailing,40).padding(.bottom,20)

            }
            Spacer()
            Divider()
                .frame(height: 0.5)
                .background(Color(.white))
                   HStack(){
                    NavigationLink (destination: ContentView(),tag: 1,selection : $contentView){
                    Button(action: {
                        LoadingView()
                        if !self.email.isEmpty && !self.password.isEmpty{
                            Auth.auth().signIn(withEmail: self.email, password: self.password) { authResult, error in
                                if let e = error {
                                   print(e)
                                }else{
                                    self.contentView = 1
                                    print("login success")
                                }
                            }
                        }else{
                            print("empty")
                        }
                     }){
               Text("Log in").font(.system(size: 20))
                .foregroundColor(Color(.white))
                  .bold()
                  .padding(.leading,80)
                  .padding(.trailing, 80)
                  .padding(.top , 10)
                  .padding(.bottom,10)
          }.background(Color("bg"))
          .clipShape(RoundedRectangle(cornerRadius: 20))
                    .padding(10)
                        
                    }
          }.padding(.top, lineThickness)
            }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading).navigationBarTitle("", displayMode: .large)
            .background(Color("backgroundColor"))
        .toolbar(content: {
            ToolbarItem(placement: .principal) {
                        HStack {
                            Image("Twitter")
                                .resizable()
                                .frame(width: 30, height: 25, alignment: .center).foregroundColor(Color("bg"))
                                .padding()
                        }
            }

        }).background(Color("backgroundColor"))
    }
}

