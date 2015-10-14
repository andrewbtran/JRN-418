---
layout: page
title: Some advanced data work in Open Refine
---

This is a continuation of the [Cleaning up data with Open Refine]({{ site.url }}/class7/openrefine) tutorial.

We have a dataset of all the runners registered in the Boston Marathon. We want to turn the data into a map. 

We could do this in a pivot table, but I wanted to show you a way to do it in Open Refine that uses formulas.

### Counting up values in columns with OpenRefine

<img src="../refinea1.png" width="100%"></img>

Back to the dataset. Eliminate any facets you've previously created.

<img src="../refinea2.png" width="70%"></img>

Let's make a quick **Text Facet** of all the **StateAbbrev**.

<img src="../refinea3.png" width="80%"></img>

Now we've got a column for reference. We want this count list but we want it in a column format. We could just make a spreadsheet by hand, but that will take way too long.

<img src="../refinea4.png" width="80%"></img>

Click **arrow > Edit column > Add column based on this column**.

<img src="../refinea5.png" width="80%"></img>

Type in `facetCount(value, "value", "StateAbbrev")` and then **OK**.

<img src="../refinea6.png" width="80%"></img>

### Eliminating duplicate rows

For this map's purpose, we don't need any individual data. We just want **StateAbbrev** and **count**.

<img src="../refinea7.png" width="80%"></img>

Click **StateAbbrev arrow > Edit cells > Blank down**.

<img src="../refinea8.png" width="80%"></img>

Click **State Abbrev arrow > Facet > Customized facets > Facet by blank**.

<img src="../refinea9.png" width="50%"></img>

Click **true**.

Click **State Abbrev arrow > Facet > Customized facets > Facet by blank**.

<img src="../refinea10.png" width="60%"></img>

Click **All arrow Edit rows > Remove all matching rows.**

### Merging columns with a different data set in Open Refine

Download this spreadsheet of U.S. States. [[link](http://patrickgarvin.com/maps/data.xls)]

Open a new tab of OpenRefine and create a project using the States spreadsheet you just downloaded.

Call the project **states**.

<img src="../refinem1.png" width="90%"></img>

Simple. This is the format that will be recognized by the map generator.

We need to bring the counts for each state over.

<img src="../refinem2.png" width="90%"></img>

Click **Abbrev arrow Edit column > Add column based on this column**.

<img src="../refinem3.png" width="100%"></img>

Type `cell.cross("Cleaning BAA Data", "StateAbbrev").cells["count"].value[0]` and click **OK**

<img src="../refinem4.png" width="90%"></img>

It worked! Except that the column is in the wrong position.

Click **count arrow > Edit column > Move column right**

Brilliant!

Click Export> Excel (or CSV, up to you).

Now we can turn this into a [choropleth map](http://www.andrewbatran.com/datastorytelling/choropleth/)
