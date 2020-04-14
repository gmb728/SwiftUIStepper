//
//  ContentView.swift
//  SwiftUIStepper
//
//  Created by Chang Sophia on 4/14/20.
//  Copyright © 2020 Chang Sophia. All rights reserved.
//

import SwiftUI

struct ContentView: View {
     @State private var isVIP = true
     @State private var maxQtyBallon = 0
     @State private var maxQtyMagic1 = 0
     @State private var maxQtyMagic2 = 0
     @State private var maxQtyMagic3 = 0
     @State private var maxQtyMagic4 = 0
      
    
    var body: some View {
        
        ZStack{
            Group{
            VStack(spacing:30){
                Image("icon")
                    .resizable()
                    .scaledToFit()
                    .frame(width:50)
                
                Text("氣球魔術專賣店")
                    .font(.system(size: 30, weight: .bold, design: .rounded))
                    .foregroundColor(.pink)
                HStack(spacing: 10.0){
                Text("超划算!")
                    .font(.headline)
                    .foregroundColor(.red)
                    
            VStack{
                Text("看一次魔術１０元")
                    .frame(width: 150.0)
                Text("折一個氣球１０元")
                    .frame(width: 150.0)
                }
            VStack{
                Text("有會員")
                 .foregroundColor(.purple)
                .font(.subheadline)
                Text("７５折!")
                 .foregroundColor(.purple)
                .font(.subheadline)
                }
                Toggle(isOn: $isVIP){
                Text("VIP")
                   .foregroundColor(.purple)
                   .font(.subheadline)
                }
                   
                
            }
                .padding(.horizontal, 20)
            
           HStack(spacing: 20){
                Text("都１０元哦！")
                   .foregroundColor(.green)
                Text("看五次魔術還多送一個氣球哦！")
                    .foregroundColor(.blue)
        
          }
                .offset(x:0, y:10)
             }
            .offset(x:0, y:-240)
            .font(.headline)
            .padding(.bottom, 30)
               
        HStack(spacing:100){
            Image("clerk1")
                .resizable()
                .scaledToFit()
                .frame(width:(100))
            Image("clerk2")
                .resizable()
                .scaledToFit()
                .frame(width:(100))
            }
//commodity ballon
        
            VStack(alignment: .trailing){
                    Image("ballon")
                        .resizable()
                        .scaledToFit()
                        .frame(width:(180))
            HStack(alignment: .center){
                    Stepper("", onIncrement: {
                        self.maxQtyBallon += 1
                        }, onDecrement: {
                        self.maxQtyBallon -= 1
                        })
                    Text("$\(maxQtyBallon*10)")
                        .font(.system(size: 25, weight: .bold, design: .rounded))
                        .foregroundColor(.blue)
                        }
            
                    }
 
            .offset(x:-220, y:200)
         
//commodity magic
            
            VStack(alignment:.trailing){
                Image("magic tool 1")
                    .resizable()
                    .scaledToFit()
                    .frame(width:(90))
                          
                Stepper("", onIncrement: {
                    self.maxQtyMagic1 += 1
                    }, onDecrement: {
                    self.maxQtyMagic1 -= 1
                    })
                       }
            .offset(x:-100, y:140)
       
            VStack(alignment:.trailing) {
                       Image("magic tool 2")
                           .resizable()
                           .scaledToFit()
                           .frame(width:(90))
                                 
                       Stepper("", onIncrement: {
                           self.maxQtyMagic2 += 1
                           }, onDecrement: {
                           self.maxQtyMagic2 -= 1
                           })
                              }
                   .offset(x:-100, y:290)
            
            VStack(alignment:.trailing) {
                        Image("magic tool 3")
                            .resizable()
                            .scaledToFit()
                            .frame(width:(90))
                                            
                        Stepper("", onIncrement: {
                            self.maxQtyMagic3 += 1
                            }, onDecrement: {
                            self.maxQtyMagic3 -= 1
                            })
                                }
                        .offset(x:-10, y:290)
            VStack(alignment:.trailing) {
                        Image("magic tool 4")
                            .resizable()
                            .scaledToFit()
                            .frame(width:(85))
                                                       
                        Stepper("", onIncrement: {
                            self.maxQtyMagic4 += 1
                            }, onDecrement: {
                            self.maxQtyMagic4 -= 1
                            })
                                }
                            .offset(x:-15, y:140)
            
        HStack(alignment: .center){
                Text("Total:")
                Text("$\(maxQtyBallon*10 + maxQtyMagic1*10 + maxQtyMagic2*10 + maxQtyMagic3*10 + maxQtyMagic4*10)")
            }
             .offset(x:0, y:400)
              .font(.system(size: 50, weight: .bold, design: .rounded))
             
         Text("1.5M")
                    .offset(x:-10, y:-20)
                
         Path() { path in
             path.move(to:CGPoint(x:10,y:170)) //左
             path.addLine(to: CGPoint(x:10, y:840))
             path.move(to:CGPoint(x:405,y:170))//右
             path.addLine(to: CGPoint(x:405, y:840))
             path.move(to:CGPoint(x:210,y:470))//中
             path.addLine(to: CGPoint(x:210, y:780))
             path.move(to:CGPoint(x:210, y:0))//roof1
             path.addLine(to: CGPoint(x:10, y:170))
             path.move(to:CGPoint(x:210, y:0))//roof2
             path.addLine(to: CGPoint(x:410, y:170))
             path.move(to:CGPoint(x:10, y:170))//橫１
             path.addLine(to: CGPoint(x:400, y:170))
             path.move(to:CGPoint(x:10, y:230))//橫2
             path.addLine(to: CGPoint(x:400, y:230))
             path.move(to:CGPoint(x:10, y:300))//橫3
            path.addLine(to: CGPoint(x:400, y:300))
             path.move(to:CGPoint(x:150, y:400))//arrowLine
             path.addLine(to: CGPoint(x:250, y:400))
             path.move(to:CGPoint(x:150, y:400))//arrowLeftDown
             path.addLine(to: CGPoint(x:170, y:420))
             path.move(to:CGPoint(x:150, y:400))//arrowLeftUp
             path.addLine(to: CGPoint(x:170, y:380))
             path.move(to:CGPoint(x:230, y:420))//arrowRightDown
             path.addLine(to: CGPoint(x:250, y:400))
             path.move(to:CGPoint(x:250, y:400))//arrowRightUp
             path.addLine(to: CGPoint(x:230, y:380))
             path.move(to:CGPoint(x:10, y:470))//橫4
             path.addLine(to: CGPoint(x:400, y:470))
             path.move(to:CGPoint(x:10, y:780))//橫5
             path.addLine(to: CGPoint(x:400, y:780))
             path.move(to:CGPoint(x:10, y:840))//橫6
             path.addLine(to: CGPoint(x:400, y:840))
              
         }
         .stroke(Color(red:215/255, green:215/255, blue:215/255), lineWidth:8)
        
    }
    
}
}

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

