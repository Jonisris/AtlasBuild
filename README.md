# AtlasBuild

## Construction Project Management Platform

> **A centralized platform for construction companies to manage projects, control costs, coordinate teams, track materials, monitor payments, and understand project performance.**

**AtlasBuild** is a full-stack business management application designed around the real operational workflow of construction and renovation companies.

It connects **clients, projects, teams, materials, suppliers, expenses, payments, documents, and project progress** in one system.

---

## The Business Problem

Construction projects involve much more than completing physical work.

Management needs to continuously answer questions such as:

* How is each project progressing?
* How much have we spent?
* Where are the costs coming from?
* Are we exceeding the planned budget?
* What materials are available?
* Which materials need to be purchased?
* Who is working on each project?
* Which tasks are delayed?
* How much has each client paid?
* How much remains outstanding?
* What is the estimated margin of each project?

When this information is spread across spreadsheets, paper documents, messaging applications, and separate files, getting a clear picture becomes difficult.

### AtlasBuild's approach

Instead of managing each activity separately, AtlasBuild connects them into one business workflow.

```text
Clients
   ↓
Projects
   ├── Planning & Tasks
   ├── Workers
   ├── Materials
   ├── Suppliers
   ├── Expenses
   ├── Payments
   └── Documents
```

The result is a **single source of truth for project operations and financial monitoring**.

---

# What AtlasBuild Does

AtlasBuild is organized around the complete lifecycle of a construction project:

```text
CLIENT
   ↓
PROJECT
   ↓
CONTRACT & BUDGET
   ↓
PLANNING
   ↓
TEAM ASSIGNMENT
   ↓
MATERIALS & SUPPLIERS
   ↓
EXECUTION
   ↓
EXPENSES & MATERIAL USAGE
   ↓
PROGRESS MONITORING
   ↓
CLIENT PAYMENTS
   ↓
FINANCIAL MONITORING
   ↓
PROJECT COMPLETION
   ↓
FINAL REPORT
```

Each stage contributes information to the next one.

---

# Core Business Capabilities

## 📊 Project Management

Create and manage construction projects with:

* Client information
* Project location and type
* Contract value
* Planned budget
* Start and expected completion dates
* Project status
* Project progress

Management gets a centralized view of each project's operational and financial condition.

---

## 📋 Planning & Progress

Break projects into milestones and tasks.

```text
FOUNDATION
├── Excavation
├── Concrete
└── Waterproofing

STRUCTURE
├── Ground Floor
├── First Floor
└── Roof

FINISHING
├── Flooring
├── Painting
└── Doors
```

Tasks can be assigned to workers and tracked through:

`TODO → IN PROGRESS → COMPLETED / BLOCKED`

Project progress can be derived from the underlying work rather than relying entirely on manually entered percentages.

---

## 💰 Budget & Cost Control

Compare planned spending with actual project expenses.

Example:

| Category  |     Planned |      Actual |    Variance |
| --------- | ----------: | ----------: | ----------: |
| Materials | 300,000 MAD | 327,500 MAD | +27,500 MAD |
| Labor     | 200,000 MAD | 185,000 MAD | -15,000 MAD |
| Equipment |  80,000 MAD |  72,000 MAD |  -8,000 MAD |

This allows management to identify cost overruns while a project is still active.

---

## 🧾 Expense Management

Record project expenses with their business context:

* Project
* Category
* Amount
* Date
* Supplier
* Description
* Supporting receipt
* User who recorded the expense

Supported categories include:

`Materials · Labor · Equipment · Transportation · Subcontracting · Administrative · Other`

Expenses automatically contribute to the project's actual cost.

---

## 📦 Materials & Inventory

Track what enters and leaves the company's inventory.

```text
PURCHASE
+100 bags

PROJECT USAGE
-30 bags

PROJECT USAGE
-20 bags

CURRENT STOCK
50 bags
```

The system maintains a traceable inventory history and can identify materials that reach their minimum stock threshold.

---

## 🤝 Supplier Management

Centralize supplier information and purchasing history.

Track:

* Supplier details
* Contact information
* Materials supplied
* Purchase history
* Projects supplied

This connects purchasing activity to the projects and materials involved.

---

## 👷 Workforce Management

Manage workers and their project assignments.

Workers can be associated with:

* Projects
* Milestones
* Tasks
* Work responsibilities

Access is restricted according to the user's role.

---

## 💳 Client Payments

Track payments received throughout a project.

Example:

```text
Contract Value       850,000 MAD
Payments Received    600,000 MAD
Outstanding          250,000 MAD
```

The outstanding balance is calculated from recorded transactions rather than manually maintained.

---

## 📈 Project Performance

AtlasBuild connects revenue and project costs to provide an estimated project margin.

```text
Contract Value
      -
Actual Project Expenses
      =
Estimated Project Margin
```

Example:

```text
Contract Value       850,000 MAD
Actual Expenses      512,000 MAD
Estimated Margin     338,000 MAD
```

> This represents an estimated project margin, not formal accounting profit.

---

## 📁 Documents

Keep project-related files associated with the correct business context.

Supported documents include:

* Contracts
* Devis
* Invoices
* Receipts
* Technical documents
* Project reports
* Supporting documents

Access to documents is controlled through authorization rules.

---

# Management Dashboard

The dashboard is designed around one question:

> **What needs my attention today?**

Example indicators:

```text
ACTIVE PROJECTS
12

TOTAL CONTRACT VALUE
8,450,000 MAD

TOTAL EXPENSES
5,720,000 MAD

CLIENT PAYMENTS
6,230,000 MAD

OUTSTANDING
2,220,000 MAD
```

The dashboard can highlight:

* Projects over budget
* Low-stock materials
* Overdue payments
* Approaching deadlines
* Blocked tasks
* Other operational alerts

---

# User Roles

AtlasBuild separates information according to business responsibility.

| Role                 | Main Responsibility                                 |
| -------------------- | --------------------------------------------------- |
| **Owner / Director** | Company-wide operations and financial visibility    |
| **Project Manager**  | Project execution, planning, resources and progress |
| **Worker**           | Assigned projects and tasks                         |
| **Client**           | Controlled visibility into their own project        |

A user should only see and modify information relevant to their role.

---

# Business Rules

AtlasBuild is built around business rules rather than simple data entry.

Examples:

* Clients can only access their own projects.
* Workers can only access assigned projects and tasks.
* Project expenses must be attributed to a project.
* Inventory movements must remain consistent.
* Financial totals are calculated from recorded transactions.
* Important actions can be traced to the responsible user.
* Server-side authorization protects restricted resources.

This ensures that the relationships between the data reflect the actual business workflow.

---

# Security

Security is treated as part of the application architecture.

The system is designed to include:

* Secure password hashing
* Session protection
* Role-based access control
* Server-side authorization
* PDO prepared statements
* Input validation
* Output escaping
* CSRF protection
* Secure file-upload validation
* Protection against unauthorized object access
* Rate limiting for sensitive operations
* Secure error handling

> **Hiding a button is not authorization. The server must verify every protected operation.**

---

# Example Business Scenario

A contractor manages a villa project worth **850,000 MAD** with a planned project budget of **650,000 MAD**.

As the project progresses:

```text
Project Progress       78%
Contract Value          850,000 MAD
Actual Expenses         512,000 MAD
Payments Received       600,000 MAD
Outstanding             250,000 MAD
Estimated Margin        338,000 MAD
```

The company also discovers that material spending has reached:

```text
Planned Materials       300,000 MAD
Actual Materials        327,500 MAD
Variance                  +27,500 MAD
```

AtlasBuild connects these events so management can see **what happened, where it happened, and how it affects the project financially**.

---

# Technology

### Frontend

* HTML5
* CSS3
* JavaScript
* Fetch API
* Responsive UI

### Backend

* PHP 8+
* PDO
* Structured PHP / MVC-inspired architecture

### Database

* MySQL / MariaDB

### Data

* Relational data model
* Foreign keys
* Indexes
* Constraints
* Database transactions for critical operations

---

# Architecture

AtlasBuild separates the main application responsibilities:

```text
┌─────────────────────────┐
│      Presentation       │
│     HTML / CSS / JS     │
└────────────┬────────────┘
             ↓
┌─────────────────────────┐
│     Business Logic      │
│     PHP / Services      │
└────────────┬────────────┘
             ↓
┌─────────────────────────┐
│       Data Access       │
│          PDO            │
└────────────┬────────────┘
             ↓
┌─────────────────────────┐
│     MySQL / MariaDB     │
└─────────────────────────┘
```

The architecture is intentionally lightweight while keeping business logic separated from presentation and database access.

---

# Project Scope

## MVP

The initial release focuses on the core business workflow:

* Authentication
* Roles & permissions
* Clients
* Projects
* Milestones & tasks
* Workers
* Suppliers
* Materials
* Inventory
* Expenses
* Payments
* Budget monitoring
* Estimated project margin
* Documents
* Dashboard
* Reports

## Future Development

Potential future modules include:

* Client portal
* Email notifications
* Purchase orders
* Change orders
* Contract adjustments
* Advanced inventory
* Project photo timeline
* Advanced analytics
* Multi-company support
* Mobile / PWA version
* Advanced forecasting

The goal is to stabilize the core business workflow before expanding the platform.

---

# Why AtlasBuild?

AtlasBuild was designed to demonstrate more than the ability to build database-driven pages.

The project focuses on translating a **real business workflow into software**.

It demonstrates experience with:

* Business requirements analysis
* Product thinking
* Relational database design
* Full-stack development
* Authentication & authorization
* Business logic
* Financial calculations
* Inventory management
* Project management
* Document management
* Security
* Reporting
* Responsive interfaces

The important part is not the number of features.

It is the relationship between them.

```text
Expense
   ↓
Project Cost
   ↓
Budget Variance
   ↓
Project Performance
   ↓
Management Decision
```

---

# Documentation

For the complete product requirements, business rules, workflows, technical requirements and implementation scope:

**[→ Product Specification](docs/PRODUCT_SPECIFICATION.md)**

---

# Project Status

**Status:** In Development

AtlasBuild is being developed as a portfolio-grade full-stack business application with a focus on realistic workflows, data integrity, security and practical business value.

---

## Final Product Definition

> **AtlasBuild gives construction companies one place to understand their projects, control their resources, monitor their finances and keep their clients informed.**

**Business first. Connected data. Actionable information.**
