Ruby/NodeJS + PostgreSQL + PostGIS dev box
===
This is a Ubuntu precise64 based box(i.e Ubuntu 12.04)
This box includes the following:
- Ruby 2.0.0
- node v0.10.22
- node-inspector
- bower v1.2.7
- npm v1.3.14
- ZSH+Oh-My-ZSH with the git plugin installed
- PostgresSQL v9.3.1
- PostGIS 2.1.1

### Enabling PostGIS in your PostgreSQL database
The following steps will work for you on general, and are most likely what 
adapters like activerecord-postgis-adapter do (rake db:gis:setup is what needs 
to be executed with activerecord-postgis-adapter):
* `psql -U postgres`
* `create database <your_database_name>`
* `create extension postgis`
