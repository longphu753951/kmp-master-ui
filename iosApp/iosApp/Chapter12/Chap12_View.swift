//
//  Chap10_ExcerciseView.swift
//  mastering-swiftui
//
//  Created by User on 5/11/25.
//

import SwiftUI


@available(iOS 17, *)
struct Chap12_View: View {
    @State var showDetailView = false
    @State var selectedArticle: Article?
   
    var body: some View {
        NavigationStack {
            List {
                ForEach(articles) { article in
                    ArticleView(article: article)
                        .listRowSeparator(.hidden)
                        .navigationLinkIndicatorVisibility(.hidden)
                        .onTapGesture {
                            self.showDetailView = true
                            self.selectedArticle = article
                        }
                }
            }
            .navigationTitle("Your Reading")
            .listStyle(.plain)
            .listRowSeparator(.hidden)
            .sheet(isPresented: $showDetailView) {
                if let selectedArticle = self.selectedArticle  {
                    ArticleDetailView(article: selectedArticle, isShow: true)
                }
            }
        }
        
    }
}

#Preview {
    if #available(iOS 17, *) {
        Chap12_View()
    } else {
        // Fallback on earlier versions
    }
}
