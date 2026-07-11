import 'dart:convert';

import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import '../../data/dto/todo_dto.dart';
import '../../models/todo.dart';
import './repository_exception.dart';

class TodoRepository {
  static final global = TodoRepository(); // unique instance

  final List<Todo> fakeTodos = [
    Todo(id: '1', title: 'Buy groceries', completed: false),
    Todo(id: '2', title: 'Finish Flutter homework', completed: true),
    Todo(id: '3', title: 'Call the dentist', completed: false),
    Todo(id: '4', title: 'Read 20 pages of a book', completed: true),
    Todo(id: '5', title: 'Go for a 30-minute walk', completed: false),
  ];

  Future<List<Todo>> getTodos() async {
    //  TODO
    //  Adapt the code to handle firebase data fetch
    //
    try {
      Response response = await http.get(
        Uri.parse(
          "https://mobile-dev-9ad8a-default-rtdb.firebaseio.com/todos.json",
        ),
      );
      if (response.statusCode != 200) {
        throw RepositoryException("No wifi");
      }

      Map<String, dynamic> result = jsonDecode(response.body);

      //convert this from 2 fields to 3 fields
      return result.entries.map((entry) {
        return TodoDto.fromJson(entry.key, entry.value as Map<String, dynamic>);
      }).toList();
      
    } on RepositoryException {
      //pass it to the ui (fetchTodos)
      rethrow;
    } catch (e) {
      throw RepositoryException("Unexpected error: $e");
    }

    // //comments this since it just fetch the fake data
    // return Future.delayed(Duration(seconds: 1), () {
    //   return fakeTodos;

    //  TODO
    // Ensure the message is displayed on the UI if error occured
    //throw RepositoryException("No wifi !");
  }

  Future<void> updateCompleted(String todoId, bool completed) async {
    //  TODO
    //  Adapt the code to handle firebase data fetch
    //
    // int index = fakeTodos.indexWhere((e) => e.id == todoId);
    // fakeTodos[index] = fakeTodos[index].copyWith(completed);

    // return Future.delayed(Duration(microseconds: 1), () => true);

    try {
      //patch need body, endcode and send it to
      Response response = await http.patch(
        Uri.parse(
          "https://mobile-dev-9ad8a-default-rtdb.firebaseio.com/todos/$todoId.json",
        ),
        body: jsonEncode({"completed": completed}),
      );
      // print("Status code: ${response.statusCode}");
      // print("Response body: ${response.body}");
      if (response.statusCode != 200) {
        throw RepositoryException("No Wifi!");
      }
    } on RepositoryException {
      //pass to the screens
      rethrow;
    } catch (e) {
      throw RepositoryException("Uexpected error: $e");
    }
  }
}
