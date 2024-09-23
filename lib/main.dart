import 'package:easy_localization/easy_localization.dart';
import 'package:easy_test/generated/locale_keys.g.dart';
import 'package:easy_test/routing.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      child: const MyApp(),
      supportedLocales: const [
        Locale('en', 'US'),
        Locale('ar', 'EG'),
      ],
      path: 'lib/Resources/Translations',
      fallbackLocale: const Locale('en', 'US'),
    ),
  );
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',

      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        canvasColor: Colors.transparent,
        primarySwatch: Colors.deepOrange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),

      routerConfig: router, // Define your router configuration here
    );



  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});




  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(LocaleKeys.accountHolderName.tr()),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
             Text(
               LocaleKeys.welcomeIn.tr(),
            ),



            TextButton.icon(
                icon: const Icon(Icons.import_contacts_outlined),

                onPressed: (){


                  context.locale = const Locale('ar', 'EG');
                }, label: const Text("عربي")),
            TextButton.icon(
                icon: const Icon(Icons.account_balance),

                onPressed: (){


                  context.locale = const Locale('en', 'US');
                }, label: const Text("English")),  TextButton.icon(
                icon: const Icon(Icons.account_balance),

                onPressed: (){
                 context.go('/view');

                }, label: const Text("Jump Test view")),
          ],
        ),
      ),
    );
  }
}
