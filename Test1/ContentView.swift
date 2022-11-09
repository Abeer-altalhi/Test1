//
//  ContentView.swift
//  Test1
//
//  Created by Abeer on 28/03/1444 AH.
//

import SwiftUI

struct ContentView: View {
    @State private var soundOn = true
    @State private var On = true
    @State private var onn = true
    @State private var rr = true
  //  @State private var quantityExampleOne: Int = 0
    @State var Quantity: Int = 0



    var body: some View {
        ZStack{
            //Color(.gray).ignoresSafeArea()

        VStack{
        Text("Coffee ")
.font(.custom("AmericanTypewriter", fixedSize: 30))
            
            Toggle("Include Milk 🥛", isOn: $On)
                .font(.custom("AmericanTypewriter", fixedSize: 20))
                .padding(.leading)
            
            Divider()

            Toggle("Iced 🧊", isOn: $rr)
                .font(.custom("AmericanTypewriter", fixedSize: 20))
                .padding(.leading)
            Divider()

            
            Toggle("Spoon of suger", isOn: $onn)
                .font(.custom("AmericanTypewriter", fixedSize: 20))
                .padding(.leading)
            Divider()

            Stepper(value: $Quantity, in: 0...10, label: { Text("Quantity:  \(Quantity)")})
                .font(.custom("AmericanTypewriter", fixedSize: 20))
                .padding(.horizontal)
            
            Divider()

           // Stepper("Quantity",
                //    value: $quantityExampleOne,
                 //   in:0...20,
                   // step: 1)
              //  .padding(.leading)
      
           
            Button("Order" /*role: .destructive*/) {
              //  print("Done")
     
            } .buttonStyle(.bordered)
           
      
        }

        .padding(.horizontal)
        

        
        
               
        }
  

           }
}
       



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
