import 'dart:io';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';

const ACCESS_TOKEN_KEY = 'ACCESS_TOKEN';
const REFRESH_TOKEN_KEY = 'REFRESH_TOKEN';
final storage = FlutterSecureStorage();
final androidIp = '10.0.2.2';
final appleIp = '127.0.0.1';
final ip = Platform.isIOS ? appleIp : androidIp;
