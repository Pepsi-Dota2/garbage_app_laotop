import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hr_app/src/module/client/express/cubit/express_cubit.dart';

class LocationMap extends StatelessWidget implements AutoRouteWrapper {
  final double latitude;
  final double longitude;
  final String markerId;
  final MapType? mapType;
  final VoidCallback? onMapTypeButtonPressed;
  final String? shopName;

  const LocationMap({
    super.key,
    required this.latitude,
    required this.longitude,
    required this.markerId,
    this.mapType,
    this.onMapTypeButtonPressed,
    this.shopName,
  });

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(create: (context) => ExpressCubit(), child: this);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ExpressCubit, ExpressState>(
      builder: (context, state) {
        final cubit = context.read<ExpressCubit>();
        return Stack(
          children: [
            GoogleMap(
              initialCameraPosition: CameraPosition(target: LatLng(latitude, longitude), zoom: 14, bearing: 0, tilt: 30),
              onMapCreated: (controller) {
                cubit.onMapCreated(controller, shopLat: latitude, shopLng: longitude, shopName: shopName);
              },
              markers: state.markers,
              myLocationEnabled: true,
              myLocationButtonEnabled: true,
              zoomControlsEnabled: true,
              mapType: mapType ?? MapType.normal,
            ),
            Positioned(
              top: 60,
              right: 8,
              child: FloatingActionButton(
                backgroundColor: Colors.white.withOpacity(0.8),
                foregroundColor: Colors.grey.shade600,
                elevation: 0,
                highlightElevation: 0,
                shape: Border(),
                onPressed: onMapTypeButtonPressed,
                tooltip: 'Change Map Type',
                mini: true,
                child: Icon(Icons.map),
              ),
            ),
          ],
        );
      },
    );
  }
}
