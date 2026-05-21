import 'package:flutter_clean_architecture_with_mvi/core/utils/strings_utils.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('strip html tags', () {
    const htmlText = '''
<div>
  <p>Lorem ipsum dolor sit amet, <b>consectetur</b> adipiscing elit.</p>
  <p>Sed do eiusmod tempor incididunt ut labore.<br />Ut enim ad minim veniam.</p>
  <span>Enjoy the process!</span>
</div>''';

    final result = stripHtmlTags(htmlText);

    // Based on stripHtmlTags: </p> -> \n, <br /> -> \n, others removed, then trimmed.
    const expected = '''
Lorem ipsum dolor sit amet, consectetur adipiscing elit.

Sed do eiusmod tempor incididunt ut labore.

Ut enim ad minim veniam.

Enjoy the process!''';

    expect(result, expected.trim());
  });
}
