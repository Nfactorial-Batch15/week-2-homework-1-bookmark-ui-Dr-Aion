//
//  ContentView.swift
//  HW4
//
//  Created by Aiganym Moldagulova on 07/12/2021.
//

import SwiftUI

var textWelcomeScreen = "Save all interesting links in one app"
var buttonTextWelcomeScreen = "Let's start collecting"

struct ContentView: View {
    var body: some View {
            ZStack{
                Color.black.ignoresSafeArea()
                VStack(alignment: .center, spacing: 6){
                    Image("image 8")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(maxWidth: 390, maxHeight: 614)
                    whiteTextView(s1: textWelcomeScreen)
                    whiteButtonView(s2: buttonTextWelcomeScreen)
                }
            }
        }
}

struct whiteTextView: View{
    var s1: String
    var body: some View{
        Text(s1)
            .multilineTextAlignment(.leading)
            .font(.system(size: 36, weight: .bold, design: .default))
            .frame(minWidth: 358, minHeight: 92, alignment: .leading)
            .foregroundColor(.white)
    }
}

struct whiteButtonView: View{
    var s2: String
    var body: some View{
        ZStack{
            RoundedRectangle(cornerRadius: 16)
                .fill(Color.white)
                .frame(width: 358, height: 58)
            Button(s2){
                print("the button was clicked")
            }
            .foregroundColor(.black)
            .font(.system(size: 16, weight: .regular, design: .default))
        }
        .padding(.bottom, 16)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
