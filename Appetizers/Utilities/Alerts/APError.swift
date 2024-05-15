import Foundation

// Define an enumeration to represent various API errors, conforming to the Error protocol
enum APError: Error {
    case invalidURL          // Error case for an invalid URL
    case invalidResponse     // Error case for an invalid response from the server
    case invalidData         // Error case for invalid or corrupted data
    case unableToComplete    // Error case for a request that was unable to complete
}
