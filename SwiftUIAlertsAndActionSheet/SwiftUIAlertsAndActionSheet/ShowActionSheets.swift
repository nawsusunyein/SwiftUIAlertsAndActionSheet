//
//  ShowActionSheets.swift
//  SwiftUIAlertsAndActionSheet
//
//  Created by techfun on 2020/03/18.
//  Copyright © 2020 Naw Su Su Nyein. All rights reserved.
//

import SwiftUI

struct ShowActionSheets: View {
    
    @State var showingSheet = false
    
    var body: some View {
        Button(action:{
            self.showingSheet = true
        }){
            Text("Tap to show sheet")
                .padding()
                .background(Color.blue)
                .foregroundColor(Color.white)
                .cornerRadius(10)
        }
        
        .actionSheet(isPresented:$showingSheet){
                ActionSheet(title: Text("Action sheet"), message: Text("Showing action sheets"), buttons: [.default(Text("Got it!"))])
        }
    }
}

struct ShowActionSheets_Previews: PreviewProvider {
    static var previews: some View {
        ShowActionSheets()
    }
}
