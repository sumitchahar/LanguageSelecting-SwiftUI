//  LocalizationFormation.swift
//  LocalizationView
//  Created by Sumit on 18/08/24.

import SwiftUI

struct LocalizationFormation: View {
    
    @State var isRadioButtonSelectedHindi:Bool = false
    @State var isRadioButtonSelectedEnglish:Bool = false
    @State var isRadioButtonSelectedSpain:Bool = false
    @State var radioButtonRowCount:Int = 0
    @State private var action: Int? = 0
    @State private var isPresented = false

    var body: some View {
        
        NavigationView {
            ZStack {
                VStack {
                    Text("Localization Formation")
                        .font(.system(size: 28, weight: .bold, design: .default))
                    
                    Spacer()
                    
                }.padding([.top],100)
                VStack {
                    GeometryReader { geometry in
                        VStack(alignment:.leading, spacing:24) {
                            Spacer()
                            HStack(spacing:15) {
                                ZStack {
                                    if isRadioButtonSelectedHindi {
                                        Circle()
                                            .frame(width: radioButtonRowCount == 0 ? 14 : 22,height:radioButtonRowCount == 0 ? 14 : 22)
                                    }
                                    Circle()
                                        .stroke(.green, lineWidth: 3)
                                        .frame(width: radioButtonRowCount == 0 ? 24 : 22,height:radioButtonRowCount == 0 ? 24 : 22)
                                        .onTapGesture {

                                            isPresented.toggle()
                                            radioButtonRowCount = 0
                                            isRadioButtonSelectedHindi.toggle()
                                            isRadioButtonSelectedEnglish = false
                                            isRadioButtonSelectedSpain = false
                                        }
                                        .fullScreenCover(isPresented: $isPresented) {
                                            ListView()
                                        }

                                }
                                Text("Hindi")
                                    .font(.system(size: 18, weight: .semibold, design: .default))
                            }
                            HStack(spacing:15) {
                                ZStack {
                                    if isRadioButtonSelectedEnglish {
                                        Circle()
                                            .frame(width: radioButtonRowCount == 0 ? 14 : 22,height:radioButtonRowCount == 0 ? 14 : 22)
                                    }
                                    Circle()
                                        .stroke(.green, lineWidth: 3)
                                        .frame(width: radioButtonRowCount == 0 ? 24 : 22,height:radioButtonRowCount == 0 ? 24 : 22)
                                        .onTapGesture {
                                            isPresented.toggle()
                                            radioButtonRowCount = 0
                                            isRadioButtonSelectedEnglish.toggle()
                                            isRadioButtonSelectedHindi = false
                                            isRadioButtonSelectedSpain = false
                                        }
                                        .fullScreenCover(isPresented: $isPresented) {
                                            ListView()
                                        }

                                }
                                Text("English")
                                    .font(.system(size: 18, weight: .semibold, design: .default))
                            }
                            
                            HStack(spacing:15) {
                                ZStack {
                                    if isRadioButtonSelectedSpain {
                                        Circle()
                                            .fill(.black)
                                            .frame(width: radioButtonRowCount == 0 ? 14 : 22,height:radioButtonRowCount == 0 ? 14 : 22)
                                    }
                                    Circle()
                                        .stroke(.green, lineWidth: 3)
                                        .frame(width: radioButtonRowCount == 0 ? 24 : 22,height:radioButtonRowCount == 0 ? 24 : 22)
                                        .onTapGesture {
                                            isPresented.toggle()
                                            radioButtonRowCount = 0
                                            isRadioButtonSelectedSpain.toggle()
                                            isRadioButtonSelectedEnglish = false
                                            isRadioButtonSelectedHindi = false
                                        }
                                        .fullScreenCover(isPresented: $isPresented) {
                                            ListView()
                                        }

                                }
                                Text("Spain")
                                    .font(.system(size: 18, weight: .semibold, design: .default))
                            }
                            Spacer()
                        }.padding([.leading],26)
                    }
                }
                .background(Color(red: 236/255, green: 238/255, blue: 248/255))
                .cornerRadius(20)
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 220, alignment: .center)
                .padding([.leading,.trailing],30)
                .shadow(color:.gray,radius: 3)

            }
        }
    }
    

}

#Preview {
    LocalizationFormation()
}
