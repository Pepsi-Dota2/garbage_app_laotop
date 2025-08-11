import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:hr_app/src/core/models/collection_schedule_model.dart';
import 'package:hr_app/src/module/admin/schedule/cubit/schedule_cubit.dart';

void showCreateScheduleDialog(BuildContext context) {
  final _formKey = GlobalKey<FormState>();
  final collectionDayController = TextEditingController();
  final startTimeController = TextEditingController();
  final endTimeController = TextEditingController();
  final populationController = TextEditingController();
  final cubit = context.read<ScheduleCubit>();
  final size = MediaQuery.of(context).size;

  showAdaptiveDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        title: const Text('Create Schedule'),
        content: Container(
          width: size.width * 0.8,
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextFormField(
                    controller: collectionDayController,
                    decoration: const InputDecoration(labelText: 'Collection Day'),
                    validator: (value) => (value == null || value.isEmpty) ? 'Enter collection day' : null,
                  ),
                  FormBuilderDateTimePicker(
                    controller: startTimeController,
                    decoration: const InputDecoration(labelText: 'Start Time (e.g. 08:00)'),
                    validator: (value) => (value == null) ? 'Enter start time' : null,
                    name: 'start_time',
                  ),
                  FormBuilderDateTimePicker(
                    controller: endTimeController,
                    decoration: const InputDecoration(labelText: 'Start Time (e.g. 08:00)'),
                    validator: (value) => (value == null) ? 'Enter start time' : null,
                    name: 'end_time',
                  ),
                  TextFormField(
                    controller: populationController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(labelText: 'Population'),
                    validator: (value) {
                      if (value == null || value.isEmpty) return 'Enter population';
                      if (int.tryParse(value) == null) return 'Enter a valid number';
                      return null;
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              context.router.pop();
            },
            child: const Text('Cancel', style: TextStyle(color: Colors.black)),
          ),
          InkWell(
            onTap: () async {
              if (_formKey.currentState!.validate()) {
                final schedule = CollectionScheduleModel(
                  id: DateTime.now().millisecondsSinceEpoch,
                  collection_day: collectionDayController.text.trim(),
                  start_time: startTimeController.text.trim(),
                  end_time: endTimeController.text.trim(),
                  population: int.parse(populationController.text.trim()),
                  created_at: DateTime.now(),
                );
                await cubit.addSchedule(schedule);
                context.router.pop();
              }
            },
            child: Container(
              width: size.width * 0.2,
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(color: Colors.amber, borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Text("Create", style: TextStyle(color: Colors.black)),
              ),
            ),
          ),
        ],
      );
    },
  );
}
