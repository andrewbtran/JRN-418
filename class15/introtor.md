---
layout: page
title: Introduction to R
---


Switching from Excel to R for data analysis can seem daunting. Over time, the open-source statistical programming language has consistently grown in popularity among those who work with numbers, with thousands of user-created libraries to expand on its power.

Though it was first created primarily to make it easier to create statistical models and output very basic visuals to explore data, it's expanded to the point that people can use R to do a multitude of advanced processes such as scrape websites, communicate with APIs, and publish beautiful interactive charts and maps.

All with just a few lines of code.
<div style="float: left;"><script class="chapterScript" src="http://projects.ctmirror.org/tools/chapters/init.js" type="text/javascript"></script></div>

The practice of "Reproducible Research" has been spreading outside the world of academia to other areas, like non-profits and journalism. It's the idea that analyses should be published with the original data, as well as the methodology or software code so that others can verify or build on them.

Others can reproduce your practice, but the big draw is that for other projects, so can you.

In Excel, a user might run a formula, do some sorting, create a couple of pivot tables— but the work you did on that data cannot be replicated quickly on another spreadsheet with a similar data structure. The whole process has to be repeated step by step.

The point of doing data analysis in R is that a user can write a script to slice up and analyze a spreadsheet, then it can be saved, and then brought back to be used on another spreadsheet with just a few tweaks in the code.

<div style="width=75%; margin-left: 12%; margin-right: 12%;"><a href="http://trendct.org/files/2015/04/1417537149-geeks-vs-nongeeks.png"><img src="http://trendct.org/files/2015/04/1417537149-geeks-vs-nongeeks.png" alt="" width="100%" /></a></div>
<h5 id="chapDifficulty">Difficulty level</h5>

Easy.

This tutorial is based on a <a href="https://docs.google.com/presentation/d/1O0eFLypJLP-PAC63Ghq2QURAnhFo6Dxc7nGt4y_l90s/edit#slide=id.gb2fb03912_0_33&quot;">presentation</a> I gave at the Boston University Storytelling with Data Workshop. It's meant to ease seasoned Excel users into the world of R. With GIFs.

<h5 id="chapSettingUp">Setting up R</h5>
<ul>
	<li>Download and install R [<a href="http://cran.r-project.org/mirrors.html">cran.r-project.org</a>]</li>
	<li>Next, download and install RStudio [<a href="http://www.rstudio.com/products/rstudio/">rstudio.com</a>]</li>
	<li>Finally, <a href="https://github.com/andrewbtran/excel_to_r">download these files</a> and open <strong>excel-t-r.Rpoj</strong> to follow along.
</ul>
<h5 id="chapNavigating">Navigating RStudio</h5>
<div><a href="http://trendct.org/files/2015/04/Screen-Shot-2015-06-11-at-7.54.34-PM.png"><img src="http://trendct.org/files/2015/04/Screen-Shot-2015-06-11-at-7.54.34-PM.png" alt="Screen Shot 2015-06-11 at 7.54.34 PM" width="100%" /></a></div>

We will be working out of RStudio, which is a powerful shell that runs on top of R.

<h5 id="chapStructure">Data structures and variables in R</h5>
<div><a href="http://trendct.org/files/2015/04/Screen-Shot-2015-06-11-at-7.56.46-PM.png"><img src="http://trendct.org/files/2015/04/Screen-Shot-2015-06-11-at-7.56.46-PM.png" alt="Screen Shot 2015-06-11 at 7.56.46 PM" width="100%" /></a></div>

Get acquainted with the different types of data structures within R.

Spreadsheets in Excel are usually recognized as Matrices and Dataframes. When working in R, it's important to understand how they're made up by individual vectors and lists.

Start by creating some arrays and assigning them to variables using the arrow.
 The c() command stands for combine.

<script src="https://gist.github.com/andrewbtran/a3892869448130c7dda0.js"></script>

Type in sports in the console and this is what you get: A dataframe made up of different types of arrays (String, Number, Boolean).
<div><a href="http://trendct.org/files/2015/04/Screen-Shot-2015-06-11-at-8.45.23-PM.png"><img src="http://trendct.org/files/2015/04/Screen-Shot-2015-06-11-at-8.45.23-PM.png" alt="Screen Shot 2015-06-11 at 8.45.23 PM" width="100%" /></a></div>
<h5 id="chapOpening">Opening a file</h5>

<strong>Note: </strong>You can type out or copy the code in this tutorial into RStudio's console (bottom left window) line by line but the point is to reproduce this in the future. That means you should put all your code in a script in the top left window. <strong>File > New File > R Script </strong>

<div><a href="http://trendct.org/files/2015/04/openfile.gif"><img src="http://trendct.org/files/2015/04/openfile.gif" alt="openfile" width="100%" /></a></div>
First, you have to set the directory to where your files (like csvs) are.

<script src="https://gist.github.com/andrewbtran/d1c6a2416bed501c1442.js"></script>

Or, you can set it via the RStudio menu up top: <strong>Session &gt; Set Working Directory &gt; Choose Directory </strong>

<script src="https://gist.github.com/andrewbtran/e5e6d1c9e194fad2c6a3.js"></script>
<h5 id="chapNumRows">Looking up number of observations</h5>
<div><a href="http://trendct.org/files/2015/04/totalrows.gif"><img src="http://trendct.org/files/2015/04/totalrows.gif" alt="totalrows" width="100%" /></a><script src="https://gist.github.com/andrewbtran/58ad3eaf5146710fe051.js"></script>

<h5 id="chapfirstfive">Focus on first five rows</h5>
<div><a href="http://trendct.org/files/2015/04/top5.gif"><img src="http://trendct.org/files/2015/04/top5.gif" alt="top5" width="100%" /></a></div>

<script src="https://gist.github.com/andrewbtran/9acf9fd2cae7470082e7.js"></script>
<h5 id="chapstr">Checking structure of the data</h5>
<div><a href="http://trendct.org/files/2015/04/structure.gif"><img class="aligncenter size-full wp-image-1826" src="http://trendct.org/files/2015/04/structure.gif" alt="structure" width="771" height="505" /></a></div>
If you look closely at this column in Excel, you see the $ symbol disappears when you click into it. The raw data has no $ sign but only puts it there for cosmetic purposes. In R, it doesn't intuitively know that a $ means currency. That will cause errors when you try to run math on it because R won't let you perform calculations on strings. Here's how to check and see what kind of variables are in your dataframe.

<script src="https://gist.github.com/andrewbtran/0b17d9ccd70ba2e220a3.js"></script>

<h5 id="chapColumnCell">Focusing on Columns or Rows or Cells</h5>

Sometimes you want to look at a single cell, column, or row. To do so, add brackets to the dataframe in the console, like earnings[1,3].

Think "Data RoCks." As in, <strong>Data</strong>frame[<strong>R</strong>ownumber,<strong>C</strong>olumnnumber]

<div><a href="http://trendct.org/files/2015/04/Screen-Shot-2015-06-11-at-9.13.41-PM.png"><img src="http://trendct.org/files/2015/04/Screen-Shot-2015-06-11-at-9.13.41-PM.png" alt="Screen Shot 2015-06-11 at 9.13.41 PM" width="100%" /></a></div>

Most of the time, though, it's difficult to reference columns by number — especially when there's many, many columns. Here's an alternative: dataframe$NameOfColumn

<div><a href="http://trendct.org/files/2015/04/Screen-Shot-2015-06-11-at-9.18.45-PM.png"><img src="http://trendct.org/files/2015/04/Screen-Shot-2015-06-11-at-9.18.45-PM.png" alt="Screen Shot 2015-06-11 at 9.18.45 PM" width="100%" /></a></div>
<h5 id="chapFormatColumn">Changing format of a column</h5>
<div><a href="http://trendct.org/files/2015/04/numericformat.gif"><img src="http://trendct.org/files/2015/04/numericformat.gif" alt="numericformat" width="100%" /></a></div>

<script src="https://gist.github.com/andrewbtran/d2cfd6e95880d0fdae35.js"></script>
<h5 id="chapSortColumn">Sort a data frame based on a column</h5>
<div><a href="http://trendct.org/files/2015/04/sort.gif"><img class="aligncenter size-full wp-image-1831" src="http://trendct.org/files/2015/04/sort.gif" alt="sort" width="771" height="504" /></a></div>
<script src="https://gist.github.com/andrewbtran/d2b2ef1eeedc9e731b45.js"></script>

<h5 id="chapMath">Creating a formula</h5>
<div><a href="http://trendct.org/files/2015/04/formula.gif"><img src="http://trendct.org/files/2015/04/formula.gif" alt="formula" width="100%" /></a></div>

<script src="https://gist.github.com/andrewbtran/2d57d5ff39a20d573d0b.js"></script>
<h5 id="chapFilter">Filtering data by column content</h5>
<div><a href="http://trendct.org/files/2015/04/filter.gif"><img src="http://trendct.org/files/2015/04/filter.gif" alt="filter" width="100%" /></a></div>
<script src="https://gist.github.com/andrewbtran/6d92abaaef7b124e4456.js"></script>

<h5 id="chapCalcColumns">Calculations on columns</h5>
<div><a href="http://trendct.org/files/2015/04/colcalc.gif"><img src="http://trendct.org/files/2015/04/colcalc.gif" alt="colcalc" width="100%" /></a></div>

<script src="https://gist.github.com/andrewbtran/c6f16b57c97cadc3ddb2.js"></script>
<h5 id="chapDataColumns">Data to Columns in Excel</h5>
What if you want to split up a name into separate columns? It's pretty easy to do in Excel.
<div><a href="http://trendct.org/files/2015/04/datatocolumns.gif"><img src="http://trendct.org/files/2015/04/datatocolumns.gif" alt="datatocolumns" width="100%" /></a></div>
It's a bit more complicated in R, but here's how. The gist of it is: Creating new columns by copying the original name column and deleting everything before or after a comma.

<script src="https://gist.github.com/andrewbtran/43f5a0d440430ccee766.js"></script>

<h5 id="chapPivot1">Pivot table for simple count</h5>

How many employees are there per department?

<div><a href="http://trendct.org/files/2015/04/countper.gif"><img src="http://trendct.org/files/2015/04/countper.gif" alt="countper" width="100%" /></a></div>

<script src="https://gist.github.com/andrewbtran/f3488b84fc39ea9b2ef4.js"></script>
<h5 id="chapPivot2">Advanced pivot table</h5>
What's the sum of income for all employees in each department? Here's how to do it in R.
<script src="https://gist.github.com/andrewbtran/d2ec7117dc62eca86eac.js"></script>
 Other options other than "sum" include "median" and "mean."

<h5 id="chapSave">Check it and save file as a spreadsheet (CSV)</h5>

You could also save as a text file, if you want.
<script src="https://gist.github.com/andrewbtran/22c4357f47fcd29a7d1e.js"></script>
<h5>All set for now</h5>

Hopefully, this gets you on your way to working with R. If you wanted to run the same analysis on the second spreadsheet included in the files, you'd only have to adjust some of the column names, but you could run the entire thing and it would export you a new CSV in seconds.

Some of the steps in R were more complicated to pull off than in Excel. There are actually some great libraries that are <a href="http://had.co.nz/reshape/">more efficient</a>, but I wanted to show you how to execute the basics before we get into the shortcuts that people have put together in packages. 

The next R tutorial will expand on translating advanced Excel techniques to R.

</div></li>
</ul>