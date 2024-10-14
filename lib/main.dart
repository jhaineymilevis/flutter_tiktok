import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toktik/config/theme/app_theme.dart';
import 'package:toktik/presentation/providers/discover_provider.dart';
import 'package:toktik/presentation/screens/discover/discover_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            lazy:
                false, //para que se lanze el constructor de una vez ya que por defecto el changeNotifyprovider es lazy por defecto
            create: (_) => DiscoverProvider()
              ..loadNextPage() //operador de cascada, ejecuta el loadNextPage cuando instancia la clase
            )
      ],
      child: MaterialApp(
        title: 'Tok Tik',
        debugShowCheckedModeBanner: false,
        theme: AppTheme().getTheme(),
        home: Scaffold(
          body: const DiscoverScreen(),
        ),
      ),
    );
  }
}
