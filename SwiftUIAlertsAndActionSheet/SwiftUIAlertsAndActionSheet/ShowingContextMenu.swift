//
//  ShowingContextMenu.swift
//  SwiftUIAlertsAndActionSheet
//
//  Created by techfun on 2020/03/18.
//  Copyright © 2020 Naw Su Su Nyein. All rights reserved.
//

import SwiftUI

struct ShowingContextMenu: View {
    
    var body: some View {
        Text("Tap Menu")
            .padding()
            .background(Color.blue)
            .foregroundColor(Color.white)
            .cornerRadius(10)
            .contextMenu{
                Button(action:{
                    print("tap global")
                }){
                    Image(systemName: "globe")
                    Text("Choose Country")
                }
                
                Button(action:{
                    print("tap location")
                }){
                    Image(systemName: "location.circle")
                    Text("Choose Location")
                }
        }
    }
}

struct ShowingContextMenu_Previews: PreviewProvider {
    static var previews: some View {
        ShowingContextMenu()
    }
}
