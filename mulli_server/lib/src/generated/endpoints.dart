/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import '../endpoints/brands_endpoint.dart' as _i2;
import '../endpoints/example_endpoint.dart' as _i3;
import '../endpoints/products_endpoint.dart' as _i4;
import '../endpoints/users_endpoint.dart' as _i5;
import 'package:mulli_server/src/generated/products.dart' as _i6;

class Endpoints extends _i1.EndpointDispatch {
  @override
  void initializeEndpoints(_i1.Server server) {
    var endpoints = <String, _i1.Endpoint>{
      'brands': _i2.BrandsEndpoint()
        ..initialize(
          server,
          'brands',
          null,
        ),
      'example': _i3.ExampleEndpoint()
        ..initialize(
          server,
          'example',
          null,
        ),
      'products': _i4.ProductsEndpoint()
        ..initialize(
          server,
          'products',
          null,
        ),
      'users': _i5.UsersEndpoint()
        ..initialize(
          server,
          'users',
          null,
        ),
    };
    connectors['brands'] = _i1.EndpointConnector(
      name: 'brands',
      endpoint: endpoints['brands']!,
      methodConnectors: {
        'getAllBrands': _i1.MethodConnector(
          name: 'getAllBrands',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['brands'] as _i2.BrandsEndpoint).getAllBrands(session),
        )
      },
    );
    connectors['example'] = _i1.EndpointConnector(
      name: 'example',
      endpoint: endpoints['example']!,
      methodConnectors: {
        'hello': _i1.MethodConnector(
          name: 'hello',
          params: {
            'name': _i1.ParameterDescription(
              name: 'name',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['example'] as _i3.ExampleEndpoint).hello(
            session,
            params['name'],
          ),
        )
      },
    );
    connectors['products'] = _i1.EndpointConnector(
      name: 'products',
      endpoint: endpoints['products']!,
      methodConnectors: {
        'getAllProducts': _i1.MethodConnector(
          name: 'getAllProducts',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['products'] as _i4.ProductsEndpoint)
                  .getAllProducts(session),
        ),
        'getProductsByBrand': _i1.MethodConnector(
          name: 'getProductsByBrand',
          params: {
            'brandId': _i1.ParameterDescription(
              name: 'brandId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['products'] as _i4.ProductsEndpoint)
                  .getProductsByBrand(
            session,
            params['brandId'],
          ),
        ),
        'getProductsByRegion': _i1.MethodConnector(
          name: 'getProductsByRegion',
          params: {
            'region': _i1.ParameterDescription(
              name: 'region',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'regionType': _i1.ParameterDescription(
              name: 'regionType',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['products'] as _i4.ProductsEndpoint)
                  .getProductsByRegion(
            session,
            params['region'],
            params['regionType'],
          ),
        ),
        'getProductsByClubType': _i1.MethodConnector(
          name: 'getProductsByClubType',
          params: {
            'clubType': _i1.ParameterDescription(
              name: 'clubType',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['products'] as _i4.ProductsEndpoint)
                  .getProductsByClubType(
            session,
            params['clubType'],
          ),
        ),
        'getProductsByUser': _i1.MethodConnector(
          name: 'getProductsByUser',
          params: {
            'userId': _i1.ParameterDescription(
              name: 'userId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['products'] as _i4.ProductsEndpoint).getProductsByUser(
            session,
            params['userId'],
          ),
        ),
        'getProductById': _i1.MethodConnector(
          name: 'getProductById',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['products'] as _i4.ProductsEndpoint).getProductById(
            session,
            params['id'],
          ),
        ),
        'toggleLike': _i1.MethodConnector(
          name: 'toggleLike',
          params: {
            'productId': _i1.ParameterDescription(
              name: 'productId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'userId': _i1.ParameterDescription(
              name: 'userId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['products'] as _i4.ProductsEndpoint).toggleLike(
            session,
            params['productId'],
            params['userId'],
          ),
        ),
        'reportProduct': _i1.MethodConnector(
          name: 'reportProduct',
          params: {
            'productId': _i1.ParameterDescription(
              name: 'productId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'userId': _i1.ParameterDescription(
              name: 'userId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'reason': _i1.ParameterDescription(
              name: 'reason',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['products'] as _i4.ProductsEndpoint).reportProduct(
            session,
            params['productId'],
            params['userId'],
            params['reason'],
          ),
        ),
        'updateProduct': _i1.MethodConnector(
          name: 'updateProduct',
          params: {
            'product': _i1.ParameterDescription(
              name: 'product',
              type: _i1.getType<_i6.Products>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['products'] as _i4.ProductsEndpoint).updateProduct(
            session,
            params['product'],
          ),
        ),
        'deleteProduct': _i1.MethodConnector(
          name: 'deleteProduct',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['products'] as _i4.ProductsEndpoint).deleteProduct(
            session,
            params['id'],
          ),
        ),
      },
    );
    connectors['users'] = _i1.EndpointConnector(
      name: 'users',
      endpoint: endpoints['users']!,
      methodConnectors: {
        'getAllUsers': _i1.MethodConnector(
          name: 'getAllUsers',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['users'] as _i5.UsersEndpoint).getAllUsers(session),
        ),
        'getUserById': _i1.MethodConnector(
          name: 'getUserById',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['users'] as _i5.UsersEndpoint).getUserById(
            session,
            params['id'],
          ),
        ),
        'getUserByEmail': _i1.MethodConnector(
          name: 'getUserByEmail',
          params: {
            'email': _i1.ParameterDescription(
              name: 'email',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['users'] as _i5.UsersEndpoint).getUserByEmail(
            session,
            params['email'],
          ),
        ),
      },
    );
  }
}
