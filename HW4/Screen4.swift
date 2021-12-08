//
//  Screen4.swift
//  HW4
//
//  Created by Aiganym Moldagulova on 07/12/2021.
//

import SwiftUI

struct Bookmark: Identifiable {
     let id = UUID()
     var title: String
 }

var bookmarks = [
    Bookmark(title: "Google"),
    Bookmark(title: "nFactorial School"),
    Bookmark(title: "NY Times"),
    Bookmark(title: "Bloomberg")


]

struct BookmarkView: View {
    var bookmark: Bookmark
    
    var body: some View{
        HStack(spacing: 3){
            Text(bookmark.title)
            Spacer()
            Image(systemName: "link")
        }
    }
}
struct Screen4: View {
    var body: some View {
        NavigationView{
            VStack(alignment: .center, spacing: 6){
                List{
                    ForEach(bookmarks){ bookmark in
                        BookmarkView(bookmark: bookmark)
                    }
                }
                blackButtonView(s2: buttonTextScreen2)
            }
            .navigationTitle("List")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct Screen4_Previews: PreviewProvider {
    static var previews: some View {
        Screen4()
    }
}
