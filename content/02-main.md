# Example document

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis vel est viverra lectus mattis scelerisque sed in velit. Phasellus risus eros, accumsan ac lectus ut, convallis convallis libero.

## Writing math

This is another paragraph with an inline math formula $2+2=4$. We can also use display math:

$$
2+2=4
$$

## Using citations

This is a citation [@examplearticle].

## Images

![Description \label{fig:1}](./images/test.jpg){ width=70% }

We can add images and then reference them as \ref{fig:1}

## Code

This is a code block:

```javascript
const foo = 2;
const bar = 2;
const foobar = foo + bar;
console.log(foobar);
```

## Tables

Here's a table:

| Left aligned | Center aligned | Right aligned |
| :----------- | :------------: | ------------: |
| Apple        |    1234.56     |           $12 |
| Pear         |     234.56     |            $2 |
| Orange       |      3.09      |            $3 |

## Using raw Latex

For things that can't be done with Markdown, we can just use raw Latex commands such as `\begin{align}`:

\begin{align}
2+2 = 4 \\
4+4 = 8
\end{align}
