//
//  DetailView.swift
//  s5175488_3701ICT_Assignment_1
//
//  Created by Saxon Dean on 31/3/22.
//

import SwiftUI

struct DetailView {
    //Create dictionary containing the checklist, including the strings and bools
    let itemCheckDict: [String: Bool] = [
        "Get Milk": false,
        "Get Bread": false,
        "Get Dog Food": true
    ]
    //Returns the dictionary containg the checklist to be sorted into separate lists in other functions
    //Unknown variable declaration error
    return itemCheckDict
    
}

//Separates strings from checklist
struct listOfItems {
    let itemList: [String] = []
    let itemCheckDict = DetailView()
    
    //Unknown variable declaration error
    for item1 in itemCheckDict {
        itemList.append(item1[0])
    }
    
    return itemList
}

//Separates booleans from checklist 
struct listOfBools {
    let checkList: [Bool] = []
    let itemCheckDict = DetailView()
    
    //Unknown variable declaration error
    for item2 in itemCheckDict {
        checkList.append(item2[1])
    }
    
    return checkList
}
