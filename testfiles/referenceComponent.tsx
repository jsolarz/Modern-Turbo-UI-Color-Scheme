// React TSX Reference File for Theme Testing

import React, { useState, useEffect } from "react";

type Theme = "light" | "dark";

interface Props {
    initialCount?: number;
}

export const Counter: React.FC<Props> = ({ initialCount = 0 }) => {
    const [count, setCount] = useState<number>(initialCount);
    const [theme, setTheme] = useState<Theme>("dark");

    useEffect(() => {
        console.log("Theme changed:", theme);
    }, [theme]);

    const increment = () => setCount(c => c + 1);
    const decrement = () => setCount(c => c - 1);

    return (
        <div className={`counter counter--${theme}`}>
            <h1>Nord Turbo React Counter</h1>
            <p>Count: <strong>{count}</strong></p>

            <button onClick={increment}>+</button>
            <button onClick={decrement}>-</button>

            <label>
                Theme:
                <select
                    value={theme}
                    onChange={e => setTheme(e.target.value as Theme)}
                >
                    <option value="dark">Dark</option>
                    <option value="light">Light</option>
                </select>
            </label>
        </div>
    );
};
