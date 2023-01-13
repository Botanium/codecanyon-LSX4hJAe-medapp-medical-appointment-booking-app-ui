import 'dart:convert';

class Notification {
  int? id;
  String? title;
  String? body;
  String? icon;
  String? date;

  Notification({
    this.id,
    this.title,
    this.body,
    this.icon,
    this.date,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'body': body,
      'icon': icon,
      'date': date,
    };
  }

  factory Notification.fromMap(Map<String, dynamic>? map) {
    if (map == null) return Notification();

    return Notification(
      id: map['id'],
      title: map['title'],
      body: map['body'],
      icon: map['icon'],
      date: map['date'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Notification.fromJson(String source) =>
      Notification.fromMap(json.decode(source));
}

final notifications = [
  Notification(
    title: 'Appointment reminder',
    body: 'Don\'t forget your next appointment with the Lawyer Tawfiq tomorrow',
    icon: 'assets/images/reminder.png',
    date: '2h',
  ),
  Notification(
    title: 'Legal tips',
    body: 'Always consult your lawyer.',
    icon: 'assets/images/tip.png',
    date: '1d',
  ),
  Notification(
    title: 'Appointment confirmation',
    body: 'Lawyer Tawfiq Bahri confirmed your booking appointment',
    icon: 'assets/images/confirmation.png',
    date: '1d',
  ),
  Notification(
    title: 'Legal Follow up Reminder',
    body: 'Don\'t forget to submit your documents on time',
    icon: 'assets/images/reminder.png',
    date: '1 week',
  ),
  Notification(
    title: 'Appointment Reminder',
    body: 'Contact Lawyer Liana about the last visit agreement',
    icon: 'assets/images/reminder.png',
    date: '1 week',
  ),
];
