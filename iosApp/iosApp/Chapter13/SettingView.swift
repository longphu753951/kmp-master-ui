//
//  SettingView.swift
//  iosApp
//
//  Created by User on 19/11/25.
//  Copyright © 2025 orgName. All rights reserved.
//

import SwiftUI

struct SettingView: View {
    @State private var selectedOrder = DisplayOrderType.alphabetical
    @State private var showCheckInOnly = false
    @State private var maxPriceLevel = 5
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var settingStore: SettingStore
    var body: some View {
        NavigationStack {
            Form {
                Section(header: Text("SORT PREFERENCE")) {
                    Picker(selection: $selectedOrder, label: Text("Display Order")) {
                        ForEach(DisplayOrderType.allCases, id: \.self) { orderType in
                            Text(orderType.text)
                        }
                    }
                }
                
                Section(header: Text("FILTER PREFERENCE")) {
                    Toggle(isOn: $showCheckInOnly) {
                        Text("Show check in only")
                    }
                    Stepper(onIncrement: {
                        self.maxPriceLevel += 1
                        
                        if self.maxPriceLevel > 5 {
                            self.maxPriceLevel = 5;
                        }
                    },
                            onDecrement: {
                        self.maxPriceLevel -= 1
                        
                        if self.maxPriceLevel <= 1 {
                            self.maxPriceLevel = 1
                        }
                    }) {
                        Text("Show \(String(repeating: "$", count: maxPriceLevel)) on below")
                    }
                }
            }
            .navigationTitle("Settings")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        self.settingStore.displayOrder = self.selectedOrder
                        self.settingStore.showCheckInOnly = self.showCheckInOnly
                        self.settingStore.maxPriceLevel = self.maxPriceLevel
                        dismiss()
                    } label: {
                        Text("Save")
                    }
                }
                
                ToolbarItem(placement: .topBarLeading) {
                    Button {
                        dismiss()
                    } label: {
                        Text("Cancel")
                    }
                }
            }
        }
    }
}

#Preview {
    SettingView().environmentObject(SettingStore())
}
