def group_by_marks(marks, pass_marks)
    all_students = Hash.new
    failed = Array.new
    passed = Array.new
  
    marks.each do |student|
  
      if student[1] < pass_marks
        failed.push(student)
      elsif student[1] > pass_marks
        passed.push(student)
      end
    end
      all_students["Failed"] = failed if failed.any?
      all_students["Passed"] = passed if passed.any?
      all_students
  end

Copy code
import React, { useState } from 'react';

function TaskManager() {
  const [tasks, setTasks] = useState([]);

  const handleSubmit = (event) => {
    event.preventDefault();
    const newTask = event.target.task.value;
    setTasks([...tasks, { name: newTask, completed: false }]);
    event.target.reset();
  };

  const handleCompleted = (index) => {
    const newTasks = [...tasks];
    newTasks[index].completed = true;
    setTasks(newTasks);
  };

  const handleDelete = (index) => {
    const newTasks = [...tasks];
    newTasks.splice(index, 1);
    setTasks(newTasks);
  };

  const Task = ({ task, index }) => {
    return (
      <div>
        <span>{task.name}</span>
        {!task.completed && (
          <button onClick={() => handleCompleted(index)}>Complete</button>
        )}
        <button onClick={() => handleDelete(index)}>Delete</button>
      </div>
    );
  };

  return (
    <div>
      <h1>Task Manager</h1>
      <form onSubmit={handleSubmit}>
        <input type="text" name="task" />
        <button type="submit">Add Task</button>
      </form>
      {tasks.map((task, index) => (
        <Task key={index} task={task} index={index} />
      ))}
    </div>
  );
}

export default TaskManager;
