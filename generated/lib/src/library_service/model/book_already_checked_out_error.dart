// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library library_service.library_service.model.book_already_checked_out_error; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'book_already_checked_out_error.g.dart';

abstract class BookAlreadyCheckedOutError
    with _i1.AWSEquatable<BookAlreadyCheckedOutError>
    implements
        Built<BookAlreadyCheckedOutError, BookAlreadyCheckedOutErrorBuilder>,
        _i2.EmptyPayload,
        _i2.SmithyHttpException {
  factory BookAlreadyCheckedOutError() {
    return _$BookAlreadyCheckedOutError._();
  }

  factory BookAlreadyCheckedOutError.build(
          [void Function(BookAlreadyCheckedOutErrorBuilder) updates]) =
      _$BookAlreadyCheckedOutError;

  const BookAlreadyCheckedOutError._();

  /// Constructs a [BookAlreadyCheckedOutError] from a [payload] and [response].
  factory BookAlreadyCheckedOutError.fromResponse(
    BookAlreadyCheckedOutError payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer> serializers = [
    BookAlreadyCheckedOutErrorRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(BookAlreadyCheckedOutErrorBuilder b) {}
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'org.publiclibrary',
        shape: 'BookAlreadyCheckedOutError',
      );
  @override
  String? get message => null;
  @override
  _i2.RetryConfig? get retryConfig => null;
  @override
  @BuiltValueField(compare: false)
  int get statusCode => 409;
  @override
  @BuiltValueField(compare: false)
  Map<String, String>? get headers;
  @override
  Exception? get underlyingException => null;
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('BookAlreadyCheckedOutError');
    return helper.toString();
  }
}

class BookAlreadyCheckedOutErrorRestJson1Serializer
    extends _i2.StructuredSmithySerializer<BookAlreadyCheckedOutError> {
  const BookAlreadyCheckedOutErrorRestJson1Serializer()
      : super('BookAlreadyCheckedOutError');

  @override
  Iterable<Type> get types => const [
        BookAlreadyCheckedOutError,
        _$BookAlreadyCheckedOutError,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  BookAlreadyCheckedOutError deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return BookAlreadyCheckedOutErrorBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
