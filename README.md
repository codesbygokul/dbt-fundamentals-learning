# 🧱 dbt Fundamentals Project

This project is built as part of completing the [dbt Fundamentals Course](https://learn.getdbt.com/) by dbt Labs. It demonstrates the core concepts of using dbt (data build tool) for transforming raw data into clean, tested and documented datasets using modular SQL and software engineering best practices.

---

## 🧭 Project Overview

This dbt project simulates a modern ELT workflow. It consists of:

- **Sources** for raw tables from systems like Salesforce and payment platforms
- **Staging models** to clean and standardize raw data
- **Intermediate and mart models** for analytics and business use cases
- **Tests** to validate assumptions and ensure data quality
- **Documentation** to describe sources, models, and fields
- **Deployment** using dbt Cloud

---

## 🧱 dbt Concepts Practiced

| Concept        | Description |
|----------------|-------------|
| **Sources**    | Defined using YAML to describe raw tables from external systems |
| **Models**     | SQL files that transform raw data into clean datasets using `select` statements |
| **Staging Layer** | Standardizes and renames raw fields for consistency |
| **Marts Layer** | Contains `fct_` (fact) and `dim_` (dimension) models for analysis |
| **Tests**      | Built-in and custom tests (e.g., uniqueness, not null) to ensure data integrity |
| **Documentation** | YAML-based descriptions + Markdown docs, doc blocks |
| **Ref + Source Functions** | Used to link models and sources together cleanly |
| **Deployment** | Run, test, and build dbt models via dbt Cloud scheduler |
| **Version Control** | Entire project is Git-tracked for collaboration and deployment |

---

## 📂 Project Structure

```bash
.
├── dbt-project/
├── analyses/
├── macros/
├── models/
│   ├── marts/
│   │   ├── finance/
│   │   │   └── fct_orders.sql
│   │   └── marketing/
│   │       └── dim_customers.sql
│   ├── staging/
│   │   ├── analytics/
│   │   │   ├── _analytics__docs.md
│   │   │   ├── _src__analytics.yml
│   │   │   └── _stg__analytics.yml
│   │   ├── payments/
│   │   │   └── stg_pay__payments.sql
│   │   ├── stg_sf1__customers.sql
│   │   └── stg_sf1__orders.sql
├── seeds/
├── snapshots/
└── dbt_project.yml
