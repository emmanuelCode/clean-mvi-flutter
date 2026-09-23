import 'package:flutter_clean_architecture_with_mvi/features/game_details/presentation/mvi_view/game_details_screen.dart';
import 'package:flutter_test/flutter_test.dart';

void main(){

  group('game details screen',(){

    testWidgets('make sure data are being rendered on screen',(
    WidgetTester tester,
    ) async {
      await tester.pumpWidget(GameDetailsScreen(id: 1234));

      

    
      

    });

  });
}