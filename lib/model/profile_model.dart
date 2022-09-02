class ProfileModel {
  String? status;
  int? code;
  Data? data;

  ProfileModel({this.status, this.code, this.data});

  ProfileModel.fromJson(Map<String, dynamic> json) {
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
  String? code;
  String? firstName;
  Null? lastName;
  String? userName;
  String? motherTongue;
  String? dob;
  String? doj;
  String? gender;
  Null? email;
  String? phone;
  Null? bloodGroup;
  Null? religion;
  Null? caste;
  Null? subcaste;
  String? maritalStatus;
  int? maritalStatusId;
  Null? jobType;
  String? nationality;
  Null? salarytype;
  Null? designation;
  Null? qualification;
  Null? experiences;
  Null? whatsappNo;
  Null? landLineNo;
  String? photo;
  PermanentAddress? permanentAddress;
  PermanentAddress? residentialAddress;

  Data(
      {this.code,
        this.firstName,
        this.lastName,
        this.userName,
        this.motherTongue,
        this.dob,
        this.doj,
        this.gender,
        this.email,
        this.phone,
        this.bloodGroup,
        this.religion,
        this.caste,
        this.subcaste,
        this.maritalStatus,
        this.maritalStatusId,
        this.jobType,
        this.nationality,
        this.salarytype,
        this.designation,
        this.qualification,
        this.experiences,
        this.whatsappNo,
        this.landLineNo,
        this.photo,
        this.permanentAddress,
        this.residentialAddress});

  Data.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    userName = json['user_name'];
    motherTongue = json['mother_tongue'];
    dob = json['dob'];
    doj = json['doj'];
    gender = json['gender'];
    email = json['email'];
    phone = json['phone'];
    bloodGroup = json['blood_group'];
    religion = json['religion'];
    caste = json['caste'];
    subcaste = json['subcaste'];
    maritalStatus = json['marital_status'];
    maritalStatusId = json['marital_status_id'];
    jobType = json['job_type'];
    nationality = json['nationality'];
    salarytype = json['salarytype'];
    designation = json['designation'];
    qualification = json['qualification'];
    experiences = json['experiences'];
    whatsappNo = json['whatsapp_no'];
    landLineNo = json['land_line_no'];
    photo = json['photo'];
    permanentAddress = json['permanent_address'] != null
        ? PermanentAddress.fromJson(json['permanent_address'])
        : null;
    residentialAddress = json['residential_address'] != null
        ? PermanentAddress.fromJson(json['residential_address'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['code'] = code;
    data['first_name'] = firstName;
    data['last_name'] = lastName;
    data['user_name'] = userName;
    data['mother_tongue'] = motherTongue;
    data['dob'] = dob;
    data['doj'] = doj;
    data['gender'] = gender;
    data['email'] = email;
    data['phone'] = phone;
    data['blood_group'] = bloodGroup;
    data['religion'] = religion;
    data['caste'] = caste;
    data['subcaste'] = subcaste;
    data['marital_status'] = maritalStatus;
    data['marital_status_id'] = maritalStatusId;
    data['job_type'] = jobType;
    data['nationality'] = nationality;
    data['salarytype'] = salarytype;
    data['designation'] = designation;
    data['qualification'] = qualification;
    data['experiences'] = experiences;
    data['whatsapp_no'] = whatsappNo;
    data['land_line_no'] = landLineNo;
    data['photo'] = photo;
    if (permanentAddress != null) {
      data['permanent_address'] = permanentAddress!.toJson();
    }
    if (residentialAddress != null) {
      data['residential_address'] = residentialAddress!.toJson();
    }
    return data;
  }
}

class PermanentAddress {
  String? address;
  Null? city;
  String? country;
  String? state;
  int? countryId;
  int? stateId;
  Null? pinCode;

  PermanentAddress(
      {this.address,
        this.city,
        this.country,
        this.state,
        this.countryId,
        this.stateId,
        this.pinCode});

  PermanentAddress.fromJson(Map<String, dynamic> json) {
    address = json['address'];
    city = json['city'];
    country = json['country'];
    state = json['state'];
    countryId = json['country_id'];
    stateId = json['state_id'];
    pinCode = json['pin_code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['address'] = address;
    data['city'] = city;
    data['country'] = country;
    data['state'] = state;
    data['country_id'] = countryId;
    data['state_id'] = stateId;
    data['pin_code'] = pinCode;
    return data;
  }
}
