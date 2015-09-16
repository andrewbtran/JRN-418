Introduction to Plotly
========================================================
author: Andrew Tran
date: September 16, 2015

Go to plotly.com or plot.ly
========================================================
Create an account! 
<div class="wide">
<img src="plotly1.png" style="width:100%"></img>
</div>

Wait, wait, wait
========================================================

**What is Plotly?**

> Plotly is an online analytics and data visualization tool, headquartered in Montreal, Quebec. Plotly provides online graphing, analytics, and stats tools for individuals and collaboration, as well as scientific graphing libraries for Python, R, MATLAB, Perl, Julia, Arduino, and REST.

Plotly was built using **Python** and the **Django** framework, with a front end using **JavaScript** and the visualization library **D3.js**, **HTML** and **CSS**. Files are hosted on **Amazon S3**.

Other chartbuilders out there
========================================================

* [Chartbuilder 2.0](http://quartz.github.io/Chartbuilder/)
* [Silk](https://www.silk.co/)
* [Datawrapper](https://datawrapper.de/)
* [Tableau](http://www.tableau.com/)

Why plotly?
========================================================

* Plot.ly has a graphical user interface for importing and analyzing data into a grid and using stats tools. *Graphs can be embedded or downloaded.*
* API libraries for Python, R, MATLAB, Node.js, Julia, and Arduino and a REST API. Plotly can also be used to style interactive graphs with IPython.
* Figure Converters which convert matplotlib, ggplot2, and IGOR Pro graphs into interactive, online graphs.
* Plotly Apps for Google Chrome.
* Plotly.js is a JavaScript library for creating graphs and dashboards.
* Plotly Enterprise an on-premises installation of Plotly.

OK, you've signed up
========================================================

Welcome to plot.ly/feed
<div class="wide">
<img src="plotly2.png" style="width:100%"></img>
</div>

Click on any of the examples
========================================================

<div class="wide">
<img src="plotly3.png" style="width:100%"></img>
</div>

Click the **DATA** tab.

Now you can see how the data was organized
========================================================
<div class="wide">
<img src="plotly4.png" style="width:100%"></img>
</div>

Or click Fork & Edit
========================================================
<div class="wide">
<img src="plotly5.png" style="width:100%"></img>
</div>
Click **SAVE** if you want to save a copy of it to your list of projects.

Let's start from scratch
========================================================

Click on **+NEW PROJECT** button at the top right or click on the  **+NEW GRID** button at the top left (depending on what page you're on)
<div class="wide">
<img src="plotly6.png" style="width:100%"></img>
</div>

Let's start from scratch
========================================================

Click on **+NEW PROJECT** button at the top right or click on the  **+NEW GRID** button at the top left (depending on what page you're on)
<div class="wide">
<img src="plotly6.png" style="width:100%"></img>
</div>

Preparing the data
========================================================

Lets bring in [homicide data](https://docs.google.com/spreadsheets/d/1G75F8jAuj-9r-y5r4JMM5UV6-RYyXBVcWbJ5puxqTPI/edit?usp=sharing). 

Problem: Even though the data from the UCR came in this horizontal format, the structure needed for the chart is vertical.

Solution: **Copy** and **Paste special** > **Paste transpose**.

<div class="wide">
<img src="plotly7.png" style="width:100%"></img>
</div>

Bringing in the data
========================================================

Copy and paste the new columns into plotly.

<div class="wide">
<img src="plotly8.png" style="width:100%"></img>
</div>

Choose the Y headers
========================================================

Make sure the new columns are recognized by selecting **choose as y**.

<div class="wide">
<img src="plotly9.png" style="width:100%"></img>
</div>

Rename the column titles
========================================================

Click the little gray triangle next to each of the **Col** names and click **Rename**. Change the headers to the titles.

<div class="wide">
<img src="plotly10.png" style="width:100%"></img>
</div>

Remove the old row with the titles
========================================================

Select the entire row and right click. Then select **Remove selected row**.
<div class="wide">
<img src="plotly11.png" style="width:100%"></img>
</div>

Close!
========================================================

Your data is still in the tab on the top left in one of the **Grid** tabs.

Click in the box in the title, x axis, and y axis to change the text.

<div class="wide">
<img src="plotly13.png" style="width:100%"></img>
</div>

Changing the style
========================================================

Select any of the premade themes on the left.

<div class="wide">
<img src="plotly14.png" style="width:100%"></img>
</div>

Changing the style
========================================================

Or play around with the icons near the top. 

Traces will let you change the color of each individual line. 
<div class="wide">
<img src="plotly15.png" style="width:100%"></img>
</div>

More style
========================================================

The Legend icon will let you play with options like background color and position.  
<div class="wide">
<img src="plotly16.png" style="width:100%"></img>
</div>

More style
========================================================

I got rid of the grid lines by clicking on **AXES** and then **Lines** and checking **Grid lines** to off.
<div class="wide">
<img src="plotly17.png" style="width:100%"></img>
</div>

Adding annotations
========================================================

This is one of the most useful parts about plotly.

Click **NOTES** then **New text** and text with an arrow will appear on the chart. From here, you can customize it by dragging it where you want to go and even hiding the arrowhead if you want.

<div class="wide">
<img src="plotly18.png" style="width:60%"></img>
</div>

Done?
========================================================

Click **SAVE** and then **Share**. 

Get the shareable link or the embed code. Whatever you need.

<div class="wide">
<img src="plotly19.png" style="width:100%"></img>
</div>

Done?
========================================================

Or hover and find the camera icon and click it to save it as an image file.

<div class="wide">
<img src="plotly20.png" style="width:100%"></img>
</div>

