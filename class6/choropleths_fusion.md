---
layout: page
title: More Fusion Tables fun - Choropleth maps
---

Let's make another map!

Download [this data](https://docs.google.com/a/trendct.org/spreadsheets/d/1XGHH_I0dLqsqpcE-67EYfeF0BmQtkfUYoLv6VrunvJs/edit?usp=sharing) of town populations.

<img src="../chor1.png" width="100%"></img>

Download the [.kml](http://magic.lib.uconn.edu/magic_2/vector/37800/townct_37800_0000_2010_s100_census_1_kml.kmz) boundaries file for **Connecticut Towns** from [magic.lib.uconn.edu](http://magic.lib.uconn.edu/connecticut_data.html#boundaries).

Look for the 2010 version of **Connecticut Towns**

<img src="../chor2.png" width="100%"></img>

Unzip the file. If you can't, well, just download [this file](https://dl.dropbox.com/u/14023305/CT_TownBoundaries_Census2010.kml) then. 

<img src="../chor3.png" width="100%"></img>

Bring the boundary file into Google Fusion Table.

Click **next** and **finish**

Click the **Map of geometry** tab and you've got a map!

<img src="../chor4.png" width="100%"></img>

Not done yet. It's all a single color. That's boring.

Make another Google Fusion Table using the population spreadsheet you downloaded earlier.

<img src="../chor5.png" width="100%"></img>

OK, looks alright.

<img src="../chor6.png" width="100%"></img>

Go back to your map Google Fusion Table and click on **merge**.

Select the population table you just created.

Pull down the town menus you want them to match on: **name** and **name**.

<img src="../chor7.png" width="100%"></img>

Click next to everything and check out the newly created table.

<img src="../chor8.png" width="100%"></img>

You'll probably want to rename it so you can find it later.

<img src="../chor9.png" width="100%"></img>

Check out the map tab again.

<img src="../chor10.png" width="100%"></img>

Yes, nothing has changed.

Click on **Change feature styles** on the left.

Then click on **Fill color** under **Polygons**.

Next, click the **Gradient** tab.

Click **use this range** so it specifically looks at the numbers in the column, not just up to 100. Click on the **+** sign to add more colors.

After there's maybe a total of 7 colors, click **Save**.

<img src="../chor11.png" width="100%"></img>

That's better. 

<img src="../chor12.png" width="100%"></img>

But there's some red, right? For boundaries that have no values.

Click over to rows, and find the towns called **County subdivisions not defined**.

<img src="../chor13.png" width="100%"></img>

Double click into the geometry cell for each one and delete everything in geometry.

Click **Save**.

Do it for all four of them.

<img src="../chor14.png" width="100%"></img>

Go back to the map.

<img src="../chor15.png" width="100%"></img>

Nooo... there's still one bad one!

Branford!

<img src="../chor16.png" width="100%"></img>

Why is that?

Well, look at the original data... Branford is mispelled.

That's why it didn't join correctly.

<img src="../chor17.png" width="100%"></img>
