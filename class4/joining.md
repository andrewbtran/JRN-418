---
layout: page
title: Joining with Google Fusion Tables
---

This walkthrough accompanies a [lecture](http://andrewbtran.github.io/JRN-418/class4/bristol.html) about the Bristol Herald Courier's story about missing royalties.

### Start by downloading the data sets

* [DMME - Division of Gas and Oil - Escrow Agent Summaries](https://www.dmme.virginia.gov/DGO/DgoEscrowAgentSummaries.shtml)

<img src="{{ site.url }}class4/fusion1.png" align="left" width="100%" />

Click on the January Escrow Agent Summary link under 2009 Escrow Agent Summaries

----

* [Division of Gas and Oil Data Information System](https://www.dmme.virginia.gov/dgoinquiry/frmMain.aspx?ctl=9)

Select January 2009. Let the page reload.

Click Export to Excel

<img src="{{ site.url }}class4/fusion2.png" align="left" width="100%" />

&nbsp;

----

It will download a file called 'frmPrint.aspx' -- find it on your computer and rename it to 'well_production.xls'

<img src="{{ site.url }}class4/fusion3.png" align="left" width="100%" />

&nbsp;

----

Bring both Excel spreadsheets into Google Spreadsheets to clean up

<img src="{{ site.url }}class4/fusion4.png" align="left" width="100%" />

&nbsp;

----

Select 'Insert new sheet(s)'

Rename the sheets appropriately: one for production, the other for payments

<img src="{{ site.url }}class4/fusion5.png" align="left" width="100%" />

&nbsp;

----

Go to the production sheet and delete the buffer row and column.

<img src="{{ site.url }}class4/fusion6.png" align="left" width="100%" />

&nbsp;

----

OK, we need to clean it up even more. There are almost 7,000 rows in the production versus more than 800 in the escrow accounts sheet.

Go to the payments sheet. Scroll down and notice two different types of data.  The one on top are the accounts that got money. The data below are the wells that made no money. That's what we want to focus on. Delete all the extra rows above it except for the header titles. (Everything above row 744).

Delete zero balance at the bottom, too.

<img src="{{ site.url }}class4/fusion7.png" align="left" width="100%" />

&nbsp;

----

Go to the production sheet, and notice that there are a few blank cells and rows.

First, freeze the top row. 

View > Freeze > 1 row

<img src="{{ site.url }}class4/fusion8.png" align="left" width="100%" />

&nbsp;

----

Select the little gray arrow in column C and click Sort sheet A - Z.

<img src="{{ site.url }}class4/fusion9.png" align="left" width="100%" />

&nbsp;

----

All the extra rows are at the bottom now. Select the rows (6656 and below) and delete them.


<img src="{{ site.url }}class4/fusion11.png" align="left" width="100%" />

&nbsp;

----

**TIME TO CLEAN UP THE COLUMNS**

To match up the spreadsheets successfully, the names need to match exactly.

That means we have to get rid of anything that might throw it off like spaces, dashes, or parenthesis.

Select the 'Unit ID' column in the Payments sheet and press control+f

Click the '...' to expand the options.

<img src="{{ site.url }}class4/fusion12.png" align="left" width="100%" />

&nbsp;

----

In the 'Find' field, put in '-'
and in the 'Replace with' field, leave it blank.

This will essentially delete all dashes.

BUT, we have to limit the range, we don't want to mess with any other data in the sheet.

So next to search, select 'specific range' from the pull down menu and click the little grid.

<img src="{{ site.url }}class4/fusion13.png" align="left" width="100%" />

&nbsp;

----

Select the B column and it will limit the search and replace to that column.

<img src="{{ site.url }}class4/fusion14.png" align="left" width="100%" />

&nbsp;

----

It should go back to the previous pop up. Select 'Replace all'.

You should get a 'Replaced all instances of '-' with ''

<img src="{{ site.url }}class4/fusion15.png" align="left" width="100%" />

&nbsp;

----

Repeat the step with a space to delete spaces.

<img src="{{ site.url }}class4/fusion16.png" align="left" width="100%" />

&nbsp;

----

Now, go to the Production sheet.

Get rid of dashes, spaces, #, and "W/PL" (Don't forget the space in front of W/PL)

<img src="{{ site.url }}class4/fusion17.png" align="left" width="100%" />

&nbsp;

----

Ah, one more thing, there are entries with parentheses like 9550(CCC165).

We don't want anything in the parentheses and we don't want the parentheses either. We need to use a formula to get rid of them.

In G2 of Production, type in the formula:
=split(C2, "(")

What this does is it looks at cell C2, and split it when it notice an open parentheses sign.

Drag this formula down so that it applies to all rows in the spreadsheet. You'll see the leftovers in the column to the right. You can delete that one.

<img src="{{ site.url }}class4/fusion18.png" align="left" width="100%" />

&nbsp;

----

OK, go back to Payments and delete the empty columns.

<img src="{{ site.url }}class4/fusion19.png" align="left" width="100%" />

&nbsp;

----

Now, let's download each of these sheets as a separate CSV file.

<img src="{{ site.url }}class4/fusion20.png" align="left" width="100%" />

&nbsp;

----

You should have two CSV files.

One called Production, the other called Payments.

<img src="{{ site.url }}class4/fusion21.png" align="left" width="100%" />

&nbsp;

----

Go to your Google Drive.

Click on New > More >  Connect more apps

<img src="{{ site.url }}class4/fusion22.png" align="left" width="100%" />

&nbsp;

----

Search for Fusion Tables and click + Connect

<img src="{{ site.url }}class4/fusion23.png" align="left" width="100%" />

&nbsp;

----

Go back to your Google Drive. Click on New > More > Fusion Tables

<img src="{{ site.url }}class4/fusion24.png" align="left" width="100%" />

&nbsp;

----

Click From This Computer > Choose File.

Select the Production csv. Click Next. Click it agian. Then click Finish.

<img src="{{ site.url }}class4/fusion25.png" align="left" width="100%" />

&nbsp;

----

Click File > New table and bring in the Payments csv like before.

<img src="{{ site.url }}class4/fusion26.png" align="left" width="100%" />

&nbsp;

----

Now in the Payments fusion table, click File > Merge

<img src="{{ site.url }}class4/fusion27.png" align="left" width="100%" />

&nbsp;

----

Select Production fusion table and click next.

<img src="{{ site.url }}class4/fusion28.png" align="left" width="100%" />

&nbsp;

----

Now, select the columns that you want joined.

It should be UnitID and Copy. Click next.

<img src="{{ site.url }}class4/fusion29.png" align="left" width="100%" />

&nbsp;

----

You can select the columns you want brought over from Production. Leave everything checked. Click Merge.

<img src="{{ site.url }}class4/fusion30.png" align="left" width="100%" />

&nbsp;

----

A new table has been created.

Go ahead and click over to it and check it out.

<img src="{{ site.url }}class4/fusion31.png" align="left" width="100%" />

&nbsp;

----

Click file and download

<img src="{{ site.url }}class4/fusion32.png" align="left" width="100%" />

&nbsp;

----

Pop it open. Go ahead and sort it so the blank rows float to the bottom.

<img src="{{ site.url }}class4/fusion33.png" align="left" width="100%" />

&nbsp;

----

It looks like 56 wells that got no money actually produced something.

That's 56 out of 154. Almost a third.

<img src="{{ site.url }}class4/fusion34.png" align="left" width="100%" />

&nbsp;

----

It's by no means perfect yet. The wells need to be cleaned up further and rejoined.

But it's a start.


