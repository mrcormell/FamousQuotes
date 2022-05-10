//
//  FamousQuotesApp.swift
//  FamousQuotes
//
//  Created by David Cormell on 10/05/2022.
//

import SwiftUI
import Firebase

@main
struct FamousQuotesApp: App {
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            QuotesView()
        }
    }
}
