# Oracle Healthcare Industry PoC

This directory contains backup assets for the Oracle-based Proof of Concept (PoC) related to the Healthcare Industry. It includes data samples, SQL schema, notebooks for ETL/analytics, and subfolders for Oracle Analytics Cloud (OAC) and Oracle Data Science (ODS) artifacts.

## Structure

- data/
  - Sample data and related resources used for ETL, analytics, and demos.
- OAC/
  - Assets related to Oracle Analytics Cloud (dashboards, exports, or configuration artifacts). Content may include .dva/.bar or documentation depending on export.
- ODS/
  - Artifacts related to Operational Data Store or Oracle Data Science (e.g., integration configs, metadata, or scripts).
- DDL jurnal generator.xlsx
  - Spreadsheet referencing or documenting DDL for a "journal generator" component.
- etl.ipynb
  - General ETL notebook used during the PoC for data ingestion/transformations.
- moh-poc-schema.sql
  - SQL schema definition for the Healthcare PoC (tables, constraints, etc.).

Note: File names are indicative; exact contents can vary based on export time.

## Getting Started

1. Prerequisites
   - Python 3.9+ (for running notebooks)
   - JupyterLab or Jupyter Notebook
   - Access to Oracle DB/ADW if executing schema/ETL that load to Oracle
   - Relevant credentials/wallet (if connecting to Oracle Autonomous Database)

2. Open the Notebooks
   - Launch Jupyter:
     - jupyter lab
       or
     - jupyter notebook
   - Open etl_healthcare.ipynb or etl.ipynb to review and execute steps for ingestion/transformations.

3. Database Schema
   - moh-poc-schema.sql contains DDL for core tables used in the PoC. Review and apply to your Oracle environment:
     - Connect using SQL*Plus/SQLcl/SQL Developer.
     - Execute the script in the target schema.

4. OAC/ODS Artifacts
   - OAC: Import dashboards or analyses into your OAC instance via the OAC UI or command-line tools (if applicable).
   - ODS: Review and import any ODS-related configurations/scripts as required by your environment.

## Typical Workflow

- Review moh-poc-schema.sql and deploy DDL to your Oracle database.
- Prepare or validate data in data/.
- Run the ETL notebooks to load and transform data.
- Validate outputs and, if relevant, publish views/datasets to OAC for visualization.