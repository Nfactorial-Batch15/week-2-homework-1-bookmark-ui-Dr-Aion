//
//  Screen3.swift
//  HW4
//
//  Created by Aiganym Moldagulova on 08/12/2021.
//

import SwiftUI

var buttonTextScreen3 = "Save"

struct Screen3: View {
    var body: some View {
        NavigationView{
            ZStack{
                Group{
                    VStack(alignment: .center, spacing: 6){
                        Spacer()
                        blackTextView(s1: textScreen2)
                        Spacer()
                        blackButtonView(s2: buttonTextScreen2)
                    }
                    .navigationTitle("Bookmark App")
                    .navigationBarTitleDisplayMode(.inline)
                }
                Rectangle().fill(Color.black.opacity(0.4)).ignoresSafeArea()
                newScreen()
            }
        }
    }
}

struct newScreen: View{
    var body: some View{
        VStack{
            Spacer()
            ZStack{
                RoundedRectangle(cornerRadius: 16)
                    .fill(Color.white)
                    .frame(width: 390, height: 362)
                VStack(alignment: .center, spacing: 12){
                    Group{
                        Image(systemName: "xmark")
                            .padding(.trailing, 16)
                            .frame(width: 390, height: 22, alignment: .topTrailing)
                        Text("Title").fontWeight(.semibold)
                            .padding(.leading, 16)
                            .frame(width: 390, height: 22, alignment: .leading)
                        TextField("Bookmark Title", text: .constant(""))
                            .textFieldStyle(.roundedBorder)
                            .padding([.leading, .trailing], 16)
                            .frame(width: 390, height: 22, alignment: .leading)
                        Text("Link").fontWeight(.semibold)
                            .padding(.leading, 16)
                            .frame(width: 390, height: 22, alignment: .leading)
                        TextField("Bookmark link (URL)", text: .constant(""))
                            .textFieldStyle(.roundedBorder)
                            .padding([.leading, .trailing], 16)
                            .frame(width: 390, height: 22, alignment: .leading)
                            
                    }
                    blackButtonView(s2: buttonTextScreen3)
                }
            }
        }
    }
}

struct Screen3_Previews: PreviewProvider {
    static var previews: some View {
        Screen3()
    }
}
