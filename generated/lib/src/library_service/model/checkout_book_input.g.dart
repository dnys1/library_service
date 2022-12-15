// GENERATED CODE - DO NOT MODIFY BY HAND

part of library_service.library_service.model.checkout_book_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CheckoutBookInput extends CheckoutBookInput {
  @override
  final String bookId;
  @override
  final String libraryCard;

  factory _$CheckoutBookInput(
          [void Function(CheckoutBookInputBuilder)? updates]) =>
      (new CheckoutBookInputBuilder()..update(updates))._build();

  _$CheckoutBookInput._({required this.bookId, required this.libraryCard})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bookId, r'CheckoutBookInput', 'bookId');
    BuiltValueNullFieldError.checkNotNull(
        libraryCard, r'CheckoutBookInput', 'libraryCard');
  }

  @override
  CheckoutBookInput rebuild(void Function(CheckoutBookInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CheckoutBookInputBuilder toBuilder() =>
      new CheckoutBookInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CheckoutBookInput &&
        bookId == other.bookId &&
        libraryCard == other.libraryCard;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, bookId.hashCode), libraryCard.hashCode));
  }
}

class CheckoutBookInputBuilder
    implements Builder<CheckoutBookInput, CheckoutBookInputBuilder> {
  _$CheckoutBookInput? _$v;

  String? _bookId;
  String? get bookId => _$this._bookId;
  set bookId(String? bookId) => _$this._bookId = bookId;

  String? _libraryCard;
  String? get libraryCard => _$this._libraryCard;
  set libraryCard(String? libraryCard) => _$this._libraryCard = libraryCard;

  CheckoutBookInputBuilder() {
    CheckoutBookInput._init(this);
  }

  CheckoutBookInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bookId = $v.bookId;
      _libraryCard = $v.libraryCard;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CheckoutBookInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CheckoutBookInput;
  }

  @override
  void update(void Function(CheckoutBookInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CheckoutBookInput build() => _build();

  _$CheckoutBookInput _build() {
    final _$result = _$v ??
        new _$CheckoutBookInput._(
            bookId: BuiltValueNullFieldError.checkNotNull(
                bookId, r'CheckoutBookInput', 'bookId'),
            libraryCard: BuiltValueNullFieldError.checkNotNull(
                libraryCard, r'CheckoutBookInput', 'libraryCard'));
    replace(_$result);
    return _$result;
  }
}

class _$CheckoutBookInputPayload extends CheckoutBookInputPayload {
  factory _$CheckoutBookInputPayload(
          [void Function(CheckoutBookInputPayloadBuilder)? updates]) =>
      (new CheckoutBookInputPayloadBuilder()..update(updates))._build();

  _$CheckoutBookInputPayload._() : super._();

  @override
  CheckoutBookInputPayload rebuild(
          void Function(CheckoutBookInputPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CheckoutBookInputPayloadBuilder toBuilder() =>
      new CheckoutBookInputPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CheckoutBookInputPayload;
  }

  @override
  int get hashCode {
    return 708844298;
  }
}

class CheckoutBookInputPayloadBuilder
    implements
        Builder<CheckoutBookInputPayload, CheckoutBookInputPayloadBuilder> {
  _$CheckoutBookInputPayload? _$v;

  CheckoutBookInputPayloadBuilder() {
    CheckoutBookInputPayload._init(this);
  }

  @override
  void replace(CheckoutBookInputPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CheckoutBookInputPayload;
  }

  @override
  void update(void Function(CheckoutBookInputPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CheckoutBookInputPayload build() => _build();

  _$CheckoutBookInputPayload _build() {
    final _$result = _$v ?? new _$CheckoutBookInputPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
