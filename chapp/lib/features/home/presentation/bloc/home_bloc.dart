import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<HomeSearchPressed>((event, emit) async {
      emit(HomeLoadInProgress());
      try {
        const String apiKey = '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';
        final response = await http.post(
          Uri.parse('https://openrouter.ai/api/v1/chat/completions'),
          headers: {
            'Authorization': 'Bearer $apiKey',
            'Content-Type': 'application/json',
            
          },
          body: jsonEncode({
            'model': 'mistralai/mistral-7b-instruct',
            'messages': [
              {'role': 'user', 'content': event.query},
            ],
            'max_tokens': 500, 
          }),
        );

        if (response.statusCode == 200) {
          final data = jsonDecode(response.body);
          final responseText = data['choices'][0]['message']['content'] ?? 'No response received';
          emit(HomeLoadSuccess(response: responseText));
        } else {
          emit(HomeLoadFailure(message: 'Error ${response.statusCode}: ${response.body}'));
        }
      } catch (e) {
        emit(HomeLoadFailure(message: 'Exception: $e'));
      }

    });
    on<HomeInitialEvent>((event, emit) {
      print('HomeInitialEvent processed');
      emit(HomeInitial());
    });
  }
}