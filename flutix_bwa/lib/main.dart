import 'package:flutix_bwa/bloc/pages_bloc.dart';
import 'package:flutix_bwa/services/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'bloc/bloc.dart';
import 'ui/pages/pages.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider.value(
      value: AuthServices.userStream,
      child: MultiBlocProvider(
        providers: [
          BlocProvider(create: (_) => PagesBloc()),
          BlocProvider(create: (_) => UserBloc())
        ],
        child: MaterialApp(
            title: 'Ahmad Muji',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: Wrapper()),
      ),
    );
  }
}
