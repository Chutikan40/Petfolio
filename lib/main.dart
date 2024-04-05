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
          borderSide: const BorderSide(color: Colors.pink),
          borderRadius: BorderRadius.circular(20),                          // กำหนดขอบเขตของ Container เป็นวงกลม
        ),
        focusedBorder: OutlineInputBorder(                                  // กำหนดสีของเส้นกรอบเมื่อมีการโฟกัส
          borderSide: const BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(20),                          // กำหนดขอบเขตของ Container เป็นวงกลม

        ),
        labelStyle: const TextStyle(color: Colors.white),                        // กำหนดสีของข้อความใน text input
        
        
        ),
        scaffoldBackgroundColor: Colors.blue,                            // กำหนดสีพื้นหลังของ Scaffold เป็นสีเทาอ่อน
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blue,
        ),
        buttonTheme: ButtonThemeData(                                 // กำหนดธีมของปุ่มทั้งหมดตามต้องการ
          buttonColor: Colors.blue.shade100,                                       // กำหนดสีของปุ่ม
          textTheme: ButtonTextTheme.primary,                               // กำหนดธีมข้อความในปุ่มให้เป็น primary
        ),

        textTheme: const TextTheme(
          bodySmall: TextStyle(
            color: Colors.white,
          ),
          displaySmall: TextStyle(
            color: Colors.white,
            fontSize: 30.0,
          ),
          bodyLarge: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),

          bodyMedium: TextStyle(
            color: Colors.white,
            // fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.pink),
            
          ),
        ),
        
      ),
      home: RegisterPage(),                                           // ตั้งค่าหน้าลงทะเบียนให้เป็นหน้าหลัก
      
    );
  }
}
