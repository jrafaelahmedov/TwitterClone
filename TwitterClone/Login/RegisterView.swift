//
//  RegisterView.swift
//  TwitterClone
//
//  Created by Rafael.Ahmedov on 7/13/21.
//

import SwiftUI

struct RegisterView: View {
    
    init() {
            UINavigationBar.appearance().backgroundColor = UIColor(Color("backgroundColor"))
    }
    
    private let lineThickness = CGFloat(2.0)
    @State var selectionView: Int? = nil
    @State var password: String = ""
    @State var email: String = ""
    
    var body: some View {
            VStack(alignment: .center){
            VStack{
                VStack{
            Text("Create Your account")
                .font(.system(size: 30))
                .foregroundColor(Color("textColor"))
                .bold()
                .padding()
                .frame(alignment:.center)
                }
            }.padding(.leading, 40).padding(.trailing,40).padding(.bottom,10)
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
                .background(Color(.gray))
                   HStack(){
                    Button(action: {
                      print("clicked")
                     }){
               Text("Sign up").font(.system(size: 20))
                .foregroundColor(Color(.white))
                  .bold()
                  .padding(.leading,80)
                  .padding(.trailing, 80)
                  .padding(.top , 10)
                  .padding(.bottom,10)
          }.background(Color("bg"))
          .clipShape(RoundedRectangle(cornerRadius: 20))
          .padding(10)
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

