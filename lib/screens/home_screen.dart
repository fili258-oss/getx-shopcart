import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/controllers/task_controller.dart';
import 'package:getx_app/models/task.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final TaskController taskController = Get.put(TaskController());
  final TextEditingController _taskTitleController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Carrito de compras'),
      ),

      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Obx(
                () => ListView.builder(
                  itemCount: taskController.tasks.length,
                  itemBuilder: (context, index) {
                    Task task = taskController.tasks[index];
                    return ListTile(
                      title: Text(task.title),
                      trailing: IconButton(
                        icon: const Icon(Icons.delete),
                        onPressed: () {
                          taskController.deleteTask(index);
                        },
                      ),
                    );
        
                  },
        
              ),) 
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _taskTitleController,
                decoration: InputDecoration(
                  labelText: 'New task',
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.add),
                    onPressed: () {
                      taskController.addTask(_taskTitleController.text);
                      _taskTitleController.clear();
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}