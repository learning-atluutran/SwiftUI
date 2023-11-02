//
//  ViewCommunicationApp.swift
//  ViewCommunication
//
//  Created by An Luutran on 11/2/23.
//

import SwiftUI

@main
struct ViewCommunicationApp: App {
    var body: some Scene {
        WindowGroup {
            //ContentView()
            var book = Book(title: "T-1", author: "A-1")
            NewBookView()
            DetailView(book: book)
                .onAppear() {
                    book.title = "T-NEW"
                }
        }
    }
}
