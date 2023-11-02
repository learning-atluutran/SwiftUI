//
//  BookView.swift
//  ViewCommunication
//
//  Created by An Luutran on 11/2/23.
//

import Foundation
import SwiftUI

class Book: ObservableObject {
    @Published var title: String
    @Published var author: String

    init(title: String, author: String) {
        self.title = title
        self.author = author
    }
}

struct DetailView: View {
    @ObservedObject var book: Book

    var body: some View {
        VStack {
            Text(book.title)
            Text(book.author)
        }
    }
}

struct NewBookView: View {
    @StateObject var book = Book(title: "Title-1", author: "Author-1")

    var body: some View {
        VStack {
            TextField("Title", text: $book.title)
            TextField("Author", text: $book.author)
        }
    }
}
