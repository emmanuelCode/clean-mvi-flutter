// Algorithm or calculation for pagination (makes it testable)
int calculateTotalPages(int totalCount, int pageSize) {
  return (totalCount / pageSize).round();
}

int calculateCurrentPage(String? nextPage, String? previousPage, int totalPages) {
  if (previousPage == null) return 1;
  if (nextPage == null) return totalPages;
  
  final pageParam = Uri.parse(nextPage).queryParameters['page'];
  if (pageParam == null) return 1;
  
  return int.parse(pageParam) - 1;// next page is current page + 1
}