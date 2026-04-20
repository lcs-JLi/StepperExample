//
//  ContentView.swift
//  StepperExample
//
 
import SwiftUI
 
struct ContentView2: View {
    
    // MARK: Stored properties
    @State var num1: Int = 1
    @State var num2: Int = 1

    // MARK: Computed properties
    var added: Int{
        
        return num1 + num2
    }
    
    
    var body: some View {
        VStack {
            
            Spacer()
            
            

            VStack(alignment: .trailing) {
                
               
                
                
                Text("\(num1)")
                    .font(.system(size: 70))
                
                
                
                Stepper(value: $num1, label: {
                Text("Num1")
                })
                
                HStack{
                    Text("+")
                        .font(.system(size: 70))
                    
                        Spacer()
                    
                    Text("\(num2)")
                        .font(.system(size: 70))
                    
                }
                
                Stepper(value: $num2, label: {
                Text("Num2")
                })
                
                
 
                Text("\(added)")
                    .font(.system(size: 70))
            }
                        
            Spacer()
        
           
          
            
            
        }
        .padding()
    }
}
 
#Preview {
    ContentView2()
}
 
