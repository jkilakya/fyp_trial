//
//  ContentView.swift
//  LOGIN2
//
//  Created by Choradia Dev on 23/1/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack{
            
            LinearGradient(gradient: .init(colors: [Color("C1"),Color("C2")]), startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all)
            
            if UIScreen.main.bounds.height > 800{
                
                Home()
            }
            else{
                
                ScrollView(.vertical, showsIndicators: false) {
                    
                    Home()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Home : View {
    
    @State var index = 0
    
    var body : some View{
        
        VStack{
            
            Image("Logo")
            .resizable()
            .frame(width: 200, height: 180)
            
            HStack{
                
                Button(action: {
                    
                    withAnimation(.spring(response: 0.8, dampingFraction: 0.5, blendDuration: 0.5)){
                        
                       self.index = 0
                    }
                    
                }) {
                    
                    Text("Existing")
                        .foregroundColor(self.index == 0 ? .black : .white)
                        .fontWeight(.bold)
                        .padding(.vertical, 10)
                        .frame(width: (UIScreen.main.bounds.width - 50) / 2)
                    
                }.background(self.index == 0 ? Color.white : Color.clear)
                .clipShape(Capsule())
                
                Button(action: {
                    
                   withAnimation(.spring(response: 0.8, dampingFraction: 0.5, blendDuration: 0.5)){
                       
                      self.index = 1
                   }
                    
                }) {
                    
                    Text("New")
                        .foregroundColor(self.index == 1 ? .black : .white)
                        .fontWeight(.bold)
                        .padding(.vertical, 10)
                        .frame(width: (UIScreen.main.bounds.width - 50) / 2)
                    
                }.background(self.index == 1 ? Color.white : Color.clear)
                .clipShape(Capsule())
                
            }.background(Color.black.opacity(0.1))
            .clipShape(Capsule())
            .padding(.top, 25)
            
            if self.index == 0{
                
                Login()
            }
            else{
                
                SignUp()
            }
            
            if self.index == 0{
                
                Button(action: {
                    
                }) {
                    
                    Text("Forget Password?")
                        .foregroundColor(.black)
                
                }
                .padding(.top, 20)
            }
            
            HStack(spacing: 15){
                
                Color.white.opacity(0.7)
                .frame(width: 35, height: 1)
                
                Text("Or")
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                
                Color.white.opacity(0.7)
                .frame(width: 35, height: 1)
                
            }
            .padding(.top, 10)
            
            HStack{
                
                Button(action: {
                    
                }) {
                    
                    Image("fb")
                        .resizable()
                        .frame(width: 60, height: 60)
                        .padding()
                    
                }//.background(Color.white)
                //.clipShape(Circle())
                
                Button(action: {
                    
                }) {
                    
                    Image("google")
                        .resizable()
                        .frame(width: 60, height: 60)                       .padding()
                    
                }//.background(Color.white)
                //.clipShape(Circle())
                .padding(.leading, 25)
            }
            .padding(.top, 10)
            
        }
        .padding()
    }
}

struct Login : View {
    
    @State var mail = ""
    @State var pass = ""
    
    var body : some View{
        
        VStack{
            
            VStack{
                
                HStack(spacing: 15){
                    
                    Image(systemName: "envelope")
                        .foregroundColor(.black)
                    
                    TextField("Enter Email Address", text: self.$mail)
                    
                }.padding(.vertical, 20)
                
                Divider()
                
                HStack(spacing: 15){
                    
                    Image(systemName: "lock")
                    .resizable()
                    .frame(width: 15, height: 18)
                    .foregroundColor(.black)
                    
                    SecureField("Password", text: self.$pass)
                    
                    Button(action: {
                        
                    }) {
                        
                        Image(systemName: "eye")
                            .foregroundColor(.black)
                    }
                    
                }.padding(.vertical, 20)
                
            }
            .padding(.vertical)
            .padding(.horizontal, 20)
            .padding(.bottom, 40)
            .background(Color.white)
            .cornerRadius(10)
            .padding(.top, 25)
            
            
            Button(action: {
                
            }) {
                
                Text("LOGIN")
                    .foregroundColor(.black)
                    .fontWeight(.bold)
                    .padding(.vertical)
                    .frame(width: UIScreen.main.bounds.width - 100)
                
            }.background(
            
                LinearGradient(gradient: .init(colors: [Color("C1"),Color("C2")]), startPoint: .leading, endPoint: .trailing)
            )
            .cornerRadius(8)
            .offset(y: -40)
            .padding(.bottom, -40)
            .shadow(radius: 15)
        }
    }
}

struct SignUp : View {
    
    @State var mail = ""
    @State var pass = ""
    @State var repass = ""
    
    var body : some View{
        
        VStack{
            
            VStack{
                
                HStack(spacing: 15){
                    
                    Image(systemName: "envelope")
                        .foregroundColor(.black)
                    
                    TextField("Enter Email Address", text: self.$mail)
                    
                }.padding(.vertical, 20)
                
                Divider()
                
                HStack(spacing: 15){
                    
                    Image(systemName: "lock")
                    .resizable()
                    .frame(width: 15, height: 18)
                    .foregroundColor(.black)
                    
                    SecureField("Password", text: self.$pass)
                    
                    Button(action: {
                        
                    }) {
                        
                        Image(systemName: "eye")
                            .foregroundColor(.black)
                    }
                    
                }.padding(.vertical, 20)
                
                Divider()
                
                HStack(spacing: 15){
                    
                    Image(systemName: "lock")
                    .resizable()
                    .frame(width: 15, height: 18)
                    .foregroundColor(.black)
                    
                    SecureField("Re-Enter", text: self.$repass)
                    
                    Button(action: {
                        
                    }) {
                        
                        Image(systemName: "eye")
                            .foregroundColor(.black)
                    }
                    
                }.padding(.vertical, 20)
                
            }
            .padding(.vertical)
            .padding(.horizontal, 20)
            .padding(.bottom, 40)
            .background(Color.white)
            .cornerRadius(10)
            .padding(.top, 25)
            
            
            Button(action: {
                
            }) {
                
                Text("SIGNUP")
                    .foregroundColor(.black)
                    .fontWeight(.bold)
                    .padding(.vertical)
                    .frame(width: UIScreen.main.bounds.width - 100)
                
            }.background(
            
                LinearGradient(gradient: .init(colors: [Color("C1"),Color("C2")]), startPoint: .leading, endPoint: .trailing)
            )
            .cornerRadius(8)
            .offset(y: -40)
            .padding(.bottom, -40)
            .shadow(radius: 15)
        }
    }
}
