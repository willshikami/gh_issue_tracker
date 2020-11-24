// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AppState> _$appStateSerializer = new _$AppStateSerializer();

class _$AppStateSerializer implements StructuredSerializer<AppState> {
  @override
  final Iterable<Type> types = const [AppState, _$AppState];
  @override
  final String wireName = 'AppState';

  @override
  Iterable<Object> serialize(Serializers serializers, AppState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'githubIssuesListState',
      serializers.serialize(object.githubIssuesListState,
          specifiedType: const FullType(GithubIssuesListState)),
      'githubIssues',
      serializers.serialize(object.githubIssues,
          specifiedType: const FullType(GithubIssuesState)),
    ];

    return result;
  }

  @override
  AppState deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AppStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'githubIssuesListState':
          result.githubIssuesListState = serializers.deserialize(value,
                  specifiedType: const FullType(GithubIssuesListState))
              as GithubIssuesListState;
          break;
        case 'githubIssues':
          result.githubIssues = serializers.deserialize(value,
                  specifiedType: const FullType(GithubIssuesState))
              as GithubIssuesState;
          break;
      }
    }

    return result.build();
  }
}

class _$AppState extends AppState {
  @override
  final GithubIssuesListState githubIssuesListState;
  @override
  final GithubIssuesState githubIssues;

  factory _$AppState([void Function(AppStateBuilder) updates]) =>
      (new AppStateBuilder()..update(updates)).build();

  _$AppState._({this.githubIssuesListState, this.githubIssues}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        githubIssuesListState, 'AppState', 'githubIssuesListState');
    BuiltValueNullFieldError.checkNotNull(
        githubIssues, 'AppState', 'githubIssues');
  }

  @override
  AppState rebuild(void Function(AppStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppStateBuilder toBuilder() => new AppStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppState &&
        githubIssuesListState == other.githubIssuesListState &&
        githubIssues == other.githubIssues;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc(0, githubIssuesListState.hashCode), githubIssues.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AppState')
          ..add('githubIssuesListState', githubIssuesListState)
          ..add('githubIssues', githubIssues))
        .toString();
  }
}

class AppStateBuilder implements Builder<AppState, AppStateBuilder> {
  _$AppState _$v;

  GithubIssuesListState _githubIssuesListState;
  GithubIssuesListState get githubIssuesListState =>
      _$this._githubIssuesListState;
  set githubIssuesListState(GithubIssuesListState githubIssuesListState) =>
      _$this._githubIssuesListState = githubIssuesListState;

  GithubIssuesState _githubIssues;
  GithubIssuesState get githubIssues => _$this._githubIssues;
  set githubIssues(GithubIssuesState githubIssues) =>
      _$this._githubIssues = githubIssues;

  AppStateBuilder();

  AppStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _githubIssuesListState = $v.githubIssuesListState;
      _githubIssues = $v.githubIssues;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AppState;
  }

  @override
  void update(void Function(AppStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AppState build() {
    final _$result = _$v ??
        new _$AppState._(
            githubIssuesListState: BuiltValueNullFieldError.checkNotNull(
                githubIssuesListState, 'AppState', 'githubIssuesListState'),
            githubIssues: BuiltValueNullFieldError.checkNotNull(
                githubIssues, 'AppState', 'githubIssues'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
