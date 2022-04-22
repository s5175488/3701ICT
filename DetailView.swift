import SwiftUI

struct DetailView: View {
    /*
        the following code is used to display the information about the objects when they are selcted from the MasterView
     */
    //A property wrapper type that subscribes to an observable object and invalidates a view whenever the observable object changes.
    //
    @ObservedObject var model: ItemList
    //A property wrapper type that can read and write a value managed by SwiftUI.
    //used to set the inital state of the url string
    @State var url: String = ""
    
    var body: some View {
        
        //formats all text and images in a vertical stack
        VStack(alignment: .center) {
            //display the name for the object on the screen
            TextField(ViewModel.newElementTextPlaceHolder, text: $model.name)
                .font(.title)
                }
                
                VStack(alignment: .leading){
                    //display default text "<new>"
                    TextField(ViewModel.newElementTextPlaceHolder,text: $model.isChecked)
                    .multilineTextAlignment(.leading)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                }
            } .padding(.horizontal)
             .fixedSize(horizontal: false, vertical: true)

        }
        .padding(.bottom, 150.0)
    }
}
