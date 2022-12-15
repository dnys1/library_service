// GENERATED CODE - DO NOT MODIFY BY HAND

part of library_service.library_service.model.book;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Book extends Book {
  @override
  final _i2.Author author;
  @override
  final DateTime? datePublished;
  @override
  final String id;
  @override
  final String? isbn;
  @override
  final String title;

  factory _$Book([void Function(BookBuilder)? updates]) =>
      (new BookBuilder()..update(updates))._build();

  _$Book._(
      {required this.author,
      this.datePublished,
      required this.id,
      this.isbn,
      required this.title})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(author, r'Book', 'author');
    BuiltValueNullFieldError.checkNotNull(id, r'Book', 'id');
    BuiltValueNullFieldError.checkNotNull(title, r'Book', 'title');
  }

  @override
  Book rebuild(void Function(BookBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BookBuilder toBuilder() => new BookBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Book &&
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

class BookBuilder implements Builder<Book, BookBuilder> {
  _$Book? _$v;

  _i2.AuthorBuilder? _author;
  _i2.AuthorBuilder get author => _$this._author ??= new _i2.AuthorBuilder();
  set author(_i2.AuthorBuilder? author) => _$this._author = author;

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

  BookBuilder() {
    Book._init(this);
  }

  BookBuilder get _$this {
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
  void replace(Book other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Book;
  }

  @override
  void update(void Function(BookBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Book build() => _build();

  _$Book _build() {
    _$Book _$result;
    try {
      _$result = _$v ??
          new _$Book._(
              author: author.build(),
              datePublished: datePublished,
              id: BuiltValueNullFieldError.checkNotNull(id, r'Book', 'id'),
              isbn: isbn,
              title: BuiltValueNullFieldError.checkNotNull(
                  title, r'Book', 'title'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'author';
        author.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Book', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
