// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library library_service.library_service.common.serializers; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/serializer.dart';
import 'package:library_service/src/library_service/model/author.dart' as _i3;
import 'package:library_service/src/library_service/model/book.dart' as _i4;
import 'package:library_service/src/library_service/model/book_already_checked_out_error.dart'
    as _i5;
import 'package:library_service/src/library_service/model/checkout_book_input.dart'
    as _i2;
import 'package:library_service/src/library_service/model/create_book_input.dart'
    as _i6;
import 'package:smithy/smithy.dart' as _i1;

const List<_i1.SmithySerializer> serializers = [
  ..._i2.CheckoutBookInput.serializers,
  ..._i3.Author.serializers,
  ..._i4.Book.serializers,
  ..._i5.BookAlreadyCheckedOutError.serializers,
  ..._i6.CreateBookInput.serializers,
];
final Map<FullType, Function> builderFactories = {};
