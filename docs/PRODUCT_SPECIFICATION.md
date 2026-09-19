# ATLASBUILD

## Construction Project Management Platform

> **A centralized digital platform that helps construction companies manage projects, control costs, coordinate teams, track materials, monitor client payments, and understand project profitability.**

---

# 1. Executive Summary

## 1.1 What is AtlasBuild?

AtlasBuild is a web-based management platform designed for construction and renovation companies.

The platform brings the company's most important operational and financial information into one place:

**Clients → Projects → Teams → Materials → Suppliers → Expenses → Payments → Documents**

Instead of managing this information through disconnected spreadsheets, paper documents, messaging applications and separate files, AtlasBuild provides a centralized system where information is connected and updated as the project progresses.

---

## 1.2 The Business Problem

A construction company does not only need to know whether a project is progressing.

It also needs to know:

* How much the project should cost
* How much has already been spent
* Where the money was spent
* How much material remains
* Which workers are assigned
* Which tasks are delayed
* Which suppliers are involved
* How much the client has paid
* How much remains to be collected
* Whether the project remains financially viable

When this information is scattered across different tools, management spends time manually collecting and comparing information.

This creates risks such as:

* Budget overruns being discovered too late
* Missing or duplicated information
* Poor visibility into expenses
* Stock shortages
* Delayed tasks
* Forgotten payments
* Difficulty determining project profitability

### AtlasBuild's purpose

AtlasBuild creates a **single source of truth** for project operations and financial monitoring.

---

# 2. Business Objectives

AtlasBuild is designed around six main business objectives.

## Objective 1 — Centralize information

All important project information should be accessible from one platform.

## Objective 2 — Control project costs

Management should be able to compare planned budgets with actual expenses.

## Objective 3 — Improve project visibility

Managers should immediately understand the current state of every project.

## Objective 4 — Control resources

Workers, materials and suppliers should be linked to the projects where they are used.

## Objective 5 — Improve financial visibility

The company should know how much has been paid, how much remains, and how project expenses affect profitability.

## Objective 6 — Improve client transparency

Clients should be able to access approved information about their projects without gaining access to internal company information.

---

# 3. Target Business

AtlasBuild is intended primarily for:

* Construction companies
* Building contractors
* General contractors
* Renovation companies
* Property development teams
* Small and medium-sized BTP businesses

The initial product is designed around the workflow of a Moroccan construction company, while the underlying structure can be adapted to other markets.

---

# 4. Users & Business Responsibilities

AtlasBuild separates users according to their responsibilities inside the company.

---

## 4.1 Owner / Director

### Business responsibility

The owner needs a global view of the company without having to inspect every individual operation.

### AtlasBuild provides

* Company-wide dashboard
* All active projects
* Contract values
* Total expenses
* Client payments
* Outstanding amounts
* Project margins
* Budget alerts
* Supplier information
* Employee management
* Reports

### Main business question

> **"How is my company and each project performing financially?"**

---

# 4.2 Project Manager

### Business responsibility

The project manager is responsible for making sure assigned projects progress according to schedule, budget and resource requirements.

### AtlasBuild provides

* Project management
* Milestones
* Tasks
* Worker assignments
* Material requests
* Expense recording
* Project documents
* Progress tracking
* Project photos

### Main business question

> **"What needs to be done, who is doing it, what resources are required, and are we on schedule?"**

---

# 4.3 Worker

### Business responsibility

Workers need access only to information required to perform their assigned work.

### AtlasBuild provides

* Assigned projects
* Assigned tasks
* Task details
* Deadlines
* Instructions
* Task status updates

### Main business question

> **"What work am I responsible for?"**

Workers cannot access unrelated financial or administrative information.

---

# 4.4 Client

### Business responsibility

The client needs visibility into their own project without seeing the company's internal operations.

### AtlasBuild provides

* Project progress
* Milestones
* Approved documents
* Invoices
* Payment history
* Project photos
* Important project updates

### Main business question

> **"Where does my project stand, and what has been completed?"**

---

# 5. AtlasBuild Business Workflow

The platform follows the lifecycle of a construction project.

```text
CLIENT
   ↓
PROJECT CREATED
   ↓
CONTRACT & BUDGET DEFINED
   ↓
PROJECT PLAN CREATED
   ↓
WORKERS ASSIGNED
   ↓
MATERIALS & SUPPLIERS ORGANIZED
   ↓
WORK BEGINS
   ↓
EXPENSES & MATERIAL USAGE RECORDED
   ↓
PROJECT PROGRESSES
   ↓
CLIENT PAYMENTS RECEIVED
   ↓
FINANCIAL & PROGRESS MONITORING
   ↓
PROJECT COMPLETED
   ↓
FINAL REPORT
```

The goal is to connect each stage instead of treating it as a separate activity.

---

# 6. Project Management

## Business purpose

A construction company may manage several projects simultaneously.

Each project needs its own operational, financial and documentary context.

AtlasBuild creates a centralized workspace for each project.

---

## Project information

Each project contains:

* Project name
* Project type
* Location
* Client
* Description
* Contract value
* Planned budget
* Start date
* Expected completion date
* Current status

### Project statuses

```text
PLANNING
ACTIVE
PAUSED
COMPLETED
CANCELLED
```

---

## Project overview

The project page should provide a summary such as:

```text
VILLA CASABLANCA

Client
Ahmed Benali

Contract value
850,000 MAD

Planned budget
650,000 MAD

Actual expenses
512,000 MAD

Client payments
600,000 MAD

Project progress
78%

Expected completion
15 December 2026
```

The manager should be able to understand the project's condition without opening multiple pages.

---

# 7. Project Planning & Progress

## Business purpose

Construction projects consist of multiple stages.

Management needs to know not only whether a project is active, but exactly which stages are complete, delayed or blocked.

---

## Milestones

Example:

```text
FOUNDATION
├── Excavation
├── Concrete
└── Waterproofing

STRUCTURE
├── Ground floor
├── First floor
└── Roof

FINISHING
├── Flooring
├── Painting
└── Doors
```

---

## Tasks

Each task contains:

* Title
* Description
* Assigned worker
* Start date
* Deadline
* Priority
* Status

### Task statuses

```text
TODO
IN_PROGRESS
COMPLETED
BLOCKED
```

---

## Progress calculation

Project progress should be calculated from the project's tasks or milestones.

It should not simply be a manually entered percentage.

This allows the dashboard to reflect actual operational progress.

---

# 8. Budget & Cost Control

## Business purpose

One of the most important responsibilities of construction management is controlling project costs.

The company needs to know when actual spending begins to exceed planned spending.

---

## Project budget

Example:

```text
Contract value       850,000 MAD
Planned budget       650,000 MAD

Materials            300,000 MAD
Labor                200,000 MAD
Equipment             80,000 MAD
Other expenses        70,000 MAD
```

---

## Budget monitoring

AtlasBuild compares planned and actual costs.

```text
CATEGORY        PLANNED       ACTUAL       VARIANCE

Materials       300,000       327,500       +27,500
Labor           200,000       185,000       -15,000
Equipment        80,000        72,000        -8,000
```

The platform should identify categories where spending exceeds the planned amount.

### Business value

Instead of discovering a budget problem at the end of a project, management can identify cost overruns while there is still time to react.

---

# 9. Expense Management

## Business purpose

Every project expense affects the project's financial result.

The company therefore needs a reliable record of where money is being spent.

---

## Expense information

Each expense contains:

* Project
* Category
* Amount
* Date
* Supplier
* Description
* Supporting receipt/document
* User who recorded it

### Example

```text
2,450 MAD
Materials
Villa Casablanca
Supplier: XYZ
19/09/2026
Cement + sand
Receipt attached
```

---

## Expense categories

Examples:

* Materials
* Labor
* Equipment
* Transportation
* Subcontracting
* Administrative
* Other

Expenses automatically contribute to the project's actual cost.

---

# 10. Supplier Management

## Business purpose

Construction companies depend heavily on suppliers.

AtlasBuild centralizes supplier information and purchasing history.

---

## Supplier information

* Company name
* Contact person
* Phone
* Email
* Address
* Business information
* Materials supplied
* Purchase history

---

## Supplier history

Example:

```text
SUPPLIER XYZ

Total purchases
182,400 MAD

Projects supplied
7

Last purchase
19 September 2026
```

This allows management to understand purchasing activity without searching through individual project files.

---

# 11. Materials & Inventory

## Business purpose

Materials are a major project cost.

The company needs to know:

* What was purchased?
* What was used?
* What remains?
* Where was it used?
* When should more be purchased?

---

## Material information

Each material contains:

* Name
* Category
* Unit
* Current stock
* Minimum stock threshold
* Supplier
* Unit price

---

## Inventory movements

Every stock change must be recorded.

Example:

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

This creates a traceable history.

---

## Low-stock monitoring

When stock reaches the configured minimum threshold:

```text
⚠ LOW STOCK

Cement
Current stock: 45 bags
Minimum: 50 bags
```

The system should notify authorized users.

---

# 12. Workforce Management

## Business purpose

The company needs to know who is working on which project and how labor contributes to project costs.

---

## Worker information

* Name
* Phone
* Email
* Position
* Employment status
* Rate/salary information
* Assigned projects

---

## Project assignments

Workers can be assigned to projects and tasks.

Example:

```text
PROJECT
Villa Casablanca

WORKERS

Ahmed
Mason
Assigned

Youssef
Electrician
Assigned

Omar
Plumber
Assigned
```

Work performed should be associated with the relevant project.

---

# 13. Client Management

## Business purpose

A client may have one or several projects with the company.

AtlasBuild keeps the client's history centralized.

---

## Client information

* Full name / company name
* Phone
* Email
* Address
* Business information where applicable
* Notes
* Projects
* Payment history
* Documents

---

## Client history

```text
AHMED BENALI

PROJECTS
├── Villa Casablanca
└── Apartment Rabat

PAYMENTS
├── 150,000 MAD
├── 200,000 MAD
└── 250,000 MAD

DOCUMENTS
├── Contract
├── Devis
└── Invoices
```

---

# 14. Client Payments

## Business purpose

Construction companies often receive payments progressively throughout a project.

Management must know exactly how much has been collected and what remains outstanding.

---

## Payment information

* Client
* Project
* Amount
* Date
* Payment method
* Reference
* Notes
* Supporting document

---

## Automatic balance

Example:

```text
Contract value       850,000 MAD
Payments received    600,000 MAD
Outstanding          250,000 MAD
```

The outstanding balance is calculated automatically from recorded transactions.

---

# 15. Project Profitability

## Business purpose

Revenue alone does not indicate whether a project is financially successful.

The company needs to compare the contract value with the actual cost of completing the project.

---

## Basic calculation

```text
Contract value
       -
Actual project expenses
       =
Estimated project margin
```

Example:

```text
Contract value       850,000 MAD
Actual expenses      512,000 MAD
Estimated margin     338,000 MAD
```

The value changes automatically as new expenses are recorded.

---

# 16. Documents

## Business purpose

Construction projects generate many documents.

Documents should be stored with the relevant project instead of being scattered across computers and messaging applications.

---

## Supported documents

Examples:

* Contracts
* Devis
* Invoices
* Receipts
* Technical documents
* Project reports
* Supporting documents

---

## Document information

Each document contains:

* File name
* File type
* File size
* Upload date
* Uploaded by
* Related project
* Document category

---

# 17. Client Portal

## Business purpose

The company can give clients controlled visibility into their projects.

This reduces the need for clients to repeatedly ask:

> "Where are we with the project?"

---

## Client dashboard

```text
YOUR PROJECT

Villa Casablanca

Progress
████████████░░░░ 78%

Expected completion
15 December 2026

Current milestone
Interior finishing
```

The client can access:

* Progress
* Milestones
* Payment history
* Invoices
* Approved documents
* Project photos

Internal company information remains private.

---

# 18. Company Dashboard

## Business purpose

The owner should be able to understand the company situation at a glance.

---

## Main indicators

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

---

## Operational alerts

The dashboard should identify situations requiring attention.

Examples:

```text
⚠ Project X is over budget

⚠ Invoice #104 is overdue

⚠ Cement stock is low

⚠ Project Y deadline approaching

⚠ 3 tasks are blocked
```

The dashboard is intended to answer:

> **"What needs my attention today?"**

---

# 19. Reports

## Business purpose

Management needs reports that can be shared internally or with clients.

---

## Project financial report

Contains:

* Contract value
* Planned budget
* Actual expenses
* Material costs
* Labor costs
* Other expenses
* Payments received
* Outstanding balance
* Estimated margin

---

## Project progress report

Contains:

* Completed tasks
* Pending tasks
* Delayed tasks
* Progress
* Workers
* Important dates
* Project information

Reports should be exportable as PDF.

---

# 20. Notifications

## Business purpose

Important events should not require users to constantly inspect every project.

AtlasBuild generates notifications for situations requiring attention.

Examples:

```text
⚠ Material stock is low.

⚠ Project is over budget.

⚠ Invoice is overdue.

✓ Payment received.

✓ Task completed.

⚠ Project deadline approaching.
```

The first version uses in-app notifications.

Email notifications can be added later.

---

# 21. Business Rules

The platform must enforce business rules that protect data consistency.

### BR-01 — Role-based access

Users can only access information allowed by their role.

### BR-02 — Client privacy

A client can only access their own projects and information.

### BR-03 — Worker privacy

Workers can only access projects and tasks assigned to them.

### BR-04 — Inventory integrity

Stock cannot become negative unless the company explicitly allows negative inventory.

### BR-05 — Payment integrity

Recorded payments cannot exceed the contract value unless an authorized adjustment exists.

### BR-06 — Expense attribution

Every project expense must belong to a project.

### BR-07 — Automatic financial calculations

Balances, totals and margins are calculated from transactions rather than manually entered.

### BR-08 — Traceability

Important financial, inventory and administrative actions should record who performed the action and when.

---

# 22. Security & Data Protection

Security is part of the product design rather than an optional feature.

The application should protect:

* Client information
* Financial information
* User accounts
* Documents
* Internal company data
* Project information

### Security measures

* Password hashing
* PDO prepared statements
* Input validation
* Output escaping
* CSRF protection
* Session protection
* Server-side authorization
* Role-based access control
* Secure file-upload validation
* Protection against unauthorized resource access
* Rate limiting for sensitive endpoints
* Secure error handling

### Important principle

Hiding a button in the interface is **not** considered authorization.

The server must independently verify whether the current user has permission to perform an operation.

---

# 23. Data Model

AtlasBuild is based on a relational database.

The initial domain model includes:

```text
USERS
ROLES
PERMISSIONS

CLIENTS
PROJECTS
PROJECT_MEMBERS

MILESTONES
TASKS

WORKERS

SUPPLIERS

MATERIALS
INVENTORY_MOVEMENTS

EXPENSES
PAYMENTS

DOCUMENTS

NOTIFICATIONS
```

Relationships connect operational and financial information.

For example:

```text
CLIENT
   ↓
PROJECT
   ├── TASKS
   ├── WORKERS
   ├── MATERIALS
   ├── EXPENSES
   ├── PAYMENTS
   └── DOCUMENTS
```

The final schema may evolve during implementation.

---

# 24. Technical Architecture

The technical implementation remains intentionally lightweight.

## Frontend

```text
HTML5
CSS3
JavaScript
```

The interface must be:

* Responsive
* Accessible
* Consistent
* Usable on desktop
* Usable on tablet
* Usable on mobile

---

## Backend

```text
PHP 8+
PDO
```

The application should maintain separation between:

```text
Presentation
       ↓
Business Logic
       ↓
Data Access
       ↓
MySQL
```

An MVC-inspired structure may be used without requiring a framework.

---

## Database

```text
MySQL / MariaDB
```

The database should use:

* Primary keys
* Foreign keys where appropriate
* Indexes
* Constraints
* Appropriate data types
* Transaction handling for critical operations

---

## Frontend ↔ Backend communication

Dynamic operations may use:

```text
Fetch API
AJAX
JSON
```

Examples:

```text
Live search
Dynamic filters
Cart-like interactions
Notifications
Dashboard data
Async form submissions
```

---

# 25. Recommended Application Structure

A possible structure:

```text
atlasbuild/
│
├── public/
│   ├── index.php
│   ├── login.php
│   ├── dashboard.php
│   └── assets/
│
├── app/
│   ├── Controllers/
│   ├── Models/
│   ├── Services/
│   ├── Middleware/
│   └── Helpers/
│
├── config/
│
├── database/
│   ├── migrations/
│   └── seeders/
│
├── api/
│
├── storage/
│
└── docs/
```

The exact structure can evolve during implementation.

---

# 26. MVP

The first release should focus on the core business workflow.

## Included

### Authentication

* Login
* Logout
* User management
* Roles
* Permissions

### Clients

* Create
* Edit
* View
* Search
* Client history

### Projects

* Create
* Edit
* View
* Status
* Budget
* Timeline

### Tasks

* Milestones
* Tasks
* Assignments
* Status
* Deadlines
* Progress

### Workforce

* Workers
* Project assignments

### Suppliers

* Supplier profiles
* Purchase history

### Materials

* Material catalog
* Inventory
* Stock movements
* Low-stock alerts

### Finance

* Expenses
* Payments
* Budget tracking
* Outstanding balances
* Estimated project margin

### Documents

* Upload
* Categorize
* View
* Download

### Dashboard

* Company overview
* Project overview
* Financial indicators
* Alerts

### Reports

* Project financial report
* Project progress report
* PDF export

---

# 27. Future Development

The following features are intentionally outside the initial MVP.

## Phase 2

* Client portal
* Email notifications
* Purchase orders
* Advanced inventory management
* Project photo timeline
* More advanced reports

## Phase 3

* Multi-company support
* Advanced analytics
* Mobile/PWA version
* Automated recurring reports
* Supplier performance analysis
* Advanced financial forecasting

The roadmap should only expand after the core workflow is stable.

---

# 28. Example: Complete Project Scenario

To demonstrate how the system works as a business product, consider the following scenario.

### Step 1 — Client

Ahmed Benali contacts AtlasBuild for the construction of a villa.

The company creates the client profile.

---

### Step 2 — Project

The company creates:

```text
Villa Casablanca

Contract:
850,000 MAD

Planned budget:
650,000 MAD
```

---

### Step 3 — Planning

The project manager creates milestones:

```text
Foundation
Structure
Electrical
Plumbing
Finishing
```

Workers are assigned to the relevant tasks.

---

### Step 4 — Materials

The company purchases:

```text
Cement
Steel
Sand
Tiles
Electrical equipment
```

Purchases are recorded against the project and inventory.

---

### Step 5 — Expenses

As work progresses, the project manager records expenses.

```text
Materials
Labor
Transportation
Equipment
```

The project budget automatically updates.

---

### Step 6 — Client payment

The client pays:

```text
200,000 MAD
```

The payment is recorded.

The system calculates:

```text
Paid:       200,000 MAD
Remaining: 650,000 MAD
```

---

### Step 7 — Monitoring

After several weeks:

```text
Project progress       78%
Contract value          850,000 MAD
Actual expenses         512,000 MAD
Payments received       600,000 MAD
Outstanding             250,000 MAD
Estimated margin        338,000 MAD
```

The owner can immediately understand the project's financial and operational position.

---

### Step 8 — Alert

Material expenses exceed the planned material budget.

AtlasBuild displays:

```text
⚠ MATERIAL BUDGET EXCEEDED

Planned:
300,000 MAD

Actual:
327,500 MAD

Variance:
+27,500 MAD
```

Management can investigate the cause before the project is completed.

---

# 29. Success Criteria

AtlasBuild should successfully allow the company to manage a construction project from creation to completion.

A successful implementation must allow an authorized administrator to:

1. Create a client.
2. Create a project.
3. Define contract value and budget.
4. Create milestones.
5. Create and assign tasks.
6. Assign workers.
7. Register suppliers.
8. Register materials.
9. Track inventory.
10. Record project expenses.
11. Record client payments.
12. Monitor budget variance.
13. Calculate outstanding payments.
14. Monitor project progress.
15. Estimate project margin.
16. Manage project documents.
17. Generate project reports.
18. Control access according to user roles.

The platform must maintain data consistency and prevent unauthorized users from accessing restricted information.

---

# 30. Product Value Proposition

AtlasBuild transforms fragmented project management into a connected workflow.

### Without AtlasBuild

```text
Excel
   +
WhatsApp
   +
Paper documents
   +
Email
   +
Separate files
```

Information is distributed and difficult to reconcile.

### With AtlasBuild

```text
                    ATLASBUILD

Projects ─── Clients ─── Workers
    │            │           │
    ├── Budget   ├── Payments
    │            │
    ├── Expenses ├── Documents
    │
    ├── Materials ─── Suppliers
    │
    └── Tasks ─── Progress
```

Everything is connected.

---

# 31. What AtlasBuild Gives Management

The platform is ultimately designed to answer six questions:

### 01 — What are we building?

**Projects and clients**

### 02 — Where are we?

**Tasks, milestones and progress**

### 03 — What resources are we using?

**Workers, materials and suppliers**

### 04 — How much have we spent?

**Expenses, inventory and labor costs**

### 05 — How much have we collected?

**Client payments and outstanding balances**

### 06 — Is the project financially under control?

**Budget variance and estimated project margin**

---

# 32. Project Positioning

AtlasBuild is a **portfolio-grade full-stack business application** designed to demonstrate the ability to transform a real-world business process into usable software.

It demonstrates:

* Business analysis
* Requirements definition
* Relational database design
* Full-stack development
* Authentication
* Authorization
* Business logic
* Financial calculations
* Inventory management
* Document management
* API communication
* Security
* Reporting
* Responsive interface design

### Technology

**Frontend:** HTML5, CSS3, JavaScript
**Backend:** PHP 8+
**Database:** MySQL / MariaDB
**Data access:** PDO
**Communication:** Fetch API / JSON
**Architecture:** Structured PHP / MVC-inspired
**Security:** Authentication, RBAC, CSRF protection, validation and secure database access

---

# 33. Project Philosophy

> **AtlasBuild is not a collection of CRUD pages.**

It is a business management system where each piece of information exists because it supports a real business decision.

A project expense affects the budget.

A material purchase affects inventory and project costs.

A worker assignment affects project execution.

A client payment affects the outstanding balance.

A completed task affects project progress.

A project's expenses and contract value affect its estimated margin.

**The value of AtlasBuild comes from connecting these relationships into one coherent system.**

---

## Final Product Statement

> **AtlasBuild gives construction companies one place to understand their projects, control their resources, monitor their finances and keep their clients informed.**
