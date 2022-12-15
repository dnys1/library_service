import 'dart:convert';

import 'package:library_service/library_service.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart';
import 'package:smithy/smithy.dart';

void main() async {
  final server = LibraryServer();
  final handler =
      const Pipeline().addMiddleware(logRequests()).addHandler(server);
  await serve(handler, 'localhost', 8000);
  print('Serving on localhost:8000');
}

class LibraryServer extends LibraryServerBase {
  final _library = <String, Book>{};
  final _checkedOut = <String>{};

  @override
  Future<Book> checkoutBook(CheckoutBookInput input, Context context) async {
    final bookId = input.bookId;
    final book = _library[bookId];
    if (book == null) {
      throw Exception('No book found for $bookId');
    }
    if (_checkedOut.contains(bookId)) {
      throw BookAlreadyCheckedOutError();
    }
    _checkedOut.add(bookId);
    return book;
  }

  @override
  Future<Unit> createBook(CreateBookInput input, Context context) async {
    final book = Book(
      id: input.id,
      author: input.author,
      title: input.title,
      isbn: input.isbn,
      datePublished: input.datePublished,
    );
    _library[book.id] = book;
    return const Unit();
  }

  @override
  Future<Response> handleUncaughtError(Object error, StackTrace st) async {
    return Response.badRequest(
      body: jsonEncode({
        'error': error.toString(),
      }),
    );
  }
}
