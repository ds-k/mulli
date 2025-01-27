/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'dart:async' as _i2;
import 'package:mulli_client/src/protocol/brands.dart' as _i3;
import 'package:mulli_client/src/protocol/users.dart' as _i4;
import 'protocol.dart' as _i5;

/// {@category Endpoint}
class EndpointBrands extends _i1.EndpointRef {
  EndpointBrands(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'brands';

  _i2.Future<List<_i3.Brands>> getAllBrands() =>
      caller.callServerEndpoint<List<_i3.Brands>>(
        'brands',
        'getAllBrands',
        {},
      );
}

/// {@category Endpoint}
class EndpointExample extends _i1.EndpointRef {
  EndpointExample(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'example';

  _i2.Future<String> hello(String name) => caller.callServerEndpoint<String>(
        'example',
        'hello',
        {'name': name},
      );
}

/// {@category Endpoint}
class EndpointUsers extends _i1.EndpointRef {
  EndpointUsers(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'users';

  _i2.Future<List<_i4.Users>> getAllUsers() =>
      caller.callServerEndpoint<List<_i4.Users>>(
        'users',
        'getAllUsers',
        {},
      );

  _i2.Future<_i4.Users?> getUserById(int id) =>
      caller.callServerEndpoint<_i4.Users?>(
        'users',
        'getUserById',
        {'id': id},
      );

  _i2.Future<_i4.Users?> getUserByEmail(String email) =>
      caller.callServerEndpoint<_i4.Users?>(
        'users',
        'getUserByEmail',
        {'email': email},
      );
}

class Client extends _i1.ServerpodClientShared {
  Client(
    String host, {
    dynamic securityContext,
    _i1.AuthenticationKeyManager? authenticationKeyManager,
    Duration? streamingConnectionTimeout,
    Duration? connectionTimeout,
    Function(
      _i1.MethodCallContext,
      Object,
      StackTrace,
    )? onFailedCall,
    Function(_i1.MethodCallContext)? onSucceededCall,
    bool? disconnectStreamsOnLostInternetConnection,
  }) : super(
          host,
          _i5.Protocol(),
          securityContext: securityContext,
          authenticationKeyManager: authenticationKeyManager,
          streamingConnectionTimeout: streamingConnectionTimeout,
          connectionTimeout: connectionTimeout,
          onFailedCall: onFailedCall,
          onSucceededCall: onSucceededCall,
          disconnectStreamsOnLostInternetConnection:
              disconnectStreamsOnLostInternetConnection,
        ) {
    brands = EndpointBrands(this);
    example = EndpointExample(this);
    users = EndpointUsers(this);
  }

  late final EndpointBrands brands;

  late final EndpointExample example;

  late final EndpointUsers users;

  @override
  Map<String, _i1.EndpointRef> get endpointRefLookup => {
        'brands': brands,
        'example': example,
        'users': users,
      };

  @override
  Map<String, _i1.ModuleEndpointCaller> get moduleLookup => {};
}
