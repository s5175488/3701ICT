import SwiftUI
/*
 Content view is used to create the structure of the navigation which then utalises the MasterView to place
 items within the navigation
 */
struct ContentView : View {
    //is viewd by the viewmodel for any changes done to the array
    @ObservedObject var viewModel: ViewModel
    
    var body: some View{
                NavigationView {
                    //shows the MasterView which then utalizes the ViewModel file
                    MasterView(viewModel: viewModel)
                    .navigationBarTitle(Text(ViewModel.listTitle))
                    //Configures the navigation bar items for the view.
                    .navigationBarItems(
                        leading: EditButton(),
                        trailing:HStack {
                            //A button is a  control that performs an action when triggered.
                            //performs the addElement func in the ViewModel file
                            Button(action:{withAnimation{self.viewModel.addElement()}
                            }){
                                Image(systemName: "tick")
                            }
                        }
                    )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: ViewModel())
    }
}
