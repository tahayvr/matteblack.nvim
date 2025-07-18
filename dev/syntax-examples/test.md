# Theme Test File for Markdown

This file showcases various Markdown syntax elements to test your theme's text highlighting.

<!-- This is an HTML comment -->

---

## Text Formatting

This is a paragraph with **bold text**, _italic text_, and `inline code`.
You can also use ~~strikethrough~~.

A link to the [Neovim website](https://neovim.io).

> This is a blockquote. It's often used for quoting text from another source.
> It can span multiple lines.

## Lists

### Unordered List

- Item 1
- Item 2
  - Nested item 2a
  - Nested item 2b
- Item 3

### Ordered List

1. First item
2. Second item
3. Third item

### Task List

- [x] Completed task
- [ ] Incomplete task

## Code Blocks

Here is an inline code block for Python:

```python
def hello(name: str) -> None:
    """A simple function."""
    print(f"Hello, {name}!")

hello("World")
```

And here is one for JavaScript:

```javascript
const greet = (name) => {
  console.log(`Hello, ${name}!`);
};
```

## Tables

| Header 1 | Header 2 | Header 3 |
| :------- | :------: | -------: |
| Align L  |  Center  |  Align R |
| Cell 1   |  Cell 2  |   Cell 3 |
| Cell 4   |  Cell 5  |   Cell 6 |

## Horizontal Rule

---

---

---

## Deliberate Syntax Error

This is not standard Markdown and might be highlighted differently or not at all.
\*Unclosed bold text...

```
Unclosed code block
```
