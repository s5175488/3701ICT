import Foundation
//@Identifiable: A class of types whose instances hold the value of an entity with stable identity.
class ViewModel: ObservableObject, Identifiable{
    
    //Place holder variables are used to replace hard coded text in the view files
    var itemList = [Item]()
    
    //class is used to hold the array
    //by using @published we can look at the new array when a change is made to it
    @Published var listOfItems: [itemList]
    //Initializes `self` with default strategies.
    init(listOfItems: [itemList]) {
        self.listOfItems = listOfItems
    }
    
    /*
        func creates new object using the itemList model
        append new object to itemList array "listOfItems"
    */
    func addElement(){
        let newItem = Item()
//        let newItem = Item(List(name: "\(ViewModel.newElementTextPlaceHolder)"))
        itemList.append(newItem)
    }
    
    /*
        func deletes item from itemList array at index int
        - parameter index:   int to specify location of item in array to delete
    */
    func deleteItems(index: Int){
        itemList.remove(at: index)
    }
    
}
