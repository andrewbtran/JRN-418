---
layout: post
title: Intro to data visualization
---

### Links for class
* [US Mass Shootings, 1982-2015: Data From Mother Jones' Investigation](http://www.motherjones.com/politics/2012/12/mass-shootings-mother-jones-full-data) - [raw data](https://docs.google.com/spreadsheet/ccc?key=0AswaDV9q95oZdG5fVGJTS25GQXhSTDFpZXE0RHhUdkE#gid=0)
* [Connecting with the dots]({{ site.url }}/class6/class6.html)
* [The different types of data vizualizations]({{ site.url }}/class6/vizualizationtypes.html)
* [More fun with Google Fusion Tables]({{ site.url }}/class6/choropleths_fusion)
* [Setting up a Github page]({{ site.url }}/class6/ghpages/)

### Assignments for Oct. 14

Read: [Map App of the Day: Presidential Election Maps](http://www.jasonmorrison.net/content/2008/map-app-of-the-day-presidential-election-maps/)

Read: [How The Rainbow Color Map Misleads](https://eagereyes.org/basics/rainbow-color-map)

Read: [Visual Literacy in an Age of Data](https://source.opennews.org/en-US/learning/visual-literacy-age-data/)

### Homework 1

Answer these questions about the readings.

[Questions about the Class 6 reading assignments](https://docs.google.com/forms/d/1AUo90CCjhoLtXYkvA8RVnRpAKNHGA9WUf3OyRDsGByI/viewform?usp=send_form)

### Homework 2 
### *This one is a bit complicated but builds on everything you've learned so far*

Make me a Choropleth map in Google Fusion Table based on the [data](https://docs.google.com/spreadsheet/ccc?key=0AswaDV9q95oZdG5fVGJTS25GQXhSTDFpZXE0RHhUdkE#gid=0) on US Mass Shootings. 

* You'll have to split out the location to create a new column with just state names
  * ie. Roseburg, OR --> OR
  * Forgot how? The formula is in [this tutorial](http://andrewbtran.github.io/JRN-418/class4/joining/) about halfway down
* [Pivot table](http://trendct.org/2015/09/04/tutorial-how-to-make-pivot-tables-in-google-sheets/) based on the count by state
* Adjust the number to normalize for population using **state population** statistics
  * Get the data from the Census [census.gov](http://www.census.gov/popest/data/state/totals/2014/index.html)
  * It's **CSV** link in the first bullet point: *Annual Estimates of the Resident Population for the United States, Regions, States, etc**
  * You'll have clean it up first, to search and replace all the **.**
  * So you've got two tables (school shootings by state and state population), [join them up](http://andrewbtran.github.io/JRN-418/class4/joining/) and then find number of shootings per 100,000 residents. (Hint, it will involve [math](https://answers.yahoo.com/question/index?qid=20080224155618AA4NFJa) and [formulas](http://spreadsheets.about.com/od/otherspreadsheets/ss/090805-google-spreadsheets-formula-tutorial.htm#showall))
* Download the kml file for all the states and make a Fusion Table from it
  * Here's one somebody already made, just make a copy of it from **File**. [Google](https://www.google.com/fusiontables/data?docid=17aT9Ud-YnGiXdXEJUyycH2ocUqreOeKGbzCkUw#map:id=3))
  * Here's a bunch of boundaries that the US Census made [census.gov](https://www.census.gov/geo/maps-data/data/tiger-kml.html)
* Merge the normalized shootings data to the boundaries file
* Map it out, add a legend (If state names need to be cleaned up, do that)

Make the map public and email me the link.

#### Remember, your midterm is due in a couple weeks. Think about what you want to do for it. Get started early.