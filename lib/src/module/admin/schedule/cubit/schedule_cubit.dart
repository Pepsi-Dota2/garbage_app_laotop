import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hr_app/src/core/enum/enum.dart';
import 'package:hr_app/src/core/models/collection_schedule_model.dart';

part 'schedule_state.dart';
part 'schedule_cubit.freezed.dart';

class ScheduleCubit extends Cubit<ScheduleState> {
  ScheduleCubit() : super(ScheduleState());
  Future<void> addSchedule(CollectionScheduleModel schedule) async {
    final data = schedule.toJson();
    data['created_at'] = schedule.created_at != null ? Timestamp.fromDate(schedule.created_at!) : FieldValue.serverTimestamp();
    await FirebaseFirestore.instance.collection('collection_schedules').add(data);
  }

  Future<void> fetchSchedules() async {
    emit(state.copyWith(status: Status.loading));
    try {
      final snapshot = await FirebaseFirestore.instance.collection('collection_schedules').get();
      final schedules = snapshot.docs.map((doc) {
        final data = Map<String, dynamic>.from(doc.data());
        return CollectionScheduleModel.fromJson(data);
      }).toList();

      emit(state.copyWith(status: Status.success, schedules: schedules));
    } catch (e) {
      emit(state.copyWith(status: Status.failure));
    }
  }
}
