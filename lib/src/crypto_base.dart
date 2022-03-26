import 'package:cubetiq_crypto_dart/crypto.dart';

import 'core/crypto_provider.dart';

class Crypto {
  final CryptoProvider _provider;
  CryptoProvider get provider => _provider;

  Crypto(this._provider);

  static Crypto? _crypto;
  
  static Crypto newInstance(CryptoProvider provider) {
    return Crypto(provider);
  }

  static Crypto defaultInstance(String key, {String? iv}) {
    return newInstance(DefaultCryptoProvider(key, iv: iv));
  }

  static Crypto getInstance(CryptoProvider provider) {
    _crypto ??= newInstance(provider);
    return _crypto!;
  }

  String encrypt(String data) {
    return _provider.encrypt(data);
  }

  String decrypt(String data) {
    return _provider.decrypt(data);
  }
}
