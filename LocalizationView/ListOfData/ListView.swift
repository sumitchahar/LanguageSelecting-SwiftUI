//
//  List.swift
//  LocalizationView
//  Created by Sumit on 18/08/24.

import SwiftUI

struct ListView: View {
    
    @ObservedObject var informationItemsMVVM = InformationItemsMVVM()
    @Environment(\.dismiss) var dismiss

    var body: some View {
        ZStack {
            VStack {
                HStack {
                    Spacer()
                    Button("Dismiss") {
                        dismiss()
                    }
                    .buttonStyle(GrowingButton())
                }.padding(.trailing)
                
                List(informationItemsMVVM.items, id: \.self.id ) { items in
                    VStack {
                        HStack {
                            Image("Bg_image_One")
                                .resizable()
                                .frame(width:60,height:60)
                                .clipped()
                                .cornerRadius(5)
                            VStack(alignment:.leading,spacing:16) {
                                Text(LocalizedStringKey("key_title"))
                                    .font(.system(size: 15, weight: .bold, design: .default))
                                    .padding([.leading],4)
                                Text(LocalizedStringKey("key_describtion"))
                                    .font(.system(size: 16, weight: .medium, design: .default))
                                    .padding([.leading],4)
                            }
                        }
                    }
                }.listStyle(.plain)
            }
        }
    }
 }

#Preview { ListView()
      .environment(\.locale, .init(identifier: "es"))
}
