//
//  Learn Stepper.swift
//  SwiftUIdemo
//
//  Created by xc on 2019/10/15.
//  Copyright © 2019 xc. All rights reserved.
//

import SwiftUI

struct LearnStepper: View {
    
    @State var quantity: Int = 0
    
    var body: some View {
        VStack{
            
            //限制范围
            Stepper(value: $quantity, in: 0...10, label: {
                Text("Quantity \(quantity)")
                
            })
            Stepper("Quantity \(quantity)", value: $quantity, in: 0...10)
            
            //不限制范围
            Stepper(onIncrement: {
                self.quantity += 1
            }, onDecrement: {
                self.quantity -= 1
            }, label: { Text("Quantity \(quantity)") })
        }
        
    }
}

struct LearnStepper_Previews: PreviewProvider {
    static var previews: some View {
        LearnStepper()
    }
}
