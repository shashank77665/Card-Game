//
//  ContentView.swift
//  test
//
//  Created by Shashank Kumar on 23/02/25.
//

import SwiftUI

struct ContentView: View {
    
    @State var userCard = "back"
    @State var cpuCard = "back"
    
    @State var userScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        
        ZStack{
            Image("background-plain").resizable().ignoresSafeArea()
            VStack {
                Spacer()
                Image("logo").aspectRatio(contentMode: .fit).cornerRadius(3)
                Spacer()
                HStack{
                    Spacer()
                    Image(userCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                Button {
                    dealCard()
                } label: {
                    Image("button")
                }

                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(userScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                           
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                }.foregroundColor(Color.white)
                Spacer()
            }
            .padding()
        }
       
    }
    func dealCard(){
        let userScoreValue = Int.random(in: 2...14)
        let cpuScoreValue = Int.random(in: 2...14)
        
        userCard = "card"+String(userScoreValue)
        cpuCard = "card"+String(cpuScoreValue)
        
        if userScoreValue > cpuScoreValue{
            userScore += 1
        }else if userScoreValue < cpuScoreValue{
            cpuScore += 1
        }
    }
}

#Preview {
    ContentView()
}
