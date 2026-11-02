# Water Pipeline Database (SQL)

A relational database for tracking a water pipeline project. It stores the properties the pipeline will be built on, the property package each one belongs to, who owns each property, and the environmental and field activities done there, with planned and actual dates and statuses. Built for my Database Management class at the University of Colorado.

## Project Goal

Track the relationships between property packages, properties, owners, and the environmental and field activities performed during the project.

## Database Design

The database has six tables:

- **Owner**: ownerid, owner_name, phone, address
- **Property**: propertyid, ownerid, parcel_number, owner_name
- **Proper_act**: propertyid, field_act_id, parcel_number, owner_name, act_date, status
- **Pipeline_package_activity**: package_name, activityid, planned_start_date, planned_completion_date, actual_start_date, actual_completion_date
- **Field_activity**: field_act_id, descrip
- **Env_survey**: propertyid, surveyid, surveydate, years_remaining

Tables are linked with primary and foreign keys. For example, each property links to one owner through ownerid.

## Questions the Queries Answer

- Include or exclude owners or properties with specific details
- How much time is there between planned and actual start and end dates?
- Which activities were done in a specific time range?
- What activities were done on specific properties?
- How many properties does a specific owner own?
- Which properties have the same owner?

## Skills Used

- SQL: GROUP BY, ORDER BY, subqueries, inner joins, outer joins, set operations
- Database design: tables, keys, relationships
- Database system: Oracle

## Files

- `water_pipeline_queries.sql`: table creation and queries

## About Me

Farid Mammadov, Master of Business Analytics student. [LinkedIn](https://www.linkedin.com/in/farid-mammadov-az)
