import 'core/crypto_provider.dart';

class Crypto {
  final CryptoProvider _provider;
  CryptoProvider get provider => _provider;

  Crypto(this._provider);

  static Crypto? _crypto;
  static Crypto newInstance(CryptoProvider provider) {
    _crypto ??= Crypto(provider);
    return _crypto!;
  }

  String encrypt(String data) {
    return _provider.encrypt(data);
  }

  String decrypt(String data) {
    return _provider.decrypt(data);
  }
}
