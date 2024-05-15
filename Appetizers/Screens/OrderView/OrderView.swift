import SwiftUI

struct OrderView: View {
    
    @EnvironmentObject var order: Order
    @State private var showingAlert = false
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    List {
                        ForEach(order.items) { appetizer in
                            AppetizerListCell(appetizer: appetizer)
                        }
                        .onDelete(perform: order.deleteItems)
                    }
                    .listStyle(PlainListStyle())
                    
                    Button {
                        placeOrder()
                    } label: {
                        Text("$\(order.totalPrice, specifier: "%.2f") - Place Order")
                    }
                    .modifier(StandardButtonStyle())
                    .padding(.bottom, 25)
                }
                
                if order.items.isEmpty {
                    EmptyState(imageName: "empty-order",
                               message: "You have no items in your order.\nPlease add an appetizer!")
                }
            }
            .navigationTitle("🧾 Orders")
            .alert(isPresented: $showingAlert) {
                Alert(title: Text("Order Placed"), message: Text("Your order has been successfully placed."), dismissButton: .default(Text("OK")))
            }
        }
    }
    
    private func placeOrder() {
        // Place order logic here
        
        // Show alert
        order.items.removeAll()

        showingAlert = true
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}

