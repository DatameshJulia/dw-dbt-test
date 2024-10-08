This folder contains the dbt projects for creating the silver and gold tables.

### Local development
- create a virtual environment using the `../requirements.txt`
- create `./.env` using the `.env.template` and fill in the values
- cd into either the silver or gold project and run `dbt debug --profiles-dir profiles_local`
- add `--profiles-dir profiles_local` to every local command
- add your catalog `--vars '{"source_catalog": "your-catalog"}'`

### data sources
- instead of setting up the hole ingestion process use `dbt seeds` in the silver_layer project
- in `dbt_project.yml` seeds are configured to be loaded into the bronze schema