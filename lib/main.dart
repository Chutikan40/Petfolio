import 'package:flutter/material.dart';
import 'package:petfolio/registerPage.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(                                                     //กำหนดธีมให้ Petfolio
      inputDecorationTheme: InputDecorationTheme(
        
        border: OutlineInputBorder(                                         // กำหนดสีของเส้นกรอบของ text input
          borderSide: const BorderSide(color: Colors.blue),
          borderRadius: BorderRadius.circular(20),                          // กำหนดขอบเขตของ Container เป็นวงกลม
        ),
        focusedBorder: OutlineInputBorder(                                  // กำหนดสีของเส้นกรอบเมื่อมีการโฟกัส
          borderSide: const BorderSide(color: Colors.blue),
          borderRadius: BorderRadius.circular(20),                          // กำหนดขอบเขตของ Container เป็นวงกลม

        ),
        labelStyle: const TextStyle(color: Colors.grey),                        // กำหนดสีของข้อความใน text input
        
        
        ),
        scaffoldBackgroundColor: const Color.fromARGB(255, 128, 182, 225),                            // กำหนดสีพื้นหลังของ Scaffold เป็นสีเทาอ่อน
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blue,
        ),
        buttonTheme: const ButtonThemeData(                                 // กำหนดธีมของปุ่มทั้งหมดตามต้องการ
          buttonColor: Colors.blue,                                       // กำหนดสีของปุ่ม
          textTheme: ButtonTextTheme.primary,                               // กำหนดธีมข้อความในปุ่มให้เป็น primary
        ),

        textTheme: const TextTheme(
          bodySmall: TextStyle(
            color: Colors.blue,
          ),
          displaySmall: TextStyle(
            color: Colors.white,
            fontSize: 30.0,
          ),
          bodyLarge: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
            
          ),
        ),
        
      ),
      home: const RegisterPage(),                                           // ตั้งค่าหน้าลงทะเบียนให้เป็นหน้าหลัก
      
    );
  }
}
