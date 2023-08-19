class TaskList {
  late final String status, title;

  TaskList({required this.title, required this.status});
}
List<TaskList> ListTask = [

  TaskList(title: "Buy Food", status: "complete"),
  TaskList(title: "GYM", status:"incomplete"),
  TaskList(title: "Invest", status:"incomplete"),
];