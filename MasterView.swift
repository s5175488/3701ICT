import SwiftUI

struct MasterView: View {
    /*
        the following code is used to create a naviagtion view that displays all the item objects saved into an array
    */
    //the list changes according to the array in the model
    @ObservedObject var viewModel: ViewModel
    
    var body: some View {
        //creates the list that utilises the array of items
        List{
            //creates a for loop to run through the array with the var itemList
            ForEach(viewModel.listOfItems) { itemList in
                //links the items in the list to the detailView for the item object selected
                NavigationLink(destination: DetailView(model: itemList)){
                        ExtractedView(itemList: itemList)
                    }
                //when an item is deleted send index position of item through fun deleteItems() as var index in the ViewModel file
                }.onDelete{indices in
                    indices.forEach {self.viewModel.deleteItems(index:$0)
            }
        }
    }
}
    //separate view for the contents in the list
    //allows fot the objects to be observed and therefore show changes to the items
    struct ExtractedView: View {
        //@ObservedObject:  property wrapper type that subscribes to an observable object and invalidates a view whenever the observable object changes.
        @ObservedObject var itemList: ItemList
        var body: some View {
            HStack(){
                //calls image from the func "getterImage" for the item object
                itemList.getterImage().resizable()
                .padding(.vertical, 5.0)
                .frame(width: 80.0, height: 80.0)
                .shadow(radius: 10)
                .scaledToFit()
            }
        }
    }
}
