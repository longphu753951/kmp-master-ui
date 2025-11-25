//
//  RequirementText.swift
//  iosApp
//
//  Created by User on 24/11/25.
//  Copyright © 2025 orgName. All rights reserved.
//

import SwiftUI

struct RequirementText: View {
    var iconName  = "xmark.square"
    var iconColor = Color(red: 251/255, green: 128/255, blue: 128/255)
    
    var text = ""
    var isStrikeThrough = false
    
    var body: some View {
        HStack {
            Image(systemName: iconName)
                .foregroundColor(iconColor)
            Text(text)
                .font(.system(.body, design: .rounded))
                .foregroundStyle(.secondary)
                .strikethrough(isStrikeThrough)
            Spacer()
        }
    }
}

#Preview {
    RequirementText()
}
