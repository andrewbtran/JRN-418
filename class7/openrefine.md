---
layout: page
title: Cleaning up data with Open Refine
---

OpenRefine is a powerful tool for working with messy data

* detect and fix inconsistencies
* transforming data from one structure or format to another
* connecting columns with other datasets

### Let's get started

* Download the BAA dataset [[link]](http://www.andrewbatran.com/datastorytelling/openrefine/BAA.xls)
* Download, install and run OpenRefine [[link]](http://openrefine.org/download.html) in a new browser

<img src="../refine1.png" width="100%"></img>

Click **Choose Files**, Browse for the BAA dataset, select BAA.xls and click **Next >>**

<img src="../refine2.png" width="100%"></img>

This is a preview of how the data will be sorted. OpenRefine does a pretty good job of detecting the form that's being brought in.

Name the project **Cleaning BAA Data** and click **Create Project**.

<img src="../refine3.png" width="100%"></img>

Only the first 10 rows are displayed so it doesn't overwhelm your computer. There's 35,384 rows of runners. We don't need to see them all, we only want to see the patterns.

### Facet Counts
Let's narrow it down to just the USA. Select the **arrow** button by **CountryRes** and click **Facet > Text Facet**.

<img src="../refine4.png" width="100%"></img>

A box will show up on the left that is essentially a pivot table that you can sort by name or count.

<img src="../refine5.png" width="80%"></img>

Scroll down to the US and notice an issue.

<img src="../refine6.png" width="50%"></img>

There's 30,040 USAs and 20 U.S.A.'s

### Quick edit of values via Facets

Let's clean that up by clicking the **edit** link by U.S.A., replacing the "U.S.A." with "USA" and clicking **Apply**.

<img src="../refine7.png" width="80%"></img>

You'll see Mass edit 20 cells in column CountryRes at the top.

<img src="../refine8.png" width="70%"></img>

The simple procedure you did was a mass Find/Replace for all U.S.A.s in that **CountryRes** column. Now there's 30,060 USAs and no U.S.A.s

What are the top 5 countries sending over marathon runners to Boston? Click **Sort by Count** and you'll see USA, CAN, GBR, MEX, and ITA

Lets find out the oldest person running in the marathon Click on the **arrow** by **AgeOnRaceDay** and click **Facet > Numeric Facet**

<img src="../refine9.png" width="80%"></img>

Uh oh, this doesn't look right.

<img src="../refine10.png" width="90%"></img>

"No numeric value present"? That means GoogleRefine doesn't recognize those numbers in that column as numbers. This is a problem that can prevent accurate calculations, visual representations, and categorization.

### Transforming values
Click **arrow > Edit cells > Transform**

<img src="../refine11.png" width="80%"></img>

Replace **value** with **value.toNumber()** and click **OK**.

<img src="../refine12.png" width="70%"></img>

<img src="../refine13.png" width="70%"></img>

(Another easier way is to right click **common transformations >> To number**)

Now the numbers in the column have turned green and there's a histogram of numbers on the left.

<img src="../refine14.png" width="80%"></img>

You've transformed a column with code. Here's some other transformations you could've done- 

## Open Refine recipes

[https://github.com/OpenRefine/OpenRefine/wiki/Understanding-Expressions](https://github.com/OpenRefine/OpenRefine/wiki/Understanding-Expressions)

### Subsetting data for analysis in OpenRefine
Click and drag the left **scroller** to the far right so the 83-84 is isolated

<img src="../refine15.png" width="100%"></img>

The oldest racer is an 84 year-old woman from Spokane, Washington.

What's the most common age? You could drag the scroller so that only the tallest histogram bar is isolated, or to be more accurate, on **AgeOnRaceDay**, click **arrow > Facet > Text Facet** and select **Sort by: Count** on the left.

<img src="../refine16.png" width="100%"></img>

The most common age among runners is 45.

What's the most common age for male versus female? Add a **Text Facet** to the **GenderCode**.

<img src="../refine17.png" width="50%"></img>

Looks like there's 15,964 females running and 19,420 men. Click on **F**.

<img src="../refine18.png" width="50%"></img>

The most common age for female runners is 40 with 612. Click on the **M** and the most common age is 46.

Close out all the **Facet/Filter** boxes on the left by clicking the **X**'s at the top left.

Where's the dirty data? Here it is: We're going to focus on runners from the state of Massachusetts.

Two ways to do that from the **StateAbbrev** column.

Like before, select **Text Facet** and scroll down to **MA** and select it, to narrow it down on the right.

Click **arrow > Text Filter** and type in **MA**.

<img src="../refine19.png" width="100%"></img>

There's 7,890 runners from Massachusetts.

Which towns have the most runners?

Run a **Text Facet** on the City column. Scroll through and if you know your towns, you'll see some interesting spellings.

## Cleaning up dirty data with OpenRefine

<img src="../refine20.png" width="50%"></img>

There's only 352 towns in Massachusetts but this list says there's 426. It will be too difficult to go through 7,890 rows to see if all the towns are correct. That will take up too much time.

<img src="../refine21.png" width="50%"></img>

What's this? Look closely and it's because there's an extra space at the end of **Brookline**.

**Edit cells >> Common transforms >> Trim leading and trailing whitespace**

OK, that's one value cleaned up. Next, click the **Cluster** button.

<img src="../refine22.png" width="50%"></img>

There are various methods that Google Refine uses to detect similar cell values.

<img src="../refine23.png" width="90%"></img>

You could go ahead and check the **Merge?** box and click **Merge Selected & Re-Cluster** at the bottom BUT we're making an executive decision to spell out all town names. No Abbreviations allowed.

So for this example, check the **Merge?** boxes but change the **New Cell Value** to spelling out the directions- E = East, etc. Then click **Merge Selected & Re-Cluster**.

<img src="../refine24.png" width="80%"></img>

Go through the rest of the Keying Function options and merge the appropriate suggestions.

Here's a [list](http://patrickgarvin.com/maps/data-mass-towns.xls) you can check to cross-reference correct town name spellings.

<img src="../refine25.png" width="70%"></img>

Now select **Method: Nearest Neighbor** in the top left drop down menu

<img src="../refine26.png" width="70%"></img>

Merge the appropriate towns. After you've gone through as many options as possible, close.

There should be about 390 choices left out of 426 originally. Not bad. But there's only 352 towns in Massachusetts.

What else can we do? Let's get rid of abbreviations. Run a **Text Filter** with a search for "."

<img src="../refine27.png" width="70%"></img>

Edit and spell all those out. Close out the filter and you should have 383 choices.

Gotta get more specific. Sort the **City** column **Text Facet** by **Count** and look at the names with low or single digit counts. This is where you can look for odd ones like, "Williamsburg, Ma." Change those manually.

<img src="../refine27.png" width="50%"></img>

**Let's stop cleaning data.** It will take a while to finish (but not nearly as long without assistance from OpenRefine).

Here's the cleaned up list, if you're curious [[link](http://www.andrewbatran.com/datastorytelling/openrefine/BAA-Mass-Cleaned.xls)]

<img src="../refinem6.png" width="90%"></img>

To save your new data set, click **Export> Excel** (or **CSV**, up to you).

The next step is thinking about visualizing the data. We'll make a choropleth map, a thematic map in which areas are shaded in proportion to the measured variable.

For this map, we'll shade it based on numbers of runners from each state in the U.S. We need to prepare the data.

If you want to move on, go for it. 

[Some advanced data work in Open Refine]({{ site.url }}/class8/openrefine_advanced)
