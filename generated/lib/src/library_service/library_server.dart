// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library library_service.library_service.library_client; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i4;

import 'package:built_value/serializer.dart';
import 'package:library_service/src/library_service/common/serializers.dart'
    as _i3;
import 'package:library_service/src/library_service/model/book.dart' as _i5;
import 'package:library_service/src/library_service/model/book_already_checked_out_error.dart'
    as _i9;
import 'package:library_service/src/library_service/model/checkout_book_input.dart'
    as _i6;
import 'package:library_service/src/library_service/model/create_book_input.dart'
    as _i7;
import 'package:shelf/shelf.dart' as _i8;
import 'package:shelf_router/shelf_router.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i2;

abstract class LibraryServerBase extends _i1.HttpServerBase {
  @override
  late final _i1.HttpProtocol protocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final Router _router = () {
    final service = _LibraryServer(this);
    final router = Router();
    router.add(
      'POST',
      r'/checkout/<bookId>',
      service.checkoutBook,
    );
    router.add(
      'POST',
      r'/books/<id>',
      service.createBook,
    );
    return router;
  }();

  _i4.Future<_i5.Book> checkoutBook(
    _i6.CheckoutBookInput input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> createBook(
    _i7.CreateBookInput input,
    _i1.Context context,
  );
  _i4.Future<_i8.Response> call(_i8.Request request) => _router(request);
}

class _LibraryServer extends _i1.HttpServer<LibraryServerBase> {
  _LibraryServer(this.service);

  @override
  final LibraryServerBase service;

  late final _i1.HttpProtocol<
      _i6.CheckoutBookInputPayload,
      _i6.CheckoutBookInput,
      _i5.Book,
      _i5.Book> _checkoutBookProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<_i7.CreateBookInputPayload, _i7.CreateBookInput,
      _i1.Unit, _i1.Unit> _createBookProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  _i4.Future<_i8.Response> checkoutBook(
    _i8.Request request,
    String bookId,
  ) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _checkoutBookProtocol.contentType;
    try {
      final payload = (await _checkoutBookProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType(_i6.CheckoutBookInputPayload),
      ) as _i6.CheckoutBookInputPayload);
      final input = _i6.CheckoutBookInput.fromRequest(
        payload,
        awsRequest,
        labels: {'bookId': bookId},
      );
      final output = await service.checkoutBook(
        input,
        context,
      );
      const statusCode = 200;
      final body = _checkoutBookProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i5.Book,
          [FullType(_i5.Book)],
        ),
      );
      return _i8.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on _i9.BookAlreadyCheckedOutError catch (e) {
      context.response.headers['X-Amzn-Errortype'] =
          'BookAlreadyCheckedOutError';
      final body = _checkoutBookProtocol.serialize(
        e,
        specifiedType: const FullType(
          _i9.BookAlreadyCheckedOutError,
          [FullType(_i9.BookAlreadyCheckedOutError)],
        ),
      );
      const statusCode = 409;
      return _i8.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }

  _i4.Future<_i8.Response> createBook(
    _i8.Request request,
    String id,
  ) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] = _createBookProtocol.contentType;
    try {
      final payload = (await _createBookProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType(_i7.CreateBookInputPayload),
      ) as _i7.CreateBookInputPayload);
      final input = _i7.CreateBookInput.fromRequest(
        payload,
        awsRequest,
        labels: {'id': id},
      );
      final output = await service.createBook(
        input,
        context,
      );
      const statusCode = 200;
      final body = _createBookProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i1.Unit,
          [FullType(_i1.Unit)],
        ),
      );
      return _i8.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }
}
