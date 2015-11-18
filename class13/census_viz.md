---
layout: page
title: Getting and visualizing Census data
---

## Navigating Factfinder

### Getting the data

1. What kind of geography?
2. Which survey?
3. Which dataset?

<a href="http://factfinder2.census.gov/faces/nav/jsf/pages/searchresults.xhtml?refresh=t"><img src="../census1.png" width="100%"></img></a>

Go to [factfinder.census.gov](http://factfinder.census.gov) and click on **Advanced Search**.

### What kind of geography?

#### Big (ex. state):
* `+` High level of confidence it's right
* `-` Low definition

#### Small (ex. tract):
* `+` Very high definition
* `-` Very low confidence it's right

### ZIP code tabulation area

... because ZIP codes aren't areas. [More info](https://www.census.gov/geo/reference/zctas.html).

<img src="../census2.png" width="100%"></img>

Click **Geographies**.

<img src="../census3.png" width="100%"></img>

Select a geographic type:

* 5-Digit ZIP Code tabulation area

<img src="../census4.png" width="100%"></img>

Select a state: 

* Connecticut

Select one or more...

* All 5-Digit ZIP... within Connecticut

Click **Add to your selections**.

### Which survey?

* Every 10 years, a comprehensive Census
* Every year, American Communities Survey
 * Small percent of people surveyed. [More info](http://www.census.gov/acs/www/about_the_survey/).

<a href="http://www.census.gov/programs-surveys/acs/guidance.html"><img src="../census15.png" width="100%"></img></a>

So, which survey? 

We want the Five-Digit Zip Code Tabulation

ACS Five-year estimates

<img src="../census6.png" width="100%"></img>

Click **Topics**.

<img src="../census8.png" width="100%"></img>

Click **People**.

<img src="../census9.png" width="100%"></img>

Click **Insurance Coverage**.

<img src="../census10.png" width="100%"></img>

Look for `HEALTH INSURANCE COVERAGE STATUS`.

<img src="../census11.png" width="100%"></img>

Click **Download**

<img src="../census16.png" width="60%"></img>

Make sure **Include descriptive data element names** is selected.

Click **OK** and then **Download** the zip file.

<img src="../census13.png" width="100%"></img>

Inside the zip file...

<img src="../census14.png" width="100%"></img>

<img src="../census17.png" width="100%"></img>

This is what the data looks like.

It includes specifics such as margin of error and percent.

<img src="../census18.png" width="100%"></img>

However, we want to turn this into a visualization, so we need to get rid of extra row in the header.

<img src="../census19.png" width="100%"></img>

Let's bring the edited data set into [CartoDB](http://www.cartodb.com).

<img src="../census20.png" width="100%"></img>

**Uh oh.**. Looks like the column names are too similar.

We need to create a new spreadsheet to focus on just the columns we want.

<img src="../census22.png" width="100%"></img>

Find the column of **Percent uninsured** and the column of **Margin of error** for it.

<img src="../census23.png" width="100%"></img>

Create a new sheet with just those columns as well as the identifier columns: **Id**, **Id2**, and **Geography**.

Save the file and upload it to [CartoDB](http://www.cartodb.com).

<img src="../census24.png" width="100%"></img>

We've got the data. Now we want to bring a shape to it.

<img src="../census25.png" width="100%"></img>

Go back to **Connect dataset** and paste in this link (I've saved you the trouble of having to look up the shapefile zip codes in Connecticut)

`https://www.google.com/fusiontables/DataSource?docid=1e3WTW59qG7EEV6KBM1YLeNJcBf_aP_tod3RS0ko`

Click **Connect**.

<img src="../census26.png" width="100%"></img>

Click **Merge**.

<img src="../census27.png" width="100%"></img>

Select the cleaned up uninsured dataset you created and join it by **id**.

Click **Merge datasets**.

<img src="../census28.png" width="100%"></img>

Click **Visualize**, click **Wizard** and select **Choropleth**.

Go to the pulldown menu and select **percent_uninsured**.

## Congrats, you've made a map using Census data.
