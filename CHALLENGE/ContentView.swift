//
//  ContentView.swift
//  CHALLENGE
//
//  Created by Phil on 2022/04/10.
//

import SwiftUI

struct ContentView: View {
    @State var credit = 1000
    @State var firstCard = "apple"
    @State var secondCard = "star"
    @State var thirdCard = "cherry"
    let arrString = ["apple", "star","cherry" ]
    var body: some View {
        VStack {
            Spacer()
            Text("SwiftUI Slot!")
                .font(.largeTitle)
            Spacer()
            Text("credits:" + String(credit))
                .font(.largeTitle)
            Spacer()
            HStack {
                Image(firstCard)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Image(secondCard)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Image(thirdCard)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
            Spacer()
            Button("Spin") {
                let randomCard1 = Int.random(in: 0...2)
                let randomCard2 = Int.random(in: 0...2)
                let randomCard3 = Int.random(in: 0...2)
                firstCard =  arrString[randomCard1]
                secondCard =  arrString[randomCard2]
                thirdCard =  arrString[randomCard3]
                if (randomCard1, randomCard2) == ( randomCard2, randomCard3) {
                    credit += 100
                }
                else {
                    credit -= 5
                }
            }
            
            .padding(.vertical, 20)
            .padding(.horizontal, 50)
        
            .foregroundColor(.white)
            .background(Color(.systemPink))
            .cornerRadius(25)
            .font(.system(size: 18, weight: .bold, design: . default))
            Spacer()
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
