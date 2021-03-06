import 'package:flutter/material.dart';
import 'core/init/api/form/api_form_service.dart';
import 'core/init/app/initialize_app.dart';
import 'core/init/provider/provider_list.dart';
import 'view/ui/themes/ligth_theme.dart';
import 'package:provider/provider.dart';

import 'core/init/router/router.dart';

//test comment
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeApp();

  runApp(
    MultiProvider(
      providers: [...ApplicationProvider.dependItems],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Vonop',
      theme: kThemeData,
      onGenerateRoute: CustomRouter.generateRoute,
    );
  }
}
