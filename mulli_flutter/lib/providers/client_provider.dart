import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mulli_client/mulli_client.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';

// Client Provider
final clientProvider = Provider<Client>((ref) {
  final client = Client('http://localhost:8080/')
    ..connectivityMonitor = FlutterConnectivityMonitor();
  return client;
});
