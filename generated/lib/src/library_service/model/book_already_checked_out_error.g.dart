// GENERATED CODE - DO NOT MODIFY BY HAND

part of library_service.library_service.model.book_already_checked_out_error;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BookAlreadyCheckedOutError extends BookAlreadyCheckedOutError {
  @override
  final Map<String, String>? headers;

  factory _$BookAlreadyCheckedOutError(
          [void Function(BookAlreadyCheckedOutErrorBuilder)? updates]) =>
      (new BookAlreadyCheckedOutErrorBuilder()..update(updates))._build();

  _$BookAlreadyCheckedOutError._({this.headers}) : super._();

  @override
  BookAlreadyCheckedOutError rebuild(
          void Function(BookAlreadyCheckedOutErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BookAlreadyCheckedOutErrorBuilder toBuilder() =>
      new BookAlreadyCheckedOutErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BookAlreadyCheckedOutError;
  }

  @override
  int get hashCode {
    return 504640639;
  }
}

class BookAlreadyCheckedOutErrorBuilder
    implements
        Builder<BookAlreadyCheckedOutError, BookAlreadyCheckedOutErrorBuilder> {
  _$BookAlreadyCheckedOutError? _$v;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  BookAlreadyCheckedOutErrorBuilder() {
    BookAlreadyCheckedOutError._init(this);
  }

  BookAlreadyCheckedOutErrorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BookAlreadyCheckedOutError other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BookAlreadyCheckedOutError;
  }

  @override
  void update(void Function(BookAlreadyCheckedOutErrorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BookAlreadyCheckedOutError build() => _build();

  _$BookAlreadyCheckedOutError _build() {
    final _$result =
        _$v ?? new _$BookAlreadyCheckedOutError._(headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
