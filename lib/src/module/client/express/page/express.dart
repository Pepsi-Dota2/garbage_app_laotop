import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hr_app/src/core/router/router.dart';
import 'package:hr_app/src/core/widget/custome_dialog.dart';
import 'package:hr_app/src/module/client/express/cubit/express_cubit.dart';
import 'package:hr_app/src/module/client/express/widget/location_map.dart';

@RoutePage()
class ExpressPage extends StatelessWidget implements AutoRouteWrapper {
  const ExpressPage({super.key});
  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(create: (context) => ExpressCubit(), child: this);
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ExpressCubit>();
    return Scaffold(
      appBar: AppBar(title: const Text("express"), centerTitle: true, elevation: 4),
      floatingActionButton: SizedBox(
        width: 80,
        height: 80,
        child: FloatingActionButton(
          heroTag: null,
          backgroundColor: Colors.transparent,
          elevation: 6,
          onPressed: () {
            CustomDialogWidget.show(
              context,
              title: 'Confirm',
              message: 'Mark Location',
              okLabel: 'Yes',
              cancelLabel: 'No',
              onOkPressed: () async {
                try {
                  await cubit.getCurrentLocation();
                  final lat = cubit.state.latitude ?? 0;
                  final lng = cubit.state.longitude ?? 0;
                  await cubit.saveExpressData(latitude: lat, longitude: lng);
                  context.router.push(PaymentCollectionTypeRoute(lat: lat, lng: lng));
                } catch (e) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Failed to save location or navigate: $e')));
                }
              },
            );
          },
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
          child: Ink(
            decoration: BoxDecoration(
              gradient: const LinearGradient(colors: [Color(0xFF4facfe), Color(0xFF00f2fe)], begin: Alignment.topLeft, end: Alignment.bottomRight),
              borderRadius: BorderRadius.circular(40),
              boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.15), blurRadius: 12, offset: const Offset(0, 6))],
            ),
            child: const Center(child: Icon(Icons.add_location_alt_rounded, size: 36, color: Colors.white)),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: BlocBuilder<ExpressCubit, ExpressState>(
        builder: (context, state) {
          return Column(
            children: [
              Expanded(
                child: LocationMap(
                  latitude: state.latitude ?? 0.0,
                  longitude: state.longitude ?? 0.0,
                  markerId: '',
                  mapType: state.mapType,
                  onMapTypeButtonPressed: () {
                    cubit.switchMapType();
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
