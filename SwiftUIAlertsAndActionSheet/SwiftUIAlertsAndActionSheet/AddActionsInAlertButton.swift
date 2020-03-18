//
//  AddActionsInAlertButton.swift
//  SwiftUIAlertsAndActionSheet
//
//  Created by techfun on 2020/03/18.
//  Copyright © 2020 Naw Su Su Nyein. All rights reserved.
//

import SwiftUI

struct AddActionsInAlertButton: View {
    
    @State var selectedActionList = false
    
    var body: some View {
        Button(action:{
            self.selectedActionList = true
        }){
            Text("Tap to show delete alert")
                .padding()
                .background(Color.blue)
                .foregroundColor(Color.white)
                .cornerRadius(10)
        }
        .alert(isPresented:$selectedActionList){
            Alert(title: Text("Confirm Delete"), message: Text("Are you sure to delete"), primaryButton: .destructive(Text("Delete")){print("Deleting items....")}, secondaryButton: .cancel())
        }
    }
}

struct AddActionsInAlertButton_Previews: PreviewProvider {
    static var previews: some View {
        AddActionsInAlertButton()
    }
}
