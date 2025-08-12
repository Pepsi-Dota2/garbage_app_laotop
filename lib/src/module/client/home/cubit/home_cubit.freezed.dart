// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$HomeState {
  Status get status => throw _privateConstructorUsedError;
  UserModel? get user => throw _privateConstructorUsedError;
  List<CollectionScheduleModel> get schedules =>
      throw _privateConstructorUsedError;
  List<CollectionRoleModel> get collection =>
      throw _privateConstructorUsedError;
  String get collectionRoleStatus => throw _privateConstructorUsedError;
  String get selectedCustomerName => throw _privateConstructorUsedError;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call({
    Status status,
    UserModel? user,
    List<CollectionScheduleModel> schedules,
    List<CollectionRoleModel> collection,
    String collectionRoleStatus,
    String selectedCustomerName,
  });

  $UserModelCopyWith<$Res>? get user;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? user = freezed,
    Object? schedules = null,
    Object? collection = null,
    Object? collectionRoleStatus = null,
    Object? selectedCustomerName = null,
  }) {
    return _then(
      _value.copyWith(
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as Status,
            user: freezed == user
                ? _value.user
                : user // ignore: cast_nullable_to_non_nullable
                      as UserModel?,
            schedules: null == schedules
                ? _value.schedules
                : schedules // ignore: cast_nullable_to_non_nullable
                      as List<CollectionScheduleModel>,
            collection: null == collection
                ? _value.collection
                : collection // ignore: cast_nullable_to_non_nullable
                      as List<CollectionRoleModel>,
            collectionRoleStatus: null == collectionRoleStatus
                ? _value.collectionRoleStatus
                : collectionRoleStatus // ignore: cast_nullable_to_non_nullable
                      as String,
            selectedCustomerName: null == selectedCustomerName
                ? _value.selectedCustomerName
                : selectedCustomerName // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
    _$HomeStateImpl value,
    $Res Function(_$HomeStateImpl) then,
  ) = __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    Status status,
    UserModel? user,
    List<CollectionScheduleModel> schedules,
    List<CollectionRoleModel> collection,
    String collectionRoleStatus,
    String selectedCustomerName,
  });

  @override
  $UserModelCopyWith<$Res>? get user;
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
    _$HomeStateImpl _value,
    $Res Function(_$HomeStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? user = freezed,
    Object? schedules = null,
    Object? collection = null,
    Object? collectionRoleStatus = null,
    Object? selectedCustomerName = null,
  }) {
    return _then(
      _$HomeStateImpl(
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as Status,
        user: freezed == user
            ? _value.user
            : user // ignore: cast_nullable_to_non_nullable
                  as UserModel?,
        schedules: null == schedules
            ? _value._schedules
            : schedules // ignore: cast_nullable_to_non_nullable
                  as List<CollectionScheduleModel>,
        collection: null == collection
            ? _value._collection
            : collection // ignore: cast_nullable_to_non_nullable
                  as List<CollectionRoleModel>,
        collectionRoleStatus: null == collectionRoleStatus
            ? _value.collectionRoleStatus
            : collectionRoleStatus // ignore: cast_nullable_to_non_nullable
                  as String,
        selectedCustomerName: null == selectedCustomerName
            ? _value.selectedCustomerName
            : selectedCustomerName // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$HomeStateImpl implements _HomeState {
  const _$HomeStateImpl({
    this.status = Status.initial,
    this.user,
    final List<CollectionScheduleModel> schedules = const [],
    final List<CollectionRoleModel> collection = const [],
    this.collectionRoleStatus = '',
    this.selectedCustomerName = '',
  }) : _schedules = schedules,
       _collection = collection;

  @override
  @JsonKey()
  final Status status;
  @override
  final UserModel? user;
  final List<CollectionScheduleModel> _schedules;
  @override
  @JsonKey()
  List<CollectionScheduleModel> get schedules {
    if (_schedules is EqualUnmodifiableListView) return _schedules;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_schedules);
  }

  final List<CollectionRoleModel> _collection;
  @override
  @JsonKey()
  List<CollectionRoleModel> get collection {
    if (_collection is EqualUnmodifiableListView) return _collection;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_collection);
  }

  @override
  @JsonKey()
  final String collectionRoleStatus;
  @override
  @JsonKey()
  final String selectedCustomerName;

  @override
  String toString() {
    return 'HomeState(status: $status, user: $user, schedules: $schedules, collection: $collection, collectionRoleStatus: $collectionRoleStatus, selectedCustomerName: $selectedCustomerName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.user, user) || other.user == user) &&
            const DeepCollectionEquality().equals(
              other._schedules,
              _schedules,
            ) &&
            const DeepCollectionEquality().equals(
              other._collection,
              _collection,
            ) &&
            (identical(other.collectionRoleStatus, collectionRoleStatus) ||
                other.collectionRoleStatus == collectionRoleStatus) &&
            (identical(other.selectedCustomerName, selectedCustomerName) ||
                other.selectedCustomerName == selectedCustomerName));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    status,
    user,
    const DeepCollectionEquality().hash(_schedules),
    const DeepCollectionEquality().hash(_collection),
    collectionRoleStatus,
    selectedCustomerName,
  );

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState({
    final Status status,
    final UserModel? user,
    final List<CollectionScheduleModel> schedules,
    final List<CollectionRoleModel> collection,
    final String collectionRoleStatus,
    final String selectedCustomerName,
  }) = _$HomeStateImpl;

  @override
  Status get status;
  @override
  UserModel? get user;
  @override
  List<CollectionScheduleModel> get schedules;
  @override
  List<CollectionRoleModel> get collection;
  @override
  String get collectionRoleStatus;
  @override
  String get selectedCustomerName;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
