import Foundation

// Define the structure for an Appetizer, which conforms to Decodable and Identifiable protocols
struct Appetizer: Decodable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}

// Define the structure for the response containing a list of Appetizers, conforms to Decodable protocol
struct AppetizerResponse: Decodable {
    let request: [Appetizer]
}

// MockData structure to provide sample data for testing purposes
struct MockData {
    
    // A sample appetizer instance for testing
    static let sampleAppetizer = Appetizer(id: 0001,
                                           name: "Test Appetizer",
                                           description: "This is the description for my appetizer. It's yummy.",
                                           price: 9.99,
                                           imageURL: "",
                                           calories: 99,
                                           protein: 99,
                                           carbs: 99)
    
    // An array of sample appetizers for testing
    static let appetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer]
    
    // Individual sample order items for testing
    static let orderItemOne = Appetizer(id: 0001,
                                        name: "Test Appetizer One",
                                        description: "This is the description for my appetizer. It's yummy.",
                                        price: 9.99,
                                        imageURL: "",
                                        calories: 99,
                                        protein: 99,
                                        carbs: 99)
    
    static let orderItemTwo = Appetizer(id: 0002,
                                        name: "Test Appetizer Two",
                                        description: "This is the description for my appetizer. It's yummy.",
                                        price: 9.99,
                                        imageURL: "",
                                        calories: 99,
                                        protein: 99,
                                        carbs: 99)
    
    static let orderItemThree = Appetizer(id: 0003,
                                          name: "Test Appetizer Three",
                                          description: "This is the description for my appetizer. It's yummy.",
                                          price: 9.99,
                                          imageURL: "",
                                          calories: 99,
                                          protein: 99,
                                          carbs: 99)
    
    // An array of sample order items for testing
    static let orderItems = [orderItemOne, orderItemTwo, orderItemThree]
}
