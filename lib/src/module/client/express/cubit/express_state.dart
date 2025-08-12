part of 'express_cubit.dart';

@freezed
class ExpressState with _$ExpressState {
  const factory ExpressState({
    @Default(Status.initial) Status status,
    double? latitude,
    double? longitude,
    MapType? mapType,
    @Default(<Marker>{}) Set<Marker> markers,
  }) = _ExpressState;
}
