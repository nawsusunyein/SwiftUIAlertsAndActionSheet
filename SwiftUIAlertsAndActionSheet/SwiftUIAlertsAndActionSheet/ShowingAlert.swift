//
//  ShowingAlert.swift
//  SwiftUIAlertsAndActionSheet
//
//  Created by techfun on 2020/03/18.
//  Copyright © 2020 Naw Su Su Nyein. All rights reserved.
//

import SwiftUI

struct ShowingAlert: View {
    @State var showAlert = false
    
    var body: some View {
        Button(action:{
            self.showAlert = true
        }){
            Text("Tap to show alert")
                .padding()
                .background(Color.blue)
                .foregroundColor(Color.white)
                .cornerRadius(10)
        }
        
        .alert(isPresented: $showAlert){
                Alert(title: Text("Important Message"), message: Text("Wear suncream"), dismissButton: .default(Text("Got it!")))
        }
    }
}

struct ShowingAlert_Previews: PreviewProvider {
    static var previews: some View {
        ShowingAlert()
    }
}
