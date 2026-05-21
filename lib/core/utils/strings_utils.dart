// Helper function to remove HTML tags from text
String stripHtmlTags(String htmlText) {
  // Replace closing paragraph tags and various break tags with a newline
  String plainText = htmlText.replaceAll(
    RegExp(r'</p>|<br\s*/?>', caseSensitive: false),
    '\n',
  );

  // Remove remaining HTML tags like <p>, <div>, etc.
  plainText = plainText.replaceAll(RegExp(r'<[^>]*>'), '');

  // Clean up: trim each line, remove empty lines, and join with single newlines
  return plainText
      .split('\n')
      .map((line) => line.trim())
      .where((line) => line.isNotEmpty)
      .join('\n\n');
}
