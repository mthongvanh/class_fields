import 'package:field_keys/domain/settings.dart';
import 'package:field_keys/field_keys.dart';
import 'package:generator_test/generator_test.dart';
import 'package:test/test.dart';

void main() {
  const files = [
    'basic',
    'with_getter',
    'with_static',
  ];

  for (final file in files) {
    test(
      'Successfully generates $file',
      () async {
        await testPackageBuilder(
          file,
          builder: fieldKeysBuilder,
          builderOptions: Settings.debug(),
        );
      },
    );
  }
}
