//
//  ContentView.swift
//  Shared
//
//  Created by Saxon Dean on 31/3/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //Call detail view functions
        let itemList = listOfItems()
        let checkList = listOfBools()
        
        //Build list view
        NavigationView {
            //List the strings
            VStack{
                //change for loop to ForEach loop
                for i in itemList {
                    HStack {
                        Text(i)
                    }
                }
            }
            //List the check boxes
            VStack{
                //change for loop to ForEach loop
                for c in checkList {
                    HStack {
                        //Check if the box should be ticked
                        if i = true {
                            Image("activeTick")
                        }
                        else {
                            Image("inactiveTick")
                        }
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
