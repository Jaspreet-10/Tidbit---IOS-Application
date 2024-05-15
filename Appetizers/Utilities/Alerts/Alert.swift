import SwiftUI

// Define the AlertItem structure, which conforms to Identifiable protocol
struct AlertItem: Identifiable {
    let id = UUID()                     // Unique identifier for each alert item
    let title: Text                     // Title of the alert
    let message: Text                   // Message body of the alert
    let dismissButton: Alert.Button     // Dismiss button for the alert
    let firstName: String?              // Optional first name property

    // Initializer for AlertItem, including optional firstName parameter
    init(title: Text, message: Text, dismissButton: Alert.Button, firstName: String? = nil) {
        self.title = title
        self.message = message
        self.dismissButton = dismissButton
        self.firstName = firstName
    }
}

// Define the AlertContext structure to hold predefined alert configurations
struct AlertContext {
    //MARK: - Network Alerts
    static let invalidData = AlertItem(
        title: Text("Server Error"),
        message: Text("The data received from the server was invalid. Please contact support."),
        dismissButton: .default(Text("OK"))
    )
    
    static let invalidResponse = AlertItem(
        title: Text("Server Error"),
        message: Text("Invalid response from the server. Please try again later or contact support."),
        dismissButton: .default(Text("OK"))
    )
    
    static let invalidURL = AlertItem(
        title: Text("Server Error"),
        message: Text("There was an issue connecting to the server. If this persists, please contact support."),
        dismissButton: .default(Text("OK"))
    )
    
    static let unableToComplete = AlertItem(
        title: Text("Server Error"),
        message: Text("Unable to complete your request at this time. Please check your internet connection."),
        dismissButton: .default(Text("OK"))
    )
    
    //MARK: - Account Alerts
    static let invalidForm = AlertItem(
        title: Text("Invalid Form"),
        message: Text("Please ensure all fields in the form have been filled out."),
        dismissButton: .default(Text("OK"))
    )
    
    static let invalidEmail = AlertItem(
        title: Text("Invalid Email"),
        message: Text("Please ensure your email is correct."),
        dismissButton: .default(Text("OK"))
    )
    
    static let userSaveSuccess = AlertItem(
        title: Text("Profile Saved"),
        message: Text("Your profile information was successfully saved."),
        dismissButton: .default(Text("OK"))
    )
    
    static let invalidUserData = AlertItem(
        title: Text("Profile Error"),
        message: Text("There was an error saving or retrieving your profile."),
        dismissButton: .default(Text("OK"))
    )
}
