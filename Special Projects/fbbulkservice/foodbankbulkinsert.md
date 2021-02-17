# Food Bank Bulk Service Upload

## Project Background

The Gallatin Valley Food Bank had a list of 1039 holiday food boxes that they distributed, and they wanted these to be uploaded to CaseWorthy as services. The data the provided had first name, last name, and # in household, but no CaseWorthy client ID.

## Steps

1. Match names to client IDs
1. Find enrollment IDs for matching clients
1. Generate SQL insert statement derived from original data, client ID, and enrollment ID.
1. Generate SQL insert statement for indirect services
   - This was done for clients who could not be matched to an existing client
   - Ideally these people would be created as new clients, but I thought it wasn't worth while due to lack of information about them. The risk of creating a huge number of duplicates was too high.
1. Existing clients that couldn't be matched on the first pass were manually entered by food bank staff
   
   
## Components

- Python
  - [holidaybox.py](holidaybox.py)
    - This script process data from the excel sheet and invokes the sqlgetter.py to look up client information
  - [sqlgetter.py](sqlgetter.py)
    - A utility to connect python to a SQL server
- SQL
  - [qu.sql](qu.sql)
    - Searches for a client by first and last name.
    - `'*FIRST NAME*'` and `'*LAST NAME*'` are set by a function in [holidaybox.py](holidaybox.py)
  - [enrollments.sql](enrollments.sql)
    - Searches for a universal intake enrollment ID by client ID
    - `**Entity ID**` is set by a function in [holidaybox.py](holidaybox.py)
  - [bulkinsert.sql](bulkinsert.sql)
    - The final script generated by [holidaybox.py](holidaybox.py)
    - Creates 709 new Service records
- Spreadsheets