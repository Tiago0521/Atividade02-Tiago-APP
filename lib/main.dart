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
        primarySwatch: Colors.blue, // Cor padrão do tema
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
      appBar: AppBar(
        title: const Text('Layout Responsivo'),
        backgroundColor: Colors.teal, // Cor de fundo da AppBar
      ),
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
    return Container(
      color: Colors.teal.shade50, // Cor de fundo para mobile
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.phone_android, size: 70, color: Colors.teal), // Ícone colorido
            SizedBox(height: 20), // Espaço entre os widgets
            Text(
              'Visualização para Mobile',
              style: TextStyle(
                fontSize: 24, 
                fontWeight: FontWeight.bold,
                color: Colors.teal, // Cor do texto
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Layout para dispositivos desktop
  Widget _buildDesktopLayout() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.purple, Colors.blueAccent], // Gradiente de fundo
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.desktop_windows, size: 70, color: Colors.white), // Ícone colorido
            SizedBox(width: 20), // Espaço entre os widgets
            Text(
              'Visualização para Desktop',
              style: TextStyle(
                fontSize: 24, 
                fontWeight: FontWeight.bold,
                color: Colors.white, // Cor do texto
              ),
            ),
          ],
        ),
      ),
    );
  }
}

