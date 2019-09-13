
# Pantry

Pantry MAC is a small application for tracking guests in a small [church](http://www.laurelchurch.net) food pantry utilizing the Microsoft Access (MAC) Software.

## Getting Started
### Prerequisites
- [PostgreSQL](https://www.postgresql.org/download) Database 10 and higher
- [Microsoft Access 2016](https://products.office.com/en-us/access) and higher
- [PostgreSQL ODBC](https://www.devart.com/odbc/postgresql/) Driver

### Installing

1. Clone or [download](https://github.com/irrationalgenius/pantry-mac) this repository
  ``` go
  git clone git@github.com:irrationalgenius/pantry-mac.git pantry-mac
  ```
2. Setup the database using the DDL scripts located in the following directory:
  - src/db/tables/guests.sql
  - src/db/tables/guest_visits.sql
  - src/db/tables/properties.sql (Setup property data according to your needs)
3. Setup a ODBC connection to the database source (Windows)
  - Search and Open the "ODBC Data Sources (64)"
  - Click the Add button (under User DSN or System DSN)
  - Select the PostgreSQL ODBC Driver (Unicode), must be installed first
  - The Data Source Name must be: PGPantry
  - Enter other credentials: Database, Server, User Name, Port, Password
  - Click Test, after successful save the details
4. Ensure Microsoft Access is installed on the client machine
5. Open the file: src/Pantry.accdb

## Contributing

Please read [CONTRIBUTING.md](CONTRIBUTING.md) for details on our code of conduct, and the process for submitting pull requests to us.

## Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository](https://github.com/your/project/tags).

## Authors

* **Calvin Hunt** - *Developer* - [Linkedin](https://www.linkedin.com/in/calvin-hunt-31421432)

## License

This project is licensed under "Apache License 2.0" - see the [LICENSE.md](LICENSE.md) file for details
