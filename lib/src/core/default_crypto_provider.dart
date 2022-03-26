import 'crypto_provider.dart';
import 'package:encrypt/encrypt.dart';

class DefaultCryptoProvider implements CryptoProvider {
  final String key;
  final String? iv;

  DefaultCryptoProvider(this.key, {this.iv});

  Encrypter? _encrypter;

  Encrypter getEncrypter() {
    _encrypter ??= Encrypter(AES(getKey(), mode: AESMode.cbc));
    return _encrypter!;
  }

  Key getKey() {
    return Key.fromBase64(key);
  }

  IV? getIV() {
    if (iv == null) return null;
    return IV.fromBase64(iv!);
  }

  @override
  String decrypt(String base64Encrypted) {
    final encrypted = Encrypted.fromBase64(base64Encrypted);
    return getEncrypter().decrypt(encrypted, iv: getIV());
  }

  @override
  String encrypt(String text) {
    return getEncrypter().encrypt(text, iv: getIV()).base64;
  }
}
