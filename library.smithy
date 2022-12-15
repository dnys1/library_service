namespace org.publiclibrary

use aws.protocols#restJson1

@restJson1
service LibraryService {
  version: "1.0",
  operations: [CreateBook, CheckoutBook]
}

@http(method: "POST", uri: "/books/{id}")
operation CreateBook {
  input: CreateBookInput
}

structure CreateBookInput {
  @httpLabel
  @required
  id: String,

  @required
  title: String,
    
  @required
  author: Author,
    
  isbn: String,
  datePublished: Timestamp
}

structure Book {
  @required
  id: String,

  @required
  title: String,
    
  @required
  author: Author,
    
  isbn: String,
  datePublished: Timestamp
}

structure Author {
  id: String,
  name: String
}

@http(method: "POST", uri: "/checkout/{bookId}")
operation CheckoutBook {
  input: CheckoutBookInput,
  output: Book,
  errors: [BookAlreadyCheckedOutError]
}

structure CheckoutBookInput {
  @httpLabel
  @required
  bookId: String,
  
  @httpHeader("X-Library-Card")
  @required
  libraryCard: String
}

@httpError(409)
@error("client")
structure BookAlreadyCheckedOutError {}
