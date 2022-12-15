// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library library_service.library_service.operation.checkout_book_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i6;
import 'package:library_service/src/library_service/common/serializers.dart'
    as _i5;
import 'package:library_service/src/library_service/model/book.dart' as _i3;
import 'package:library_service/src/library_service/model/book_already_checked_out_error.dart'
    as _i7;
import 'package:library_service/src/library_service/model/checkout_book_input.dart'
    as _i2;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i4;

class CheckoutBookOperation extends _i1.HttpOperation<
    _i2.CheckoutBookInputPayload, _i2.CheckoutBookInput, _i3.Book, _i3.Book> {
  CheckoutBookOperation({
    required this.baseUri,
    List<_i1.HttpRequestInterceptor> requestInterceptors = const [],
    List<_i1.HttpResponseInterceptor> responseInterceptors = const [],
  })  : _requestInterceptors = requestInterceptors,
        _responseInterceptors = responseInterceptors;

  @override
  late final List<
      _i1.HttpProtocol<_i2.CheckoutBookInputPayload, _i2.CheckoutBookInput,
          _i3.Book, _i3.Book>> protocols = [
    _i4.RestJson1Protocol(
      serializers: _i5.serializers,
      builderFactories: _i5.builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithNoHeader('Content-Length'),
            const _i1.WithNoHeader('Content-Type'),
          ] +
          _requestInterceptors,
      responseInterceptors:
          <_i1.HttpResponseInterceptor>[] + _responseInterceptors,
    )
  ];

  @override
  final Uri baseUri;

  final List<_i1.HttpRequestInterceptor> _requestInterceptors;

  final List<_i1.HttpResponseInterceptor> _responseInterceptors;

  @override
  _i1.HttpRequest buildRequest(_i2.CheckoutBookInput input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/checkout/{bookId}';
        if (input.libraryCard.isNotEmpty) {
          b.headers['X-Library-Card'] = input.libraryCard;
        }
      });
  @override
  int successCode([_i3.Book? output]) => 200;
  @override
  _i3.Book buildOutput(
    _i3.Book payload,
    _i6.AWSBaseHttpResponse response,
  ) =>
      _i3.Book.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'org.publiclibrary',
            shape: 'BookAlreadyCheckedOutError',
          ),
          _i1.ErrorKind.client,
          _i7.BookAlreadyCheckedOutError,
          statusCode: 409,
          builder: _i7.BookAlreadyCheckedOutError.fromResponse,
        )
      ];
  @override
  String get runtimeTypeName => 'CheckoutBook';
}
