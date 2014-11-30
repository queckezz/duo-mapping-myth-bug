
# duo-mapping-myth-bug

This repo demonstrates the bug with duo not able to pick up any dependencies when using `duo-myth`.

Running the following make adds myth as a plugin to duo. As a result it does not add any dependencies to `duo.json`
```bash
make build-myth
```

```json
{
  "lib/index.css": {
    "id": "lib/index.css",
    "type": "css",
    "mtime": 1417375901582,
    "src": "...",
    "deps": {},
    "entry": true
  }
}
```

Without `duo-myth` it works just as expected
```bash
make build
```

```json
{
  "lib/index.css": {
    "id": "lib/index.css",
    "type": "css",
    "mtime": 1417375901582,
    "src": "...",
    "deps": {
      "./button.css": "lib/button.css",
      "./checkbox.css": "lib/checkbox.css"
    },
    "entry": true
  },
  "lib/button.css": {
    "id": "lib/button.css",
    "type": "css",
    "mtime": 1417375756682,
    "src": "...",
    "deps": {}
  },
  "lib/checkbox.css": {
    "id": "lib/checkbox.css",
    "type": "css",
    "mtime": 1417375773170,
    "src": "...",
    "deps": {}
  }
}
```