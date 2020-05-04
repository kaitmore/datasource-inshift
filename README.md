# datasource-inshift

This repository contains datasets for deployment to covidapihub.io.

## Adding a dataset

To add a dataset, run `make dataset`. An example dataset with metadata has been added to `data/example-nytimes`. This command will:

1. Ask for metadata related to the new dataset
2. Create a new directory under the top-level `/data` directory based on the given api slug
3. Create a new file in this directory with the metadata entered

Here is a description of the metadata we need:

- API Slug: a "kebab-case", all lowercase, no spaces or special characters name for the deployment. This will be used as the folder name and once deployed, it will dictate the route to this api - e.g. `https://covidapihub.io/apis/<api-slug>`
- Filename: name of the file you are adding, with extension - e.g. `states-current.csv`
- Display Name: a prettier, human readable name for the api. This will be used as the API name on the cards in the UI.
- Data source: original owner of the data
- Data source URL: Relevant link back to the source. This could be the owner's homepage or documentation for the specific dataset if available.
- Capability: category of the dataset being added
- Description: Description of the API used in dashboard service view
- Update Frequency: Frequency of updates to the dataset ex. Daily, Monthly, 5 Minutes, Not Specified
- Coverage: geographic coverage of the data e.g. World, US, Italy
- Sheet Name: if the dataset is xlsx, you must specify the name of the sheet that the API will serve up by default

The following is an example using a nytimes dataset. You can take a closer look at the resulting files in `data/example-nytimes`.

```sh
$ make dataset

API Slug:
example-nytimes
Filename:
states-current.csv
Display Name:
NY Times Current Cases by State
Data source (ex. NYT, US Census Bureau, etc.):
NYT
Data source URL:
https://github.com/nytimes/covid-19-data 
Capability (ex. health, governance, social etc.):
health
Description:
The New York Times is releasing a series of data files with cumulative counts of coronavirus cases in the United States, at the state and county level, over time. We are compiling this time series data from state and local governments and health departments in an attempt to provide a complete record of the ongoing outbreak.
Update Frequency (ex. Daily, Monthly, 5 Minutes):
Daily
Coverage (ex. US, World):
US
Default Sheet Name (XSLX only):
```
