class CertificateListModel {
  String? certificateId;
  String? studentName;
  String? issueDate;
  String? eventName;
  String? organizerName;
  String? searchId;

  CertificateListModel(
      {this.certificateId,
      this.studentName,
      this.issueDate,
      this.eventName,
      this.organizerName,
      this.searchId});

  CertificateListModel.fromJson(Map<String, dynamic> json) {
    certificateId = json['certificate_id'];
    studentName = json['student_name'];
    issueDate = json['issue_date'];
    eventName = json['event_name'];
    organizerName = json['organizer_name'];
    searchId = json['search_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['certificate_id'] = this.certificateId;
    data['student_name'] = this.studentName;
    data['issue_date'] = this.issueDate;
    data['event_name'] = this.eventName;
    data['organizer_name'] = this.organizerName;
    data['search_id'] = this.searchId;
    return data;
  }
}
