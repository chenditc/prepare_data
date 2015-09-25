# Workflow

### Upload train / test data to s3 storage.

### Some script pick up the file and launch a spark analysis job
1. script that launch the job
2. spark analysis job
  - 2.1 read in data from different format, store as a data frame
  - 2.2 Data type extraction
    - 2.2.1 Extract special data type ( time, zipcode, epoch, name, address )
    - 2.2.2 For the rest of them, treat them as "category name" or "property number"
  - 2.3 Data property extraction
    - 2.3.1 Chart the number distribution for numbers.
    - 2.3.2 Chart the text distibution.
  - 2.4 For target column, find the correlation
    - 2.4.1 Use random forest, try to find the property importance
