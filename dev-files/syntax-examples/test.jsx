/**
 * Theme Test File for React (JSX)
 * This file contains various React and JSX syntax elements.
 */

// --- Imports ---
import React, { useState, useEffect, Component } from 'react';
import './App.css'; // Example of a CSS import

// --- Type Definition (for props) ---
type HeaderProps = {
  title: string;
};

// --- Functional Component with Hooks ---
const Header: React.FC<HeaderProps> = ({ title }) => {
  // @tag: JSX tags
  return (
    <header className="app-header">
      {/* @text.title: `h1` is a title */}
      <h1>{title}</h1>
    </header>
  );
};

// --- Main App Component

function App() {
  // --- State with Hooks ---
  // @function.call: `useState` is a function call
  const [count, setCount] = useState<number>(0);
  const [itemName, setItemName] = useState<string>('');
  const [items, setItems] = useState<string[]>(['Learn React', 'Test Theme']);

  // --- Effect Hook ---
  useEffect(() => {
    // This runs after the component mounts
    document.title = `You clicked ${count} times`;
  }, [count]); // Dependency array

  // --- Event Handler ---
  const handleAddItem = (e: React.FormEvent) => {
    e.preventDefault();
    if (!itemName) return; // @keyword: `return`
    setItems([...items, itemName]);
    setItemName('');
  };

  return (
    // @tag: React Fragment shorthand
    <>
      <Header title="React Theme Tester" />
      <main className="container">
        <div className="card">
          <p>You clicked {count} times.</p>
          {/* @tag.attribute: `onClick` is an attribute/prop */}
          <button onClick={() => setCount(count + 1)}>
            Click me
          </button>
        </div>

        {/* --- List Rendering --- */}
        <div className="card">
          <h2>Todo List</h2>
          <ul>
            {items.map((item, index) => (
              // `key` is a special prop
              <li key={index}>{item}</li>
            ))}
          </ul>
        </div>

        {/* --- Form and Data Binding --- */}
        <div className="card">
          <form onSubmit={handleAddItem}>
            <input
              type="text"
              value={itemName}
              onChange={(e) => setItemName(e.target.value)}
              placeholder="Add new item..."
            />
            <button type="submit">Add Item</button>
          </form>
        </div>

        {/* --- Conditional Rendering --- */}
        {count > 5 && (
          <p style={{ color: 'green', fontWeight: 'bold' }}>
            You are on a clicking spree!
          </p>
        )}
      </main>

      {/* --- Deliberate Syntax Error --- */}
      {/* Remove the comment markers to test LSP diagnostics */}
      {/* <div className="error" style={{,}}>Invalid style</div> */}
    </>
  );
}

// --- Class Component Example ---
class LegacyCounter extends Component<{}, { count: number }> {
  // @constructor
  constructor(props: {}) {
    super(props);
    // @variable.builtin: `this`
    this.state = { count: 0 };
  }

  // Lifecycle method
  componentDidMount() {
    console.log("LegacyCounter mounted.");
  }

  render() {
    return (
      <div>
        <p>Legacy Count: {this.state.count}</p>
      </div>
    );
  }
}


export default App;
