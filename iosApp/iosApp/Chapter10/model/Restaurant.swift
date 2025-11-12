//
//  Restaurant.swift
//  mastering-swiftui
//
//  Created by User on 30/10/25.
//

import Foundation

struct Restaurant: Identifiable {
    var id = UUID()
    var name: String = ""
    var type: String = ""
    var phone: String = ""
    var image: String
    var location: String = ""
    var priceLevel: Int = 0
    var isFavorite: Bool = false
    var isCheckIn: Bool = false
    
    
}
