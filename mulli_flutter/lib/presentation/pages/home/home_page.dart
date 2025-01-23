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
  List<dynamic>? _users;
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
      setState(() {
        _users = users;
      });
    } catch (e) {
      print(e);
    }
  }

  void _fetchUserById(int id) async {
    try {
      final user = await client.users.getUserById(id);
      // 결과 처리
    } catch (e) {
      // 에러 처리
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
            _ResultDisplay(
              users: _users,
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
  final List<dynamic>? users;

  const _ResultDisplay({
    this.resultMessage,
    this.errorMessage,
    this.users,
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
      height: 100,
      color: backgroundColor,
      child: Column(
        children: [
          Center(
            child: Text(text),
          ),
          if (users != null)
            for (var user in users!)
              Text(
                  '${user.id} ${user.name} ${user.email} ${user.createdAt} ${user.socialType}'),
        ],
      ),
    );
  }
}
