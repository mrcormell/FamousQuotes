//
//  Quote.swift
//  FamousQuotes
//
//  Created by David Cormell on 10/05/2022.
//

import Foundation

struct Quote: Codable, Identifiable {
    let author: String
    let content: String
    
    var id: String {
        "\(author)\(content)"
    }
}
