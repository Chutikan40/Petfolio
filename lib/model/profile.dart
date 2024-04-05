class Profile {
  String email;
  String password;

  // Profile({this.email, this.password});

  // ตัวอย่างการใช้ตัวดำเนินการ ?? เพื่อกำหนดค่าเริ่มต้นให้กับ email และ password
  Profile.fromJson(Map<String, dynamic> json)
      : email = json['email'] ?? '', // ถ้า json['email'] เป็น null ให้กำหนดค่าเริ่มต้นเป็น ''
        password = json['password'] ?? ''; // ถ้า json['password'] เป็น null ให้กำหนดค่าเริ่มต้นเป็น ''


}
