//
//  QuotesViewModel.swift
//  FamousQuotes
//
//  Created by David Cormell on 10/05/2022.
//

import Foundation

class QuotesViewModel: ObservableObject {
    @Published var quotes: [Quote] = []
    let repo = QuoteRepository()
    
    func getAllQuotes() {
        repo.getAllQuotes(completion: { (quotesReturned) in
            self.quotes = quotesReturned
        })
    }
    
}
