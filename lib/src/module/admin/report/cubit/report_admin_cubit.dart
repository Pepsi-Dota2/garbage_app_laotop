import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hr_app/src/core/enum/enum.dart';

part 'report_admin_state.dart';
part 'report_admin_cubit.freezed.dart';

class ReportAdminCubit extends Cubit<ReportAdminState> {
  ReportAdminCubit() : super(ReportAdminState());
}
