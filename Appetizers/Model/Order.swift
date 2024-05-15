import SwiftUI

// Define the Order class which conforms to ObservableObject protocol
final class Order: ObservableObject {
    
    // Published property to notify subscribers about changes to the items array
    @Published var items: [Appetizer] = []
    
    // Computed property to calculate the total price of all items in the order
    var totalPrice: Double {
        items.reduce(0) { $0 + $1.price }
    }
    
    // Method to add a new appetizer to the order
    func add(_ appetizer: Appetizer) {
        items.append(appetizer)
    }
    
    // Method to delete appetizers from the order at specified offsets
    func deleteItems(at offsets: IndexSet) {
        items.remove(atOffsets: offsets)
    }
}
