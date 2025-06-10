# readme

Each token is a diagram block. The input represents a sample silhouette drakon/wyvern diagram with non-standard connections.

## input

```
1  "start"
  2H1 {
    2H11 "Hello"
    2H12 ","
    2H13 "World"
    2H13 "!"
    2H2
  }
  2H2 {
    2H21 "action"
  }
3  "end"
```

## output

```
[
  "block: 1  \"start\"",
    "solo identifier: 2H1","opening curly bracket",
      "block: 2H11 \"Hello\"",
      "block: 2H12 \",\"",
      "block: 2H13 \"World\"",
      "block: 2H13 \"!\"",
      "solo identifier: 2H2",
    "closing curly bracket",
    "solo identifier: 2H2","opening curly bracket",
      "block: 2H21 \"action\"",
    "closing curly bracket",
  "block: 3  \"end\""
]
```
