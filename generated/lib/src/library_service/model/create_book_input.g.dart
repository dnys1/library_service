// GENERATED CODE - DO NOT MODIFY BY HAND

part of library_service.library_service.model.create_book_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateBookInput extends CreateBookInput {
  @override
  final _i3.Author author;
  @override
  final DateTime? datePublished;
  @override
  final String id;
  @override
  final String? isbn;
  @override
  final String title;

  factory _$CreateBookInput([void Function(CreateBookInputBuilder)? updates]) =>
      (new CreateBookInputBuilder()..update(updates))._build();

  _$CreateBookInput._(
      {required this.author,
      this.datePublished,
      required this.id,
      this.isbn,
      required this.title})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(author, r'CreateBookInput', 'author');
    BuiltValueNullFieldError.checkNotNull(id, r'CreateBookInput', 'id');
    BuiltValueNullFieldError.checkNotNull(title, r'CreateBookInput', 'title');
  }

  @override
  CreateBookInput rebuild(void Function(CreateBookInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateBookInputBuilder toBuilder() =>
      new CreateBookInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateBookInput &&
        author == other.author &&
        datePublished == other.datePublished &&
        id == other.id &&
        isbn == other.isbn &&
        title == other.title;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, author.hashCode), datePublished.hashCode),
                id.hashCode),
            isbn.hashCode),
        title.hashCode));
  }
}

class CreateBookInputBuilder
    implements Builder<CreateBookInput, CreateBookInputBuilder> {
  _$CreateBookInput? _$v;

  _i3.AuthorBuilder? _author;
  _i3.AuthorBuilder get author => _$this._author ??= new _i3.AuthorBuilder();
  set author(_i3.AuthorBuilder? author) => _$this._author = author;

  DateTime? _datePublished;
  DateTime? get datePublished => _$this._datePublished;
  set datePublished(DateTime? datePublished) =>
      _$this._datePublished = datePublished;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _isbn;
  String? get isbn => _$this._isbn;
  set isbn(String? isbn) => _$this._isbn = isbn;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  CreateBookInputBuilder() {
    CreateBookInput._init(this);
  }

  CreateBookInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _author = $v.author.toBuilder();
      _datePublished = $v.datePublished;
      _id = $v.id;
      _isbn = $v.isbn;
      _title = $v.title;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateBookInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateBookInput;
  }

  @override
  void update(void Function(CreateBookInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateBookInput build() => _build();

  _$CreateBookInput _build() {
    _$CreateBookInput _$result;
    try {
      _$result = _$v ??
          new _$CreateBookInput._(
              author: author.build(),
              datePublished: datePublished,
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'CreateBookInput', 'id'),
              isbn: isbn,
              title: BuiltValueNullFieldError.checkNotNull(
                  title, r'CreateBookInput', 'title'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'author';
        author.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateBookInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$CreateBookInputPayload extends CreateBookInputPayload {
  @override
  final _i3.Author author;
  @override
  final DateTime? datePublished;
  @override
  final String? isbn;
  @override
  final String title;

  factory _$CreateBookInputPayload(
          [void Function(CreateBookInputPayloadBuilder)? updates]) =>
      (new CreateBookInputPayloadBuilder()..update(updates))._build();

  _$CreateBookInputPayload._(
      {required this.author,
      this.datePublished,
      this.isbn,
      required this.title})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        author, r'CreateBookInputPayload', 'author');
    BuiltValueNullFieldError.checkNotNull(
        title, r'CreateBookInputPayload', 'title');
  }

  @override
  CreateBookInputPayload rebuild(
          void Function(CreateBookInputPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateBookInputPayloadBuilder toBuilder() =>
      new CreateBookInputPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateBookInputPayload &&
        author == other.author &&
        datePublished == other.datePublished &&
        isbn == other.isbn &&
        title == other.title;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, author.hashCode), datePublished.hashCode),
            isbn.hashCode),
        title.hashCode));
  }
}

class CreateBookInputPayloadBuilder
    implements Builder<CreateBookInputPayload, CreateBookInputPayloadBuilder> {
  _$CreateBookInputPayload? _$v;

  _i3.AuthorBuilder? _author;
  _i3.AuthorBuilder get author => _$this._author ??= new _i3.AuthorBuilder();
  set author(_i3.AuthorBuilder? author) => _$this._author = author;

  DateTime? _datePublished;
  DateTime? get datePublished => _$this._datePublished;
  set datePublished(DateTime? datePublished) =>
      _$this._datePublished = datePublished;

  String? _isbn;
  String? get isbn => _$this._isbn;
  set isbn(String? isbn) => _$this._isbn = isbn;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  CreateBookInputPayloadBuilder() {
    CreateBookInputPayload._init(this);
  }

  CreateBookInputPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _author = $v.author.toBuilder();
      _datePublished = $v.datePublished;
      _isbn = $v.isbn;
      _title = $v.title;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateBookInputPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateBookInputPayload;
  }

  @override
  void update(void Function(CreateBookInputPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateBookInputPayload build() => _build();

  _$CreateBookInputPayload _build() {
    _$CreateBookInputPayload _$result;
    try {
      _$result = _$v ??
          new _$CreateBookInputPayload._(
              author: author.build(),
              datePublished: datePublished,
              isbn: isbn,
              title: BuiltValueNullFieldError.checkNotNull(
                  title, r'CreateBookInputPayload', 'title'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'author';
        author.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateBookInputPayload', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
