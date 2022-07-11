//
//  ErrorMessage.swift
//  GitFollowApp
//
//  Created by Temur Juraev on 10.07.2022.
//

import Foundation


enum GFError: String, Error {
    case invalidUsername        = "This username created an invalid request. Please try again"
    case inableToComplete       = "Unable to completed your request. Please check your internet connection"
    case invalidResponse        = "Invalid response from the server. Please try again"
    case invalidData            = "The Data received from the server was invalid. Please try again."
}
