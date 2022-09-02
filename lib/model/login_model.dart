class LoginModel {
  String? status;
  int? code;
  Data? data;

  LoginModel({this.status, this.code, this.data});

  LoginModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    code = json['code'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['code'] = code;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  String? token;
  int? id;
  String? uuid;
  String? code;
  Null? email;
  String? username;
  String? phone;
  String? photo;
  String? tokenType;
  String? message;
  String? expiresAt;
  int? academicId;
  Settings? settings;

  Data(
      {this.token,
      this.id,
      this.uuid,
      this.code,
      this.email,
      this.username,
      this.phone,
      this.photo,
      this.tokenType,
      this.message,
      this.expiresAt,
      this.academicId,
      this.settings});

  Data.fromJson(Map<String, dynamic> json) {
    token = json['token'];
    id = json['id'];
    uuid = json['uuid'];
    code = json['code'];
    email = json['email'];
    username = json['username'];
    phone = json['phone'];
    photo = json['photo'];
    tokenType = json['token_type'];
    message = json['message'];
    expiresAt = json['expires_at'];
    academicId = json['academic_id'];
    settings = json['settings'] != null
        ? new Settings.fromJson(json['settings'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['token'] = token;
    data['id'] = id;
    data['uuid'] = uuid;
    data['code'] = code;
    data['email'] = email;
    data['username'] = username;
    data['phone'] = phone;
    data['photo'] = photo;
    data['token_type'] = tokenType;
    data['message'] = message;
    data['expires_at'] = expiresAt;
    data['academic_id'] = academicId;
    if (settings != null) {
      data['settings'] = settings!.toJson();
    }
    return data;
  }
}

class Settings {
  int? staffHomeworkApprovalType;
  int? classTeacherHomeworkApprovalType;
  int? staffClassTestApprovalType;
  int? classClassTestApprovalType;
  int? payrollMenuType;

  Settings(
      {this.staffHomeworkApprovalType,
      this.classTeacherHomeworkApprovalType,
      this.staffClassTestApprovalType,
      this.classClassTestApprovalType,
      this.payrollMenuType});

  Settings.fromJson(Map<String, dynamic> json) {
    staffHomeworkApprovalType = json['staff_homework_approval_type'];
    classTeacherHomeworkApprovalType =
        json['class_teacher_homework_approval_type'];
    staffClassTestApprovalType = json['staff_class_test_approval_type'];
    classClassTestApprovalType = json['class_class_test_approval_type'];
    payrollMenuType = json['payroll_menu_type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['staff_homework_approval_type'] = staffHomeworkApprovalType;
    data['class_teacher_homework_approval_type'] =
        classTeacherHomeworkApprovalType;
    data['staff_class_test_approval_type'] = staffClassTestApprovalType;
    data['class_class_test_approval_type'] = classClassTestApprovalType;
    data['payroll_menu_type'] = payrollMenuType;
    return data;
  }
}
