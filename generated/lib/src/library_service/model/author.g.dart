// GENERATED CODE - DO NOT MODIFY BY HAND

part of library_service.library_service.model.author;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Author extends Author {
  @override
  final String? id;
  @override
  final String? name;

  factory _$Author([void Function(AuthorBuilder)? updates]) =>
      (new AuthorBuilder()..update(updates))._build();

  _$Author._({this.id, this.name}) : super._();

  @override
  Author rebuild(void Function(AuthorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthorBuilder toBuilder() => new AuthorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Author && id == other.id && name == other.name;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, id.hashCode), name.hashCode));
  }
}

class AuthorBuilder implements Builder<Author, AuthorBuilder> {
  _$Author? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  AuthorBuilder() {
    Author._init(this);
  }

  AuthorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Author other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Author;
  }

  @override
  void update(void Function(AuthorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Author build() => _build();

  _$Author _build() {
    final _$result = _$v ?? new _$Author._(id: id, name: name);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
