// Helper function to remove HTML tags from text
String stripHtmlTags(String htmlText) {
  // Replace closing paragraph tags with double newline (paragraph break)
  String plainText = htmlText.replaceAll('</p>', '\n');

  // Replace line breaks with newline
  plainText = plainText.replaceAll('<br>', '\n');
  plainText = plainText.replaceAll('<br/>', '\n');
  plainText = plainText.replaceAll('<br />', '\n');

  // Remove remaining HTML tags like <p>, <div>, etc.
  plainText = plainText.replaceAll(RegExp(r'<[^>]*>'), '');

  // Remove leading/trailing whitespace
  return plainText.trim();
}
