
# To-Do List CLI App

A simple command-line Java application to manage your tasks efficiently. Add, remove, mark tasks as done, and save/load them to a file.

---

## Features

* Add new tasks with a description.
* Remove tasks by their number.
* Mark tasks as completed.
* View all tasks (pending and completed).
* Save and load tasks from a local file (`tasks.txt`).
* Simple and intuitive command-line interface.

---

## Prerequisites

* Java JDK 8 or higher installed on your system.
* Basic understanding of running Java programs from the terminal.

---

## Getting Started

### Clone the repository

```bash
git clone <your-repo-url>
cd todo-cli-java
```

### Compile the project

```bash
javac Main.java
```

### Run the application

```bash
java Main
```

---

## Usage

1. **Add a Task:**
   Enter the task description when prompted.

2. **View Tasks:**
   See a numbered list of tasks with their completion status.

3. **Mark Task as Done:**
   Enter the task number to mark it completed.

4. **Remove Task:**
   Enter the task number to remove it from the list.

5. **Exit:**
   All tasks are automatically saved to `tasks.txt`.

---

## Project Structure

```
├── Main.java          # Entry point of the application
├── Task.java          # Task class definition
├── tasks.txt          # File storing all tasks
└── README.md
```

---

## Contributing

Contributions are welcome!

1. Fork the repository.
2. Create a feature branch (`git checkout -b feature/my-feature`).
3. Commit your changes (`git commit -m 'Add some feature'`).
4. Push to the branch (`git push origin feature/my-feature`).
5. Open a Pull Request.

---

## License

This project is licensed under the MIT License – see the [LICENSE](LICENSE) file for details.

