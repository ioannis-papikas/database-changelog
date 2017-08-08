# Database Changelog Helper
This repository contains an example structure of keeping your database changelog and allowing automatic deployment of your changes to multiple servers and environments at any moment.

## Changelog Schema
The changelog schema is recorded in the `/build/database/changelog.xsd` file.

## Database changelog
The changelog is separated in two files
* the `changelog.xml` file which keeps all the versions and
* the **sql files** which keep all the changes in the database in sql format.

Based on the schema file, it tracks changes daily so that we can re-generate the database at any time.

## Database Snapshot
In addition to the changelog, there is an extra folder called `snapshots` which keep track of the different versions of the database as a full sql dump file.

## Usage
The logic for using this database version history logger is to sync developers using virtual "tickets" for recording database changes. We can propose the following workflow:
* Create manually a record on the `version_history` table to get the next version
* Based on the version that you got, build your changelog sql file, according to the folder structure and your team's template files.
