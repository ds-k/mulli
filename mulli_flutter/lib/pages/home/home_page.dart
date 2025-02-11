import 'package:flutter/material.dart';
import 'package:mulli_client/mulli_client.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';
import 'package:flutter_svg/flutter_svg.dart';

var client = Client('http://$localhost:8080/')
  ..connectivityMonitor = FlutterConnectivityMonitor();

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? _resultMessage;
  String? _errorMessage;
  List<Users>? _users;
  List<Brands>? _brands;
  final _textEditingController = TextEditingController();

  void _callHello() async {
    try {
      final result = await client.example.hello(_textEditingController.text);
      setState(() {
        _errorMessage = null;
        _resultMessage = result;
      });
    } catch (e) {
      setState(() {
        _errorMessage = '$e';
      });
    }
  }

  void _fetchUsers() async {
    try {
      final users = await client.users.getAllUsers();
      print(users.runtimeType);
      setState(() {
        _users = users;
      });
    } catch (e) {
      print(e);
    }
  }

  void _fetchBrands() async {
    try {
      final brands = await client.brands.getAllBrands();
      setState(() {
        _brands = brands;
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SvgPicture.asset(
          'assets/images/logo/appbar_logo.svg',
          height: 17,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: TextField(
                controller: _textEditingController,
                decoration: const InputDecoration(
                  hintText: '이름을 입력하세요',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: ElevatedButton(
                onPressed: _callHello,
                child: const Text('서버로 전송'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: ElevatedButton(
                onPressed: _fetchUsers,
                child: const Text('유저 조회'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: ElevatedButton(
                onPressed: _fetchBrands,
                child: const Text('브랜드 조회'),
              ),
            ),
            _ResultDisplay(
              users: _users,
              brands: _brands,
              resultMessage: _resultMessage,
              errorMessage: _errorMessage,
            ),
          ],
        ),
      ),
    );
  }
}

class _ResultDisplay extends StatelessWidget {
  final String? resultMessage;
  final String? errorMessage;
  final List<Users>? users;
  final List<Brands>? brands;

  const _ResultDisplay({
    this.resultMessage,
    this.errorMessage,
    this.users,
    this.brands,
  });

  @override
  Widget build(BuildContext context) {
    String text;
    Color backgroundColor;
    if (errorMessage != null) {
      backgroundColor = Colors.red[300]!;
      text = errorMessage!;
    } else if (resultMessage != null) {
      backgroundColor = Colors.green[300]!;
      text = resultMessage!;
    } else {
      backgroundColor = Colors.grey[300]!;
      text = '서버 응답을 기다리는 중...';
    }

    return Container(
      height: 200,
      color: backgroundColor,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Text(text),
            ),
            if (users != null)
              Column(
                children: users!
                    .map((user) => Text(
                        '${user.id} ${user.name} ${user.email} ${user.createdAt} ${user.socialType} ${user.region1} ${user.region2} ${user.region3} ${user.region4} ${user.lat} ${user.lng}'))
                    .toList(),
              ),
            if (brands != null)
              Column(
                children: brands!
                    .map((brand) => Column(
                          children: [
                            Text(
                                '${brand.id} ${brand.name} ${brand.createdAt}'),
                            SizedBox(
                              width: 100,
                              height: 100,
                              child: Image.network(brand.logoImageUrl),
                            ),
                          ],
                        ))
                    .toList(),
              ),
          ],
        ),
      ),
    );
  }
}
