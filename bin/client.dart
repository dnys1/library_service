import 'package:library_service/library_service.dart';
import 'package:smithy/smithy.dart';

void main() async {
  final client = LibraryClient(
    baseUri: Uri.parse('http://localhost:8000'),
  );

  // Create a book, then check it out.
  await client
      .createBook(
        CreateBookInput(
          id: 'the-great-gatsby',
          title: 'The Great Gatsby',
          author: Author(
            name: 'F. Scott Fitzgerald',
          ),
          isbn: '9780743273565',
        ),
      )
      .result;
  final book = await client
      .checkoutBook(
        CheckoutBookInput(
          bookId: 'the-great-gatsby',
          libraryCard: '1234',
        ),
      )
      .result;
  print('Checked out: $book');

  // Try to check it out a second time
  try {
    await client
        .checkoutBook(
          CheckoutBookInput(
            bookId: 'the-great-gatsby',
            libraryCard: '1234',
          ),
        )
        .result;
    print('Checked out again?');
  } on BookAlreadyCheckedOutError {
    print('Book already checked out!');
  }

  // Try to check out a non-existent book
  try {
    await client
        .checkoutBook(
          CheckoutBookInput(
            bookId: 'some-book',
            libraryCard: '1234',
          ),
        )
        .result;
    print('Checked out non-existent book');
  } on UnknownSmithyHttpException catch (e) {
    print('Error checking out book: ${e.body}');
  }
}
