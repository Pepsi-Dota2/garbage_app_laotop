// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'analysis_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$AnalysisState {
  Status get status => throw _privateConstructorUsedError;
  List<UserModel> get users => throw _privateConstructorUsedError;
  List<CollectionRoleModel> get colletion => throw _privateConstructorUsedError;

  /// Create a copy of AnalysisState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AnalysisStateCopyWith<AnalysisState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnalysisStateCopyWith<$Res> {
  factory $AnalysisStateCopyWith(
    AnalysisState value,
    $Res Function(AnalysisState) then,
  ) = _$AnalysisStateCopyWithImpl<$Res, AnalysisState>;
  @useResult
  $Res call({
    Status status,
    List<UserModel> users,
    List<CollectionRoleModel> colletion,
  });
}

/// @nodoc
class _$AnalysisStateCopyWithImpl<$Res, $Val extends AnalysisState>
    implements $AnalysisStateCopyWith<$Res> {
  _$AnalysisStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AnalysisState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? users = null,
    Object? colletion = null,
  }) {
    return _then(
      _value.copyWith(
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as Status,
            users: null == users
                ? _value.users
                : users // ignore: cast_nullable_to_non_nullable
                      as List<UserModel>,
            colletion: null == colletion
                ? _value.colletion
                : colletion // ignore: cast_nullable_to_non_nullable
                      as List<CollectionRoleModel>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AnalysisStateImplCopyWith<$Res>
    implements $AnalysisStateCopyWith<$Res> {
  factory _$$AnalysisStateImplCopyWith(
    _$AnalysisStateImpl value,
    $Res Function(_$AnalysisStateImpl) then,
  ) = __$$AnalysisStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    Status status,
    List<UserModel> users,
    List<CollectionRoleModel> colletion,
  });
}

/// @nodoc
class __$$AnalysisStateImplCopyWithImpl<$Res>
    extends _$AnalysisStateCopyWithImpl<$Res, _$AnalysisStateImpl>
    implements _$$AnalysisStateImplCopyWith<$Res> {
  __$$AnalysisStateImplCopyWithImpl(
    _$AnalysisStateImpl _value,
    $Res Function(_$AnalysisStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AnalysisState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? users = null,
    Object? colletion = null,
  }) {
    return _then(
      _$AnalysisStateImpl(
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as Status,
        users: null == users
            ? _value._users
            : users // ignore: cast_nullable_to_non_nullable
                  as List<UserModel>,
        colletion: null == colletion
            ? _value._colletion
            : colletion // ignore: cast_nullable_to_non_nullable
                  as List<CollectionRoleModel>,
      ),
    );
  }
}

/// @nodoc

class _$AnalysisStateImpl implements _AnalysisState {
  const _$AnalysisStateImpl({
    this.status = Status.initial,
    final List<UserModel> users = const [],
    final List<CollectionRoleModel> colletion = const [],
  }) : _users = users,
       _colletion = colletion;

  @override
  @JsonKey()
  final Status status;
  final List<UserModel> _users;
  @override
  @JsonKey()
  List<UserModel> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  final List<CollectionRoleModel> _colletion;
  @override
  @JsonKey()
  List<CollectionRoleModel> get colletion {
    if (_colletion is EqualUnmodifiableListView) return _colletion;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_colletion);
  }

  @override
  String toString() {
    return 'AnalysisState(status: $status, users: $users, colletion: $colletion)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnalysisStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            const DeepCollectionEquality().equals(
              other._colletion,
              _colletion,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    status,
    const DeepCollectionEquality().hash(_users),
    const DeepCollectionEquality().hash(_colletion),
  );

  /// Create a copy of AnalysisState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AnalysisStateImplCopyWith<_$AnalysisStateImpl> get copyWith =>
      __$$AnalysisStateImplCopyWithImpl<_$AnalysisStateImpl>(this, _$identity);
}

abstract class _AnalysisState implements AnalysisState {
  const factory _AnalysisState({
    final Status status,
    final List<UserModel> users,
    final List<CollectionRoleModel> colletion,
  }) = _$AnalysisStateImpl;

  @override
  Status get status;
  @override
  List<UserModel> get users;
  @override
  List<CollectionRoleModel> get colletion;

  /// Create a copy of AnalysisState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AnalysisStateImplCopyWith<_$AnalysisStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
