# SF Estuary Smelt Larva Survey Database

## About
The purpose of this project is to develop a deeper understanding of data management by practicing data cleaning, organization, and access. Specifically, the project involves creating a database that organizes multiple types of environmental data collected at each sampling station, alongside larval fish samples.

- Building a relational database
- Writing SQL queries to extract insights
- Creating data visualizations

## Repository Structure
```bash
database
├── README.md
├── .gitignore
├── data-cleaning.qmd
├── build-database.sql
├── database.db
│   └── tables
├── query-database.qmd
└── data
    ├── raw
    └── processed
```
## Data
All data were obtained from the Ecological Data Initiative (EDI) and accessed via the study's Resources tab. The CSV files were initially stored in the raw data folder and then moved to the processed folder after cleaning. The cleaned datasets are available for download through the project's GitHub repository.

## References
Interagency Ecological Program (IEP), C. Brennan, V.G. Mora, J. Oceguera Zavala, and J.A. Jimenez. 2024. Interagency Ecological Program San Francisco Estuary Smelt Larva Survey 2009 – 2024 ver 9. Environmental Data Initiative. https://doi.org/10.6073/pasta/3cf5b4b396a1374d9142e3507ae084d2 (Accessed 2025-05-15).

## Acknowledgments
This repository was created for a final project related to the course EDS 213: Databases and Data Management.

This course is an academic requirement for the Master of Environmental Data Science (MEDS) program at the Bren School of Environmental Science & Management, University of California, Santa Barbara.
