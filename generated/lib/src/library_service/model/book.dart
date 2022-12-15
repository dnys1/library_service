// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library library_service.library_service.model.book; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:library_service/src/library_service/model/author.dart' as _i2;
import 'package:smithy/smithy.dart' as _i3;

part 'book.g.dart';

abstract class Book
    with _i1.AWSEquatable<Book>
    implements Built<Book, BookBuilder> {
  factory Book({
    required _i2.Author author,
    DateTime? datePublished,
    required String id,
    String? isbn,
    required String title,
  }) {
    return _$Book._(
      author: author,
      datePublished: datePublished,
      id: id,
      isbn: isbn,
      title: title,
    );
  }

  factory Book.build([void Function(BookBuilder) updates]) = _$Book;

  const Book._();

  /// Constructs a [Book] from a [payload] and [response].
  factory Book.fromResponse(
    Book payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    BookRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(BookBuilder b) {}
  _i2.Author get author;
  DateTime? get datePublished;
  String get id;
  String? get isbn;
  String get title;
  @override
  List<Object?> get props => [
        author,
        datePublished,
        id,
        isbn,
        title,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Book');
    helper.add(
      'author',
      author,
    );
    helper.add(
      'datePublished',
      datePublished,
    );
    helper.add(
      'id',
      id,
    );
    helper.add(
      'isbn',
      isbn,
    );
    helper.add(
      'title',
      title,
    );
    return helper.toString();
  }
}

class BookRestJson1Serializer extends _i3.StructuredSmithySerializer<Book> {
  const BookRestJson1Serializer() : super('Book');

  @override
  Iterable<Type> get types => const [
        Book,
        _$Book,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  Book deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BookBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'author':
          result.author.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.Author),
          ) as _i2.Author));
          break;
        case 'datePublished':
          if (value != null) {
            result.datePublished = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'id':
          result.id = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'isbn':
          if (value != null) {
            result.isbn = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'title':
          result.title = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as Book);
    final result = <Object?>[
      'author',
      serializers.serialize(
        payload.author,
        specifiedType: const FullType(_i2.Author),
      ),
      'id',
      serializers.serialize(
        payload.id,
        specifiedType: const FullType(String),
      ),
      'title',
      serializers.serialize(
        payload.title,
        specifiedType: const FullType(String),
      ),
    ];
    if (payload.datePublished != null) {
      result
        ..add('datePublished')
        ..add(serializers.serialize(
          payload.datePublished!,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (payload.isbn != null) {
      result
        ..add('isbn')
        ..add(serializers.serialize(
          payload.isbn!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
