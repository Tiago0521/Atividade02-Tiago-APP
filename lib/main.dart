import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Remove a faixa de debug
      theme: ThemeData(
        primarySwatch: Colors.blue, // Define uma cor padrão
      ),
      home: const ResponsiveLayout(),
    );
  }
}

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Layout Responsivo')),
      body: LayoutBuilder(
        builder: (context, constraints) {
          // Adapta o layout com base na largura disponível
          if (constraints.maxWidth < 600) {
            return _buildMobileLayout(); // Layout para telas menores
          } else {
            return _buildDesktopLayout(); // Layout para telas maiores
          }
        },
      ),
    );
  }

  // Layout para dispositivos móveis
  Widget _buildMobileLayout() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(Icons.phone_android, size: 50, color: Colors.blue),
          SizedBox(height: 10), // Espaço entre os widgets
          Text(
            'Visualização para Mobile',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  // Layout para dispositivos desktop
  Widget _buildDesktopLayout() {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(Icons.desktop_windows, size: 50, color: Colors.blue),
          SizedBox(width: 10), // Espaço entre os widgets
          Text(
            'Visualização para Desktop',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
