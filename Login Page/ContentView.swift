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
            Spacer(minLength: -20)
            
            VStack(spacing:20){
                CustomTexField(Images: "person", placeholde: "email", username: "")
                    .background(Color.gray)
                    .padding()
                CustomTexField(Images: "lock", placeholde: "password", username: "")
                    .background(Color.gray)
                    .padding()
                
                Button("Log In") {
                    print("Button tapped!")
                }
                .frame(width: 300, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .background(Color.blue)
                .foregroundColor(.black)
                .cornerRadius(10)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                
                HStack{
                
                    Text("Don’t have an account?")
                    Link("Sin up", destination: URL(string:"#")!)
                        
                    
                }
             
             
        }
            
            Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
        }
        .background(LinearGradient(gradient: .init(colors:[Color("top"),Color("bottom")]), startPoint: .top, endPoint: .bottom).ignoresSafeArea(.all,edges: .all))
    }

}

struct CustomTexField: View {
    var Images :String
    var placeholde :String
    @State var username: String = ""
    var body: some View {
        VStack(){
        HStack(spacing:0){
            Image(systemName: Images)
                .font(.system(size: 24))
                .foregroundColor(Color.gray)
                .frame(width: 60, height: 60)
                .background(Color.white)
                .clipShape(Circle())
            TextField(placeholde, text: $username )
                .padding(.horizontal)
                .padding(.leading,65)
                .frame( height: 60)
                .foregroundColor(.black)
                .cornerRadius(5)
                
                
                
        }
        .padding(.horizontal)
            
           
        }
       
    }
}

class ModelData : ObservableObject{
    @Published var email = ""
    @Published var password = ""
}
