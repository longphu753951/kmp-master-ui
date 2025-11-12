//
//  Chapter10.swift
//  mastering-swiftui
//
//  Created by User on 30/10/25.
//

import SwiftUI

@available(iOS 17, *)
struct Chapter10: View {
    
    @State var restaurants = [
        Restaurant(name: "Cafe Deadend", type: "Coffee & Tea Shop", image: "cafedeadend", location:"Hong Kong", isFavorite: false), Restaurant(name: "Teakha", type: "Tea House", image: "teakha", location: "Hong Kong", isFavorite: false), Restaurant(name: "Cafe loisl", type: "Austrian / Causual Drink", image: "cafeloisl", location: "Hong Kong", isFavorite: false),Restaurant(name: "Petite Oyster", type: "French", image: "petiteoyster", location: "Hong Kong", isFavorite: false), Restaurant(name: "Po's Atelier", type: "Bakery", image: "posatelier", location: "Hong Kong", isFavorite: false), Restaurant(name: "Bourke Street Backery", type: "Chocolate", image: "bourkestreetbakery", location: "Sydney", isFavorite: false), Restaurant(name: "Upstate", type: "American", image: "upstate", location: "New York", isFavorite: false), Restaurant(name: "Traif", type: "American", image: "traif", location: "New York", isFavorite: false), Restaurant(name: "Five Leaves", type: "Coffee & Tea", image: "fiveleaves", location: "New York", isFavorite: false), Restaurant(name: "Cafe Lore", type: "Latin American", image: "cafelore", location: "New York", isFavorite: false), Restaurant(name: "Confessional", type: "Spanish", image: "confessional", location: "New York", isFavorite: false), Restaurant(name: "Barrafina", type: "Spanish", image: "barrafina", location: "London", isFavorite: false), Restaurant(name: "Donostia", type: "Spanish", image: "donostia", location: "London", isFavorite: false), Restaurant(name: "Royal Oak", type: "British", image: "royaloak", location: "London", isFavorite: false)]
    
    var body: some View {
        List(restaurants) { restaurant in
            ForEach(restaurants.indices, id: \.self) { index in
                if(0...1).contains(index) {
                    FullImageRow(image: restaurant.image, name: restaurant.name)
                }
                else {
                    RowItem(image: restaurant.image, name: restaurant.name)
                }
                   
            }
            .listRowSeparator(.hidden)
        }
        .listStyle(.plain)
    }
}

@available(iOS 17, *)
struct RowItem: View {
    @State var image: String
    @State var name: String
    var body: some View {
        HStack {
            Image("Restaurant/\(image)")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
                .cornerRadius(5)
                .padding(.horizontal)
            Text(name)
        }
    }
}

@available(iOS 17, *)
struct FullImageRow: View {
    @State var image: String
    @State var name: String
    var body: some View {
        ZStack {
            Image("Restaurant/\(image)")
                .frame(height: 200)
                .clipShape(.rect(cornerRadius: 10))
                .overlay(
                    Rectangle()
                        .backgroundStyle(.blue)
                        .cornerRadius(10)
                        .opacity(0.2)
                )
            Text(name)
                .font(.system(.title, design: .rounded))
                .fontWeight(.heavy)
                .foregroundStyle(.white)
        }
    }
}

@available(iOS 17, *)
#Preview {
    Chapter10()
}

@available(iOS 17, *)
#Preview("FullImageRow", traits: .sizeThatFitsLayout) {
    FullImageRow(image: "cafedeadend", name: "Cafe Deadend")
}
