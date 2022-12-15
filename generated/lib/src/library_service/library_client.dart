// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library library_service.library_service.library_client; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:library_service/src/library_service/model/book.dart' as _i3;
import 'package:library_service/src/library_service/model/checkout_book_input.dart'
    as _i4;
import 'package:library_service/src/library_service/model/create_book_input.dart'
    as _i6;
import 'package:library_service/src/library_service/operation/checkout_book_operation.dart'
    as _i5;
import 'package:library_service/src/library_service/operation/create_book_operation.dart'
    as _i7;
import 'package:smithy/smithy.dart' as _i2;

class LibraryClient {
  const LibraryClient({
    _i1.AWSHttpClient? client,
    required Uri baseUri,
    List<_i2.HttpRequestInterceptor> requestInterceptors = const [],
    List<_i2.HttpResponseInterceptor> responseInterceptors = const [],
  })  : _client = client,
        _baseUri = baseUri,
        _requestInterceptors = requestInterceptors,
        _responseInterceptors = responseInterceptors;

  final _i1.AWSHttpClient? _client;

  final Uri _baseUri;

  final List<_i2.HttpRequestInterceptor> _requestInterceptors;

  final List<_i2.HttpResponseInterceptor> _responseInterceptors;

  _i2.SmithyOperation<_i3.Book> checkoutBook(
    _i4.CheckoutBookInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i5.CheckoutBookOperation(
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<void> createBook(
    _i6.CreateBookInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i7.CreateBookOperation(
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }
}
