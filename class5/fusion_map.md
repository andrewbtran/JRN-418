---
layout: page
title: Fusion table exercise
---

Fusion Table exercise


Give a list of restaurants...

Go to Yelp.com. 

[http://www.yelp.com/hartford](http://www.yelp.com/hartford)

Find me 3 restaurants in your category. 

* Mexican
* Italian
* Coffee
* Burgers
* Chinese
* Vietnamese
* Yogurt

Put the restaurant name in [this spreadsheet](https://docs.google.com/spreadsheets/d/13hOGPJLyGzHS0ngqFinMcKmSShYXQbYCL77kKJE3Hyk/edit?usp=sharing).

<img src="../fusion1.png" width="100%"></img>

Make sure the name exists in the 'List' sheet 

<img src="../fusion2.png" width="100%"></img>

and that it matches the spelling exactly.

<img src="../fusion3.png" width="100%"></img>

After everyone has it filled out, download it as a CSV.

<img src="../fusion4.png" width="100%"></img>

Bring it into Google Fusion Table. (We went over this in the previous class)

Also, download [this data set](https://data.hartford.gov/Financial/City-of-Hartford-Business-Listing/4akt-7p7i) and also bring it into Google Fusion Table.

After you've got two new Fusion tables— one for the list and the other from the City of Hartford— merge the City of Hartford table to the List you created.

<img src="../fusion5.png" width="100%"></img>

The columns you want to focus on are the **Restaurant Name** from your list and **DBA** from the business table. Keep everything selected. 

<img src="../fusion6.png" width="100%"></img>

Create new table and then click 'View Table'

Alright, we've successfully merged the city's data with our list of restaurants.

<img src="../fusion8.png" width="100%"></img>

Now we can play around with it. Click on **Map of City** tab at the top.

<img src="../fusion9.png" width="100%"></img>

Do you remember the column highlighted in **yellow**? That means Google Fusion Table is interpreting that as a **location** and is now trying to map it out. However, this warning says that it's 81% ambiguous because it only has a city name in it. Click **Resume geocoding** and see what happens.

<img src="../fusion10.png" width="100%"></img>

There is a dot for every spot listed in the **city** column. The problem is that there's only four dots even though we've got a list of 21 places.

We could try to switch to the location column, but it still won't be perfect.

Why? Because it's like searching for a location in Google Maps. If you just put in an address without a city or state, it could be totally random.

To successfully geolocation a spot based on an address, the address must be as complete as possible.

So we need to bring the original City of Hartford data into Google Spreadsheets and modify it.

<img src="../fusion11.png" width="100%"></img>

One thought is to combine **Location**, **City**, and **State** into one column. However, that'd be inaccurate because **City** and **State** refer to the headquarters. 

Because this is a list of businesses within Hartford, then "Hartford, CT" needs to be added to every address in the spreadsheet.

Seems complicated, right? Fortunately there's a formula for that.

Click the little gray triangle in the header above **Location** and click **Insert 1 right**.

<img src="../fusion12.png" width="100%"></img>

Give this column a header name of **Combined Address**.

We are going to use a formula called **CONCATENATE**. This combines cells.

For example, **=concatenate(G2,"HARTFORD, CT")** would yield **302 WHITE STHARTFORD, CT**.

But that won't work, right? It needs another comma and space.

So adjust the formula to **=concatenate(G2, ", HARTFORD, CT")**

See what it did? It adds everything within the quotation marks. (DON'T FORGET THE COMMAS IN BETWEEN THE CELL IDENTIFIER AND THE QUOTES)

You'll get **302 WHITE ST, HARTFORD, CT**

Put that in and apply that to all the rows below it.

<img src="../fusion13.png" width="100%"></img>

Scroll down and make sure it went through all the rows. Sometimes if there's a value missing then it will stop.

Name this spreadsheet **Updated Business dataset**.

<img src="../fusion14.png" width="100%"></img>

Create a new Fusion table. But this time don't bring it in from your computer. Click on **Google Spreadsheets** in the **Import new table** window this time.

<img src="../fusion15.png" width="100%"></img>

Select **Updated Business dataset**. And bring it in. 

Now, you see **City** is still highlighted yellow. We need to change that.

Hover over **City** until a little gray triangle appears. Click it and select **Change**.

<img src="../fusion16.png" width="100%"></img>

Select the pulldown menu next to **Type** and change it from **Location** to **Text**.

Don't forget to click **SAVE**.

<img src="../fusion17.png" width="100%"></img>

The **City** column is no longer yellow. 

Hover over **Combined Address** until a little gray triangle appears. Click it and select **Change**.

<img src="../fusion18.png" width="100%"></img>

Select the pulldown menu next to **Type** and change it from **Text** to **Location**.

Click **Save**.

<img src="../fusion19.png" width="100%"></img>

It should be yellow now.

Excellent.

<img src="../fusion20.png" width="100%"></img>

OK, go back to the original Fusion Table you created. **List of restaurants in Hartford - Restaurants**.

<img src="../fusion21.png" width="100%"></img>

We have to merge that with the new and improved table. **Updated Business dataset**.

<img src="../fusion22.png" width="100%"></img>

Same as before. Select the columns that will best match. **Restaurant Name** and **DBA**

Now you've got a new table. Pop it open.

<img src="../fusion23.png" width="100%"></img>

Looks like the **Combined Address** column is already highlighted yellow. 

Click on the **Map of Combined** tab at the top to map it out.

<img src="../fusion24.png" width="100%"></img>

Nice. 

0% Ambiguous because we were as specific as possible with the addresses.

<img src="../fusion25.png" width="100%"></img>

And all the dots are in Connecticut. 

Wonderful.

<img src="../fusion26.png" width="100%"></img>

Click on one of the dots and you'll see a pop up filled with the details from the spreadsheet.

Click on **Change info window...** on the far left.

<img src="../fusion27.png" width="100%"></img>

This is the inner workings of the pop-up window.

Unselect **Account**, **Owner**, **Owner 2**, **Address**, **Address 2**, **Location**, and **Hartford**.

Leave **Restaurant Name**, **Category**, **Combined Address** checked. Click save.

<img src="../fusion28.png" width="100%"></img>

Better! But still weird, right? 

<img src="../fusion29.png" width="100%"></img>

We don't want the thing to look so formal with the titles. 

Let's take them out or modify them.

Go back to **Change info window...** and this time click on the **Custom** tab.

<img src="../fusion30.png" width="100%"></img>

Here, we can modify the HTML and CSS.

We want to get rid of **"Restaurant Name"** and let the restaurant name stand alone. But leave it bolded.

Click save

<img src="../fusion31.png" width="100%"></img>

Great. Look smuch better.

<img src="../fusion32.png" width="100%"></img>

Let's modify it some more.

Click on **Change feature styles...** on the left.

<img src="../fusion33.png" width="100%"></img>

Click on **Buckets**.

Click on the button next to **Divide into...**

Scroll down to **6**.

Make sure **Assessment** is selected in the **Column** pulldown.

The default is to have 6 icons representing the span between 0 and 100.

But we want the icons to represent the span for how much the locations are assessed.

So click on the **use this range** link next to 1,640 - 174,840.

**Note:** You can select the icons to customize it a bit.

<img src="../fusion34.png" width="100%"></img>

Click save.

<img src="../fusion35

OK, that looks interesting. But what do the map markers mean?

Go back to **Change feature styles...**

<img src="../fusion36.png" width="100%"></img>

This time click **Automatic legend** underneath **Legend**.

Check the box next to **Show marker legend**.

You can change the Title if you want or fix the Legend position.

Click save.

<img src="../fusion37.png" width="100%"></img>

Excellent. Now we can quickly see which restaurants are assessed what.

<img src="../fusion38.png" width="100%"></img>

From here, you can share and embed on your site.

Click the triangle next to **Map of Combined...** and select publish.

<img src="../fusion39.png" width="100%"></img>

You'll have to change the visibility to public, first.

<img src="../fusion40.png" width="100%"></img>

Click change next to **Private** in **Who has access**.

<img src="../fusion41.png" width="100%"></img>

You can select either **On** you're comfortable with.

**This is how it looks embedded on a website.**

<iframe width="100%" height="400" scrolling="no" frameborder="no" src="https://www.google.com/fusiontables/embedviz?q=select+col7%3E%3E1+from+1ULZJR4ivVqZqu90WEG2PeL02RPoolhYuJJRg0fVp&amp;viz=MAP&amp;h=false&amp;lat=41.76609148121816&amp;lng=-72.67801035308838&amp;t=1&amp;z=12&amp;l=col7%3E%3E1&amp;y=2&amp;tmplt=2&amp;hml=ONE_COL_LAT_LNG"></iframe>















