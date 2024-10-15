# Flexify backend Documentation

Flexify is an Personal trainer AI smartphone app for Android and IOS programmed in flutter. This is the backend for it.

## API

### GET /searchExercises

/searchExercises is for searching for predefined exercises. You need to set the parameter **q** to your searchstring and it will return a list of exercises like [title, affeted muscles, type, equipment]. See the example

```dart
import 'package:http/http.dart' as http;

String url = 'host/searchExercises';
String searchString = 'Bench Press';

http.Response res = await http.get(
    Uri.parse('$url?q=$searchString'),
);

print(res); // [["Band Bench Press", "Chest", "Strength", "Bands, Bench"], ... ]
```

### POST /signup

/signup is to register a user.\nYou need a **username** and a **passsword**. Optionally you can also provide an **email**, **firstname** and a **surname**.\nIf the username is already taken it will return "username already taken".\nIf the user is signed up successfully it will return the JSON Web Token.

```dart
import 'package:http/http.dart' as http;

String url = 'host/signup';
String username = 'peter_pan69';
String password = '123456Password!';
String email = 'peter@wonderland.com';  // could be ''
String firstname = 'Peter';             // could be ''
String surname = '';                    // could be ''

final http.Response res = await http.post(
    '$url',
    body: jsonEncode({
      'username': username,
      'password': password,
      'email': email,
      'firstname': firstname,
      'surname': surname,
    }),
  );
print(res); // eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VybmFtZSI6ImFydGh1ciIsImlhdCI6MTcwMzAyNTI5OX0.Q66H0FKYkPZVm8ZEGeuO0nP6ur8N20lTnQ4362HGFPo
```

### POST /signin

/signin is to sign in a user.\nYou need to send the **username** and the **passsword**.\nIf the username or password is wrong it will return "username or password is wrong".\nIf the user is signed in successfully it will return the JSON Web Token.

```dart
import 'package:http/http.dart' as http;

String url = 'host/signin';
String username = 'peter_pan69';
String password = '123456Password!';

final http.Response res = await http.post(
    '$url',
    body: jsonEncode({
      'username': username,
      'password': password,
    }),
  );
print(res); // eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VybmFtZSI6ImFydGh1ciIsImlhdCI6MTcwMzAyNTI5OX0.Q66H0FKYkPZVm8ZEGeuO0nP6ur8N20lTnQ4362HGFPo
```

### POST /submitExercise

/submitExercise is to submit exercises of the user to backup them.\n You must send **JSON Web Token**, **title the exercise**, **type**, **affectedMuscle**, **equipment**.

```dart
import 'package:http/http.dart' as http;

String url = 'host/submitExercise';

String title = 'Bench Press';
String type = 'Strength';
String affectedMuscle = 'Chest';
String equipment = 'Bar';

final http.Response res = await http.post(
    '$url',
    body: jsonEncode({
      'jwt': jwt,
      'title': title,
      'type': type,
      'affectedMuscle': affectedMuscle,
      'equipment': equipment,
    }),
  );
print(res); // done
```

### GET /getExercises

/getExercises is to get all exercises stored by the user. You need to send the **JSON Web Token**.

```dart
import 'package:http/http.dart' as http;

String url = 'host/getExercises';

http.Response res = await http.get(
    Uri.parse('$url?jwt=$jwt'),
);

print(res); // [[1,"Bench Pess","Strength","Chest","Bar"], ... ]
```

### POST /submitSet

/submitSet is to submit sests of the user to backup them.\n You must send **JSON Web Token**, **exerciseName**, **reps**, **weight**, **date**.

```dart
import 'package:http/http.dart' as http;

String url = 'host/submitSet';

String exerciseName = 'Bench Press';
int reps = 12;
double weight = 55.25;
DateTime date = DateTime.now();

final http.Response res = await http.post(
    '$url',
    body: jsonEncode({
      'jwt': jwt,
      'exerciseName': exerciseName,
      'reps': reps,
      'weight': weight,
      'date': date,
    }),
  );
print(res); // done
```

### GET /getSets

/getSets is to get all sets stored by the user. You need to send the **JSON Web Token**.

```dart
import 'package:http/http.dart' as http;

String url = 'host/getSets';

http.Response res = await http.get(
    Uri.parse('$url?jwt=$jwt'),
);

print(res); // [["Bench Press", 12, "55.25", "2023-12-19T23:00:00.000Z"], ... ]  // order: (exerciseName, reps, weight, date)
```

### GET /searchExerciseByMuscle

/searchExerciseByMuscle is to get all exercises which train the spesific muscle. The exerise could also train othermuscles.
For example if you search for Triceps, you could get Bench Press which trains Chest, Front Sholders and _Triceps_.
The most affected Muscle is always the first.

```dart
import 'package:http/http.dart' as http;

String url = 'host/searchExerciseByMuscle';
String searchMuscle = 'Chest';

http.Response res = await http.get(
    Uri.parse('$url?q=$searchMuscle'),
);
```
