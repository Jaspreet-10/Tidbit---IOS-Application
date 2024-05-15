import Foundation

// Define the User structure, which conforms to Codable protocol
struct User: Codable {
    var firstName: String = ""        // User's first name, default is an empty string
    var lastName: String = ""         // User's last name, default is an empty string
    var email: String = ""            // User's email address, default is an empty string
    var birthdate: Date = Date()      // User's birthdate, default is the current date
    var extraNapkins: Bool = false    // Indicates if the user requests extra napkins, default is false
    var frequentRefills: Bool = false // Indicates if the user requests frequent refills, default is false
}
