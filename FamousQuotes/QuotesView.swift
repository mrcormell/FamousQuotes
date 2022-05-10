//
//  ContentView.swift
//  FamousQuotes
//
//  Created by David Cormell on 10/05/2022.
//

import SwiftUI

struct QuotesView: View {
    @StateObject var vm = QuotesViewModel()
    
    var body: some View {
        List {
            ForEach(vm.quotes) { quote in
                Text("\(quote.content) by \(quote.author)")
            }
        }
        .onAppear(perform: {
            vm.getAllQuotes()
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        QuotesView()
    }
}
