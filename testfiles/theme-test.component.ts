// Angular Reference Component for Theme Testing

import { Component, OnInit } from "@angular/core";

interface Todo {
    id: number;
    title: string;
    done: boolean;
}

@Component({
    selector: "app-theme-test",
    templateUrl: "./theme-test.component.html",
    styleUrls: ["./theme-test.component.css"]
})
export class ThemeTestComponent implements OnInit {
    title = "Nord Turbo Angular";
    todos: Todo[] = [];
    filter: "all" | "active" | "completed" = "all";

    ngOnInit(): void {
        this.todos = [
            { id: 1, title: "Test theme colors", done: false },
            { id: 2, title: "Compare with Turbo Pascal", done: true }
        ];
    }

    addTodo(title: string): void {
        if (!title.trim()) return;
        const id = Date.now();
        this.todos.push({ id, title, done: false });
    }

    toggle(todo: Todo): void {
        todo.done = !todo.done;
    }

    get filteredTodos(): Todo[] {
        switch (this.filter) {
            case "active":
                return this.todos.filter(t => !t.done);
            case "completed":
                return this.todos.filter(t => t.done);
            default:
                return this.todos;
        }
    }
}
