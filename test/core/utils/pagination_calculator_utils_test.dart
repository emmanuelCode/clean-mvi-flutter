import 'package:flutter_clean_architecture_with_mvi/core/config/api_config.dart';
import 'package:flutter_clean_architecture_with_mvi/core/utils/pagination_calculator_utils.dart';
import 'package:test/test.dart';

void main() {
  const pageSize = GameApiConfig.pageSize;
  var jsonTest = {
    "count": 1,
    "next":
        "https://api.rawg.io/api/games?key=DD&page=2&page_size=40&search=mario&search_exact=true&search_precise=true",
    "previous": null,
  };

  group('Pagination Calculator Utils', () {
    test(
      'calculateTotalPages should return correct number of pages using ceiling logic',
      () {
        // Testing a range of values to ensure boundaries (like 0, 1, 40, 41) work correctly
        for (int i = 0; i < 1000; i++) {
          final expected = (i / pageSize).ceil();
          expect(
            calculateTotalPages(i, pageSize),
            expected,
            reason: 'Failed at totalCount: $i',
          );
        }
      },
    );

    test(
      'calculateCurrentPage should derive the correct current index from API links',
      () {
        const totalPages = 10;

        // Case: First page (previous is null)
        expect(
          calculateCurrentPage(jsonTest['next'] as String?, null, totalPages),
          1,
        );

        // Case: Last page (next is null)
        expect(
          calculateCurrentPage(
            null,
            'https://api.rawg.io/api/games?page=9',
            totalPages,
          ),
          totalPages,
        );

        // Case: Middle page (if next is page 5, current is 4)
        expect(
          calculateCurrentPage(
            'https://api.rawg.io/api/games?page=5',
            'https://api.rawg.io/api/games?page=3',
            totalPages,
          ),
          4,
        );
      },
    );
  });
}
