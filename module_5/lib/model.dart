class Task {
  int? id;
  String name;
  String description;
  String date; // YYYY-MM-DD
  String time; // HH:MM
  int priority; // 0: low, 1: average, 2: high
  bool isCompleted;

  Task({
    this.id,
    required this.name,
    required this.description,
    required this.date,
    required this.time,
    required this.priority,
    this.isCompleted = false,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'date': date,
      'time': time,
      'priority': priority,
      'isCompleted': isCompleted ? 1 : 0,
    };
  }

  factory Task.fromMap(Map<String, dynamic> map) {
    return Task(
      id: map['id'],
      name: map['name'],
      description: map['description'],
      date: map['date'],
      time: map['time'],
      priority: map['priority'],
      isCompleted: map['isCompleted'] == 1,
    );
  }
}
