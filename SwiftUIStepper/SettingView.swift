//
//  SettingView.swift
//  SwiftUIStepper
//
//  Created by Chang Sophia on 4/14/20.
//  Copyright © 2020 Chang Sophia. All rights reserved.
//

import SwiftUI

struct SettingView: View {
    
    private var displayMagicTrickProps = ["Soul Oracle Cards", "Cups and Balls", "Magic Dice", "Magic Wand"]
    private var displayBallonColors = ["Red", "Orange", "Yellow", "Green", "Blue", "Pink", "Purple"]
    @State private var selectedBallonColors = 0
    @State private var selectedMagicTrickProps = 0
    
   
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("BALLON")){
                   Picker(selection: $selectedBallonColors, label: Text("Display Ballon Colors")) {
                    ForEach(0 ..< displayBallonColors.count, id:\.self) {
                        Text(self.displayBallonColors[$0])
                    }
                }
                }
                Section(header: Text("MAGIC")){
                    Picker(selection: $selectedMagicTrickProps, label: Text("Display Magic Trick Props")) {
                    ForEach(0 ..< displayMagicTrickProps.count, id:\.self) {
                        Text(self.displayMagicTrickProps[$0])
                    }
                }
            
                }
                 .navigationBarTitle("Setting")
        }
    }
}
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
