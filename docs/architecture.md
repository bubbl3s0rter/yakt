# Architecture

> Living document. Update diagrams when structure changes.

---

## System Context

Who and what interacts with this system.

```mermaid
C4Context
  title System Context

  Person(user, "User", "Description of the user")
  System(system, "System Name", "What the system does")
  System_Ext(ext, "External System", "e.g. database, API, service")

  Rel(user, system, "Uses")
  Rel(system, ext, "Calls")
```

---

## Components

Key internal modules and their responsibilities.

```mermaid
C4Component
  title Components

  Container_Boundary(app, "Application") {
    Component(a, "Component A", "technology", "responsibility")
    Component(b, "Component B", "technology", "responsibility")
    Component(c, "Component C", "technology", "responsibility")
  }

  Rel(a, b, "calls")
  Rel(b, c, "reads/writes")
```

---

## Data Flows

How data moves through the system.

```mermaid
flowchart LR
  input([Input]) --> a[Component A]
  a --> b[Component B]
  b --> store[(Store)]
  store --> c[Component C]
  c --> output([Output])
```

---

## Sequences

Key interactions over time.

### Happy Path

```mermaid
sequenceDiagram
  actor User
  participant A as Component A
  participant B as Component B

  User->>A: request
  A->>B: process
  B-->>A: result
  A-->>User: response
```

### Error Case

```mermaid
sequenceDiagram
  actor User
  participant A as Component A
  participant B as Component B

  User->>A: request
  A->>B: process
  B-->>A: error
  A-->>User: error response
```
