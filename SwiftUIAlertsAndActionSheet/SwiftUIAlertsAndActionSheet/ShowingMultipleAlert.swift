//
//  ShowingMultipleAlert.swift
//  SwiftUIAlertsAndActionSheet
//
//  Created by techfun on 2020/03/18.
//  Copyright © 2020 Naw Su Su Nyein. All rights reserved.
//

import SwiftUI

struct ShowingMultipleAlert: View {
    
    @State var isShowAlert1 = false
    @State var isShowAlert2 = false
    
    var body: some View {
        VStack{
            Button(action:{
                self.isShowAlert1 = true
            }){
                Text("Tap to show alert 1")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(Color.white)
                    .cornerRadius(10)
            }
                .alert(isPresented:$isShowAlert1){
                    Alert(title: Text("Alert 1"), message: nil, dismissButton: .cancel())
            }
            
            Button(action:{
                self.isShowAlert2 = true
            }){
                Text("Tap to show alert 2")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(Color.white)
                    .cornerRadius(10)
            }
            .alert(isPresented:$isShowAlert2){
                Alert(title: Text("Alert 2"), message: nil, dismissButton: .cancel())
            }
        }
    }
}

struct ShowingMultipleAlert_Previews: PreviewProvider {
    static var previews: some View {
        ShowingMultipleAlert()
    }
}
