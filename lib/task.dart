class Task {
  final int id;
  final int deadline;
  final String title;
  final String description;
  Task({required this.id,required this.title,required this.description,required this.deadline});

  Map<String, dynamic> toMap() {
    return {
      'id' : id,
      'title' : title,
      'description' : description,
      'deadline' : deadline,
    };
  }
}