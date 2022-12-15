// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library library_service.library_service.model.checkout_book_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'checkout_book_input.g.dart';

abstract class CheckoutBookInput
    with
        _i1.HttpInput<CheckoutBookInputPayload>,
        _i2.AWSEquatable<CheckoutBookInput>
    implements
        Built<CheckoutBookInput, CheckoutBookInputBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<CheckoutBookInputPayload> {
  factory CheckoutBookInput({
    required String bookId,
    required String libraryCard,
  }) {
    return _$CheckoutBookInput._(
      bookId: bookId,
      libraryCard: libraryCard,
    );
  }

  factory CheckoutBookInput.build(
      [void Function(CheckoutBookInputBuilder) updates]) = _$CheckoutBookInput;

  const CheckoutBookInput._();

  factory CheckoutBookInput.fromRequest(
    CheckoutBookInputPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      CheckoutBookInput.build((b) {
        if (request.headers['X-Library-Card'] != null) {
          b.libraryCard = request.headers['X-Library-Card']!;
        }
        if (labels['bookId'] != null) {
          b.bookId = labels['bookId']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    CheckoutBookInputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CheckoutBookInputBuilder b) {}
  String get bookId;
  String get libraryCard;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'bookId':
        return bookId;
    }
    throw _i1.MissingLabelException(
      this,
      key,
    );
  }

  @override
  CheckoutBookInputPayload getPayload() => CheckoutBookInputPayload();
  @override
  List<Object?> get props => [
        bookId,
        libraryCard,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CheckoutBookInput');
    helper.add(
      'bookId',
      bookId,
    );
    helper.add(
      'libraryCard',
      libraryCard,
    );
    return helper.toString();
  }
}

@_i3.internal
abstract class CheckoutBookInputPayload
    with _i2.AWSEquatable<CheckoutBookInputPayload>
    implements
        Built<CheckoutBookInputPayload, CheckoutBookInputPayloadBuilder>,
        _i1.EmptyPayload {
  factory CheckoutBookInputPayload(
          [void Function(CheckoutBookInputPayloadBuilder) updates]) =
      _$CheckoutBookInputPayload;

  const CheckoutBookInputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CheckoutBookInputPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CheckoutBookInputPayload');
    return helper.toString();
  }
}

class CheckoutBookInputRestJson1Serializer
    extends _i1.StructuredSmithySerializer<CheckoutBookInputPayload> {
  const CheckoutBookInputRestJson1Serializer() : super('CheckoutBookInput');

  @override
  Iterable<Type> get types => const [
        CheckoutBookInput,
        _$CheckoutBookInput,
        CheckoutBookInputPayload,
        _$CheckoutBookInputPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  CheckoutBookInputPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return CheckoutBookInputPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
