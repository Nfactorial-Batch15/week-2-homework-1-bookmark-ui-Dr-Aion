//
//  Screen2.swift
//  HW4
//
//  Created by Aiganym Moldagulova on 08/12/2021.
//

import SwiftUI

var textScreen2 = "Save your first bookmark"
var buttonTextScreen2 = "Add bookmark"

struct Screen2: View {
    var body: some View {
            NavigationView{
                VStack(alignment: .center, spacing: 6){
                    Spacer()
                    blackTextView(s1: textScreen2)
                    Spacer()
                    blackButtonView(s2: buttonTextScreen2)
                }
                .navigationTitle("Bookmark App")
                .navigationBarTitleDisplayMode(.inline)
            }
    }
}

struct blackTextView: View{
    var s1: String
    var body: some View{
        Text(s1)
            .multilineTextAlignment(.center)
            .font(.system(size: 36, weight: .bold, design: .default))
            .frame(minWidth: 358, minHeight: 92, alignment: .center)
            .foregroundColor(.black)
    }
}

struct blackButtonView: View{
    var s2: String
    var body: some View{
        ZStack{
            RoundedRectangle(cornerRadius: 16)
                .fill(Color.black)
                .frame(width: 358, height: 58)
            Button(s2){
                print("the button was clicked")
            }
            .foregroundColor(.white)
            .font(.system(size: 16, weight: .regular, design: .default))
            .padding(EdgeInsets(top: 18, leading: 24, bottom: 18, trailing: 24))
        }
    }
}

struct Screen2_Previews: PreviewProvider {
    static var previews: some View {
        Screen2()
    }
}
