---
layout: page
title: Scraping data without programming using Import.io
---

Download the app [import.io](https://import.io/download/).

Start it up and click on **New**.

<img src="../import1.png" width="100%"></img>

You've got a lot of options.

Go ahead and click on **Magic**. 

<img src="../import2.png" width="100%"></img>

This is a list of previously constructed formulas to scrape some popular sites.

Click on the **Zillow** button.

<img src="../import3.png" width="100%"></img>

This spreadsheet was taken from the Zillow website.

<img src="../import4.png" width="100%"></img>

Do you see the similarities to the data from the original website?

<img src="../import5.png" width="100%"></img>

Click on **Download CSV** at the bottom right.

You can select how many pages of data to download.

<img src="../import6.png" width="100%"></img>

This is what the spreadsheet looks like. It's rough and needs cleaning up but now you can do a bunch of data analysis on it.

What do you think you can do with this type of data?

### Scraping from a website

<img src="../import7.png" width="100%"></img>

Click **New > Extractor**

**Let's take a look at AirBNB data**

Type in airbnb.com into the URL bar at the top of the app.

<img src="../import8.png" width="100%"></img>

Search for **Hartford, CT**.

<img src="../import9.png" width="100%"></img>

Click the **ON** button at the top left.

The page will reload and give you an alert that Javascript needs to be enabled.

<img src="../import10.png" width="100%"></img>

Click the **JS** button on the top right to turn on Javascript.

<img src="../import11.png" width="100%"></img>

Are you sure? Yes.

<img src="../import12.png" width="100%"></img>

We need to train the import.io app to recognize the data and sort them into a data frame.

Hover over the data you want to train. 

Hover over the $90 until it turns orange. 

Click it.

<img src="../import13.png" width="100%"></img>

We want to turn each of these listings into a row of a spreadsheet.

Select **Many rows**.

<img src="../import14.png" width="100%"></img>

This is also a link, would you like to add this too?

Yup. 

We're going to need it later.

<img src="../import15.png" width="100%"></img>

We can continue to click on **+New Column** and hovering and clicking for every facet that we want...

Or we can just click **Suggest Data** and it will guess what we want.

Go ahead and click it.

<img src="../import16.png" width="100%"></img>

OK, that's a lot of interesting data.

<img src="../import17.png" width="100%"></img>

It's pretty much what we want.

Click **Done** at the top right.

<img src="../import18.png" width="100%"></img>

You've created an API.

Name it and click **Publish**.

<img src="../import19.png" width="100%"></img>

You'll be brought to your import.io library.

<img src="../import20.png" width="100%"></img>

The problem here is that you've only got 1 page of data. 

That means 18 results from the page. There might be hundreds more.

Fortunately, there's an option for Bulk Extract.

<img src="../import21.png" width="100%"></img>

Give it a list of URLs with similar structure as the original one and it will pull out the data.

<img src="../import23.png" width="100%"></img>

We need to get the links for the other pages.

Right click on the **2** link at the bottom and copy the link. 

<img src="../import22.png" width="100%"></img>

The link looks like `https://www.airbnb.com/s/Hartford--CT--United-States?page=2`.

And it it appears there are 13 pages total.

You could paste this link into the import.io box 13 times and just change the number from 2 to 3 to 4, etc.

But here's a quicker way.

Open up Google Spreadsheets.

The only thing that changes from page to page in the URL is the number at the very end.

So let's make a formula that let's us change it easily.

<img src="../import24.png" width="100%"></img>

Delete the 2.

Type it into the column to the right.

You're separating it.

<img src="../import25.png" width="100%"></img>

Drag down the URL so that it copies down for 13 rows.

<img src="../import26.png" width="100%"></img>

Put in the numbers so it counts incrementally. 

<img src="../import27.png" width="100%"></img>

Now, let's use a formula in the next column to bring those two together.

<img src="../import28.png" width="100%"></img>

Drag the formula down so it fills out.

<img src="../import29.png" width="100%"></img>

Now you have a list of URLs.

Copy that column over to the import.io app and place it in the Bulk Extract box.

Click **Run Query**

<img src="../import30.png" width="100%"></img>

It will tell you that 14/14 URLs have been processed (1 URL failed because it looked for page 14 when it only goes up to 13)

Click the **Export** button at the top right when you're done.

<img src="../import31.png" width="100%"></img>

Now you have a new data set to analyze.

<img src="../import32.png" width="100%"></img>

The data set also includes links to specific pages for each AirBNB listing that will include more specific information like amenities and neighborhood.

Might be useful to scrape if you want to do a deeper dive into AirBNB data...

