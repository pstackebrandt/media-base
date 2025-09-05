# MediaBase SQL Server Project

A structured SQL Server database project for managing media collections, specifically focused on book management (**Buch** table) with organized SQL scripts for database operations.

## Project Structure

This project follows a numbered folder structure to ensure logical organization and easy navigation of SQL scripts.

```text
DbManagement/
├── 01-Schema/                    # Database schema definitions
│   ├── Tables/                   # Table creation scripts
│   ├── Views/                    # View definitions
│   │   └── Buch-Show-bewertung.sql
│   ├── Indexes/                  # Index creation scripts
│   ├── Constraints/              # Constraint definitions
│   └── Triggers/                 # Trigger definitions
│
├── 02-Data/                      # Data management scripts
│   ├── Initial/                  # Initial data population
│   └── Test/                     # Test data for development
│
├── 03-Operations/                # Database operations (CRUD)
│   ├── Insert/                   # INSERT operations
│   │   └── Buch-T-insert-new-book.sql
│   ├── Update/                   # UPDATE operations
│   │   └── Buch-T-update-all-values-of-1-Buch.sql
│   ├── Delete/                   # DELETE operations
│   └── Maintenance/              # Maintenance operations
│
├── 04-Queries/                   # Query scripts
│   ├── Reports/                  # Reporting queries
│   │   ├── Buch-show-base-values.sql
│   │   ├── Buch-show-bewertung.sql
│   │   └── Buch-T-select-top-5.sql
│   ├── Analytics/                # Analytical queries
│   └── Search/                   # Search-specific queries
│
├── 05-Procedures/                # Stored procedures
├── 06-Functions/                 # User-defined functions
├── 07-Admin/                     # Administrative scripts
│   ├── Backup/                   # Backup scripts
│   ├── Permissions/              # Permission management
│   └── Monitoring/               # Monitoring and diagnostics
│
└── 99-Archive/                   # Deprecated or archived scripts
```

## Naming Conventions

### File Naming

- **German naming**: Following project convention with German entity names
- **Descriptive format**: `[Entity]-[Operation]-[Description].sql`
- **Examples**:
  - `Buch-insert-new-book.sql` (INSERT operation)
  - `Buch-show-base-values.sql` (SELECT query)
  - `View-Buch-Bewertung-create.sql` (View creation)

### Folder Organization

- **Numbered prefixes**: Ensure logical ordering in file explorers
- **Categorical grouping**: Related operations grouped together
- **Scalable structure**: Easy to extend for new entities and operations

## Database Schema

### Main Entities

- **Buch** (Book): Core entity with fields for ISBN, author, title, publisher, etc.
- **View-Buch-Bewertung**: View for book ratings and evaluations

### Key Fields (Buch Table)

- `ID`: Primary key
- `ISBN10`, `ISBN13`: Book identifiers (simplified training values)
- `Autor`: Author name
- `Titel`: Book title
- `Verlag`: Publisher
- `Seiten`: Page count
- `Auflage`: Edition number
- `Sprache`: Language
- `Hardcover`: Format indicator (0=Softcover, 1=Hardcover)
- `Erscheinungsjahr`: Publication year
- `Bewertung`: Rating
- `Beschreibung`: Description

## Development Guidelines

### Script Headers

Each SQL script should include:

```sql
-- Script: [Script Name]
-- Purpose: [Brief description]
-- Author: [Author name]
-- Created: [Date]
-- Modified: [Last modification date]
-- Database: MediaBase
```

### Training Approach

- **Simplified values**: Using placeholder values like '1' for ISBN fields
- **Educational focus**: Prioritizing SQL syntax learning over real-world data complexity
- **Progressive complexity**: Building from basic operations to advanced queries

### Best Practices

1. **Consistent formatting**: Use proper indentation and SQL formatting
2. **Comments**: Include explanatory comments for complex operations
3. **Verification**: Include verification queries after data modifications
4. **Error handling**: Consider adding error handling for production scripts
5. **Transaction management**: Use transactions for multi-statement operations

## Getting Started

### Prerequisites

- SQL Server 2022 (or compatible version)
- SQL Server Management Studio (SSMS)
- MediaBase database

### Setup

1. Open SQL Server Management Studio
2. Connect to your SQL Server instance
3. Ensure MediaBase database exists
4. Navigate to the appropriate folder for your task
5. Execute scripts in logical order

### Typical Workflow

1. **Schema changes**: Start with `01-Schema/` scripts
2. **Data population**: Use `02-Data/Initial/` for setup
3. **Operations**: Execute CRUD operations from `03-Operations/`
4. **Reporting**: Run queries from `04-Queries/Reports/`

## File Locations

### Current Files

- **Insert Operations**: `03-Operations/Insert/Buch-T-insert-new-book.sql`
- **Update Operations**: `03-Operations/Update/Buch-T-update-all-values-of-1-Buch.sql`
- **Basic Queries**: `04-Queries/Reports/Buch-show-base-values.sql`
- **Rating Queries**: `04-Queries/Reports/Buch-show-bewertung.sql`
- **Top Records**: `04-Queries/Reports/Buch-T-select-top-5.sql`
- **View Definition**: `01-Schema/Views/Buch-Show-bewertung.sql`

## Contributing

When adding new scripts:

1. Choose the appropriate folder based on script purpose
2. Follow the naming convention
3. Include proper header comments
4. Test scripts before committing
5. Update this README if adding new categories

## Notes

- This project follows SQL Server training book methodology
- Uses simplified placeholder values for educational purposes
- Focuses on database operations and SQL syntax learning
- Structure designed to scale with additional entities and operations

---

Last updated: September 2025
