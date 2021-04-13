//
//  ContentView.swift
//  Login Page
//
//  Created by MAC on 12/4/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       LoginView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct LoginView: View {
    //@StatObject var modle = ModelData()
    var body: some View {
        VStack{
          
            Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
            
            Image(systemName: "leaf.fill")
                .padding(.horizontal)
                .padding(.vertical,20)
                .background(Color.white.opacity(0.2))
                .cornerRadius(30)
                .font(.system(size: 70))
            
            
            VStack(spacing:4){
                HStack(spacing:0){
                    Text("Dething")
                        .font(.system(size: 35,weight: .heavy))
                        .foregroundColor(.blue)
                    Text("Matshe")
                        .font(.system(size: 35,weight: .heavy))
                        .foregroundColor(.black)
                }
                
                Text("let Choose your Matsh")
                    .foregroundColor(Color.black.opacity(0.3))
                    .fontWeight(.heavy)
            }
            .padding(.top)
            
            
            VStack(spacing:20){
                
            }
            
            Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
        }
        .background(LinearGradient(gradient: .init(colors:[Color("red"),Color("white")]), startPoint: .top, endPoint: .bottom).ignoresSafeArea(.all,edges: .all))
    }
}


struct CustomTexField: View {
    var Images :String
    var placeholde :String
    @Binding var text :String
    var body: some View {
        ZStack{
            Image(systemName: Images)
                .font(.system(size: 24))
                .foregroundColor(Color("bottom"))
                .frame(width: 60, height: 60)
                .background(Color.white)
                .clipShape(Circle())
            TextField(placeholde ,text:$text)
                .padding(.horizontal)
                .padding(.leading,65)
                .frame( height: 60)
                .background(Color.white.opacity(0.2))
                .clipShape(Circle())
        }
        .padding(.horizontal)
       
    }
}
