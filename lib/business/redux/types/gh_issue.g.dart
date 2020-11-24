// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gh_issue.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GitHubIssue> _$gitHubIssueSerializer = new _$GitHubIssueSerializer();

class _$GitHubIssueSerializer implements StructuredSerializer<GitHubIssue> {
  @override
  final Iterable<Type> types = const [GitHubIssue, _$GitHubIssue];
  @override
  final String wireName = 'GitHubIssue';

  @override
  Iterable<Object> serialize(Serializers serializers, GitHubIssue object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.issueUrl;
    if (value != null) {
      result
        ..add('issueUrl')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.labels;
    if (value != null) {
      result
        ..add('labels')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.issueName;
    if (value != null) {
      result
        ..add('issueName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.issueNumber;
    if (value != null) {
      result
        ..add('issueNumber')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.commentsUrl;
    if (value != null) {
      result
        ..add('commentsUrl')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.issueUserName;
    if (value != null) {
      result
        ..add('issueUserName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.issueUserAvatar;
    if (value != null) {
      result
        ..add('issueUserAvatar')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.issueState;
    if (value != null) {
      result
        ..add('issueState')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.dateOpened;
    if (value != null) {
      result
        ..add('dateOpened')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.dateUpdated;
    if (value != null) {
      result
        ..add('dateUpdated')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.dateClosed;
    if (value != null) {
      result
        ..add('dateClosed')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.issueNumberOfComments;
    if (value != null) {
      result
        ..add('issueNumberOfComments')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GitHubIssue deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GitHubIssueBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'issueUrl':
          result.issueUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'labels':
          result.labels = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'issueName':
          result.issueName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'issueNumber':
          result.issueNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'commentsUrl':
          result.commentsUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'issueUserName':
          result.issueUserName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'issueUserAvatar':
          result.issueUserAvatar = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'issueState':
          result.issueState = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'dateOpened':
          result.dateOpened = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'dateUpdated':
          result.dateUpdated = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'dateClosed':
          result.dateClosed = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'issueNumberOfComments':
          result.issueNumberOfComments = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GitHubIssue extends GitHubIssue {
  @override
  final String issueUrl;
  @override
  final String labels;
  @override
  final String issueName;
  @override
  final String issueNumber;
  @override
  final String commentsUrl;
  @override
  final String issueUserName;
  @override
  final String issueUserAvatar;
  @override
  final String issueState;
  @override
  final String dateOpened;
  @override
  final String dateUpdated;
  @override
  final String dateClosed;
  @override
  final int issueNumberOfComments;

  factory _$GitHubIssue([void Function(GitHubIssueBuilder) updates]) =>
      (new GitHubIssueBuilder()..update(updates)).build();

  _$GitHubIssue._(
      {this.issueUrl,
      this.labels,
      this.issueName,
      this.issueNumber,
      this.commentsUrl,
      this.issueUserName,
      this.issueUserAvatar,
      this.issueState,
      this.dateOpened,
      this.dateUpdated,
      this.dateClosed,
      this.issueNumberOfComments})
      : super._();

  @override
  GitHubIssue rebuild(void Function(GitHubIssueBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GitHubIssueBuilder toBuilder() => new GitHubIssueBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GitHubIssue &&
        issueUrl == other.issueUrl &&
        labels == other.labels &&
        issueName == other.issueName &&
        issueNumber == other.issueNumber &&
        commentsUrl == other.commentsUrl &&
        issueUserName == other.issueUserName &&
        issueUserAvatar == other.issueUserAvatar &&
        issueState == other.issueState &&
        dateOpened == other.dateOpened &&
        dateUpdated == other.dateUpdated &&
        dateClosed == other.dateClosed &&
        issueNumberOfComments == other.issueNumberOfComments;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc($jc(0, issueUrl.hashCode),
                                                labels.hashCode),
                                            issueName.hashCode),
                                        issueNumber.hashCode),
                                    commentsUrl.hashCode),
                                issueUserName.hashCode),
                            issueUserAvatar.hashCode),
                        issueState.hashCode),
                    dateOpened.hashCode),
                dateUpdated.hashCode),
            dateClosed.hashCode),
        issueNumberOfComments.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GitHubIssue')
          ..add('issueUrl', issueUrl)
          ..add('labels', labels)
          ..add('issueName', issueName)
          ..add('issueNumber', issueNumber)
          ..add('commentsUrl', commentsUrl)
          ..add('issueUserName', issueUserName)
          ..add('issueUserAvatar', issueUserAvatar)
          ..add('issueState', issueState)
          ..add('dateOpened', dateOpened)
          ..add('dateUpdated', dateUpdated)
          ..add('dateClosed', dateClosed)
          ..add('issueNumberOfComments', issueNumberOfComments))
        .toString();
  }
}

class GitHubIssueBuilder implements Builder<GitHubIssue, GitHubIssueBuilder> {
  _$GitHubIssue _$v;

  String _issueUrl;
  String get issueUrl => _$this._issueUrl;
  set issueUrl(String issueUrl) => _$this._issueUrl = issueUrl;

  String _labels;
  String get labels => _$this._labels;
  set labels(String labels) => _$this._labels = labels;

  String _issueName;
  String get issueName => _$this._issueName;
  set issueName(String issueName) => _$this._issueName = issueName;

  String _issueNumber;
  String get issueNumber => _$this._issueNumber;
  set issueNumber(String issueNumber) => _$this._issueNumber = issueNumber;

  String _commentsUrl;
  String get commentsUrl => _$this._commentsUrl;
  set commentsUrl(String commentsUrl) => _$this._commentsUrl = commentsUrl;

  String _issueUserName;
  String get issueUserName => _$this._issueUserName;
  set issueUserName(String issueUserName) =>
      _$this._issueUserName = issueUserName;

  String _issueUserAvatar;
  String get issueUserAvatar => _$this._issueUserAvatar;
  set issueUserAvatar(String issueUserAvatar) =>
      _$this._issueUserAvatar = issueUserAvatar;

  String _issueState;
  String get issueState => _$this._issueState;
  set issueState(String issueState) => _$this._issueState = issueState;

  String _dateOpened;
  String get dateOpened => _$this._dateOpened;
  set dateOpened(String dateOpened) => _$this._dateOpened = dateOpened;

  String _dateUpdated;
  String get dateUpdated => _$this._dateUpdated;
  set dateUpdated(String dateUpdated) => _$this._dateUpdated = dateUpdated;

  String _dateClosed;
  String get dateClosed => _$this._dateClosed;
  set dateClosed(String dateClosed) => _$this._dateClosed = dateClosed;

  int _issueNumberOfComments;
  int get issueNumberOfComments => _$this._issueNumberOfComments;
  set issueNumberOfComments(int issueNumberOfComments) =>
      _$this._issueNumberOfComments = issueNumberOfComments;

  GitHubIssueBuilder();

  GitHubIssueBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _issueUrl = $v.issueUrl;
      _labels = $v.labels;
      _issueName = $v.issueName;
      _issueNumber = $v.issueNumber;
      _commentsUrl = $v.commentsUrl;
      _issueUserName = $v.issueUserName;
      _issueUserAvatar = $v.issueUserAvatar;
      _issueState = $v.issueState;
      _dateOpened = $v.dateOpened;
      _dateUpdated = $v.dateUpdated;
      _dateClosed = $v.dateClosed;
      _issueNumberOfComments = $v.issueNumberOfComments;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GitHubIssue other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GitHubIssue;
  }

  @override
  void update(void Function(GitHubIssueBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GitHubIssue build() {
    final _$result = _$v ??
        new _$GitHubIssue._(
            issueUrl: issueUrl,
            labels: labels,
            issueName: issueName,
            issueNumber: issueNumber,
            commentsUrl: commentsUrl,
            issueUserName: issueUserName,
            issueUserAvatar: issueUserAvatar,
            issueState: issueState,
            dateOpened: dateOpened,
            dateUpdated: dateUpdated,
            dateClosed: dateClosed,
            issueNumberOfComments: issueNumberOfComments);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
