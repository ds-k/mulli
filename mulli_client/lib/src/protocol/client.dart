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
import 'package:mulli_client/src/protocol/products.dart' as _i4;
import 'package:mulli_client/src/protocol/users.dart' as _i5;
import 'protocol.dart' as _i6;

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
class EndpointProducts extends _i1.EndpointRef {
  EndpointProducts(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'products';

  _i2.Future<List<_i4.Products>> getAllProducts() =>
      caller.callServerEndpoint<List<_i4.Products>>(
        'products',
        'getAllProducts',
        {},
      );

  _i2.Future<List<_i4.Products>> getProductsByBrand(int brandId) =>
      caller.callServerEndpoint<List<_i4.Products>>(
        'products',
        'getProductsByBrand',
        {'brandId': brandId},
      );

  _i2.Future<List<_i4.Products>> getProductsByRegion(
    String region,
    int regionType,
  ) =>
      caller.callServerEndpoint<List<_i4.Products>>(
        'products',
        'getProductsByRegion',
        {
          'region': region,
          'regionType': regionType,
        },
      );

  _i2.Future<List<_i4.Products>> getProductsByClubType(String clubType) =>
      caller.callServerEndpoint<List<_i4.Products>>(
        'products',
        'getProductsByClubType',
        {'clubType': clubType},
      );

  _i2.Future<List<_i4.Products>> getProductsByUser(int userId) =>
      caller.callServerEndpoint<List<_i4.Products>>(
        'products',
        'getProductsByUser',
        {'userId': userId},
      );

  _i2.Future<_i4.Products?> getProductById(int id) =>
      caller.callServerEndpoint<_i4.Products?>(
        'products',
        'getProductById',
        {'id': id},
      );

  _i2.Future<bool> toggleLike(
    int productId,
    int userId,
  ) =>
      caller.callServerEndpoint<bool>(
        'products',
        'toggleLike',
        {
          'productId': productId,
          'userId': userId,
        },
      );

  _i2.Future<void> reportProduct(
    int productId,
    int userId,
    String reason,
  ) =>
      caller.callServerEndpoint<void>(
        'products',
        'reportProduct',
        {
          'productId': productId,
          'userId': userId,
          'reason': reason,
        },
      );

  _i2.Future<_i4.Products> updateProduct(_i4.Products product) =>
      caller.callServerEndpoint<_i4.Products>(
        'products',
        'updateProduct',
        {'product': product},
      );

  _i2.Future<_i4.Products?> deleteProduct(int id) =>
      caller.callServerEndpoint<_i4.Products?>(
        'products',
        'deleteProduct',
        {'id': id},
      );
}

/// {@category Endpoint}
class EndpointUsers extends _i1.EndpointRef {
  EndpointUsers(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'users';

  _i2.Future<List<_i5.Users>> getAllUsers() =>
      caller.callServerEndpoint<List<_i5.Users>>(
        'users',
        'getAllUsers',
        {},
      );

  _i2.Future<_i5.Users?> getUserById(int id) =>
      caller.callServerEndpoint<_i5.Users?>(
        'users',
        'getUserById',
        {'id': id},
      );

  _i2.Future<_i5.Users?> getUserByEmail(String email) =>
      caller.callServerEndpoint<_i5.Users?>(
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
          _i6.Protocol(),
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
    products = EndpointProducts(this);
    users = EndpointUsers(this);
  }

  late final EndpointBrands brands;

  late final EndpointExample example;

  late final EndpointProducts products;

  late final EndpointUsers users;

  @override
  Map<String, _i1.EndpointRef> get endpointRefLookup => {
        'brands': brands,
        'example': example,
        'products': products,
        'users': users,
      };

  @override
  Map<String, _i1.ModuleEndpointCaller> get moduleLookup => {};
}
