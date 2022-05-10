//
//  QuoteRepository.swift
//  FamousQuotes
//
//  Created by David Cormell on 10/05/2022.
//

import Foundation
import FirebaseFirestore
import FirebaseFirestoreSwift

class QuoteRepository {
    let store = Firestore.firestore()
    
    func getAllQuotes(completion: @escaping ([Quote]) -> Void) {
        store.collection("quotes").getDocuments() { (querySnapshot, error) in
            if let error = error {
                print("Error downloading quotes: \(error)")
            } else {
                var retrievedQuotes: [Quote] = []
                for document in querySnapshot!.documents {
                    do {
                        let quote = try document.data(as: Quote.self)
                        retrievedQuotes.append(quote)
                    } catch {
                        print("Unable to deserialize: \(document.data())")
                    }
                }
                completion(retrievedQuotes)
            }
                
        }
    }
}
