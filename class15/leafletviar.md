---
layout: page
title: Making a Leaflet.JS map with R
---

It's useful to quickly map a dataset of locations, and to do it in the same environment that you're doing your data analysis. There are many quick and easy ways to map latitude and longitude markers with R, such as using <a href="https://rpubs.com/nickbearman/r-google-map-making">RgoogleMaps</a>, <a href="http://www.kevjohnson.org/making-maps-in-r/">ggmaps</a> or <a href="http://rfunction.com/archives/2487">the maps package</a>.

But those packages generate static images. Sometimes you need to zoom in or pan around a map for greater comprehension.
<div style="float: left; padding-right: 15px;"><script class="chapterScript" src="http://projects.ctmirror.org/tools/chapters/init.js" type="text/javascript"></script></div>

At TrendCT, we use Leaflet, an open source Javascript library, to <a href="http://trendct.org/2015/05/15/the-most-distinctive-cause-of-death-in-connecticut-and-other-links/">generate</a> <a href="http://trendct.org/2015/04/28/40-of-connecticut-babies-are-born-on-medicaid/">our</a> <a href="http://trendct.org/2015/04/27/more-than-half-the-24-hour-restaurants-in-connecticut-are-dunkin-donuts/">maps</a>.

It's extremely versatile for building <a href="http://leafletjs.com/examples.html">many types</a> of interactive maps. The folks behind RStudio — a user interface to help you work with the statistical analysis language R — have been creating packages that integrate with popular Javascript libraries like Leaflet. It's great for people with no knowledge of Javascript who want to make interesting interactives using R. And there is excellent <a href="https://rstudio.github.io/leaflet/">documentation</a>.

This tutorial will show you how to take a dataset with latitude and longitude columns, map it and style it — all with just a few lines of code in R.

<h5 id="chapStructure">Difficulty Level</h5>

Intermediate. Go through the <a href="http://trendct.org/2015/06/12/r-for-beginners-how-to-transition-from-excel-to-r/">beginner tutorial</a> to get R and RStudio <a href="http://trendct.org/2015/06/12/r-for-beginners-how-to-transition-from-excel-to-r/#chapterTOC1">installed</a> before you begin.

Download the <a href="https://github.com/trendct/walkthroughs/blob/master/0615-leaflet-r/ctlist.csv">dataset</a>, set the <a href="http://trendct.org/2015/06/12/r-for-beginners-how-to-transition-from-excel-to-r/#chapterTOC4">working directory</a>, and follow along. You can also skip straight to the full <a href="https://github.com/trendct/walkthroughs/blob/master/0615-leaflet-r/0615-leaflet-r.R">script</a>.

<h5>Getting started</h5>

<div><script src="https://gist.github.com/andrewbtran/47af656dcfb4ccda97bf.js"></script></div>

<strong>Packages</strong> are collections of user-created R scripts, data and functions that simplify complex operations. There are thousands of them for all sorts of repetitive processes. TrendCT made <a href="https://github.com/trendct/ctnamecleaner">a package</a> to clean Connecticut town names. The directory where packages are stored is called the library. R comes with a standard set of packages. Others are available for download and installation. Once installed, they have to be loaded into the session to be used. There are two steps to working with packages:

<ul>
	<li>Downloading the package to your computer with <code>install.packages("package_name")</code> — after which you never have to re-download it (unless you want to because there's been an update).</li>
	<li>Load it to your session with <code>library(package_name)</code> or <code>require(package_name)</code>. Every time you start up R or RStudio, you have to reload the package to your computer's memory by calling its library/directory.</li>
</ul>

Start by downloading and installing the Leaflet package from the servers at CRAN, the Comprehensive R Archive Network. You'll need one more package, <strong>dplyr</strong>, for some piping functions.

<h5>A note on Pipes in R</h5>

The piping operator <code>%&gt;%</code> is a feature that streamlines coding in R.

<div><script src="https://gist.github.com/andrewbtran/6178b80ff973bfd317bd.js"></script></div>
It's easier to wrap your head around it if you think of coding grammatically. Normal coding in R is rigid declarative sentences: "Bob is 32. Nancy is 4 years younger than Bob." Coding with the pipe operator: "Nancy is 4 years younger than Bob, who is 32." Pipes are a comma (or a semi-colon, if you want) that lets you create one long, run-on sentence.
<h5>Making a map with a marker</h5>
<div><script src="https://gist.github.com/andrewbtran/b8224c6f96d4e63fe312.js"></script></div>

Explaining the R code

<ul>
	<li><code>leaflet()</code> initializes the leaflet workspace</li>
	<li><code>addTiles()</code> by itself will bring in the default OpenStreetMap tiles.
 <strong>Note: </strong> OpenStreetMaps is a wonderful and free open-source service. Their only stipulation for using their tiles is to be sure to credit and link to them in the map.</li>
	<li><code>setView()</code> is pretty self-explanatory but is simpler to implement.</li>
	<li><code>addMarkers</code> with some specific parameters.</li>
</ul>

<i>Note:</i> The order of commands is important. A view can't be set unless there are tiles established first.

<iframe id="graphic" style="width: 100%; height: 200px; overflow: hidden;" src="http://projects.ctmirror.org/content/trend/2015/6/leaflet/intror2.html" width="300" height="150" frameborder="0" scrolling="no"></iframe>

<h5>How to put it online</h5>
<div style="width: 70%; padding-left: 15%; padding-right: 15%;"><a href="http://trendct.org/files/2015/06/Screen-Shot-2015-06-22-at-11.18.44-AM.png"><img class="aligncenter size-full wp-image-2146" src="http://trendct.org/files/2015/06/Screen-Shot-2015-06-22-at-11.18.44-AM-1170x585.png" alt="Screen Shot 2015-06-22 at 11.18.44 AM" width="771" height="386" /></a></div>

If you want to share your map outside of the RStudio environment, simply click on the <strong>Save as Web Page</strong> option in <strong>Export</strong>. It will generate an HTML file that expands to the whole screen of the browser. From here, you can upload it to your server and iframe it to the appropriate height and width you want.

<h5>A note about file sizes</h5>

<a href="http://trendct.org/files/2015/06/Screen-Shot-2015-06-22-at-11.13.41-AM.png"><img class="aligncenter size-medium wp-image-2152" src="http://trendct.org/files/2015/06/Screen-Shot-2015-06-22-at-11.13.41-AM-336x103.png" alt="Screen Shot 2015-06-22 at 11.13.41 AM" width="336" height="103" /></a> When comparing the size of the HTML files, the R-produced version of the map is larger in size because it is bringing all the Javascript and CSS inline into the HTML.

However, when looking at how much data is actually downloaded to load the map html, the differences aren't as drastic.

<div style="width: 70%; padding-left: 15%; padding-right: 15%;"><a href="http://trendct.org/files/2015/06/headtohead.png"><img class="aligncenter size-full wp-image-2157" src="http://trendct.org/files/2015/06/headtohead-1170x580.png" alt="headtohead" width="771" height="382" /></a></div>

It's just something to keep in mind.

It's always better in terms of efficiency and customization to code from scratch. Here's a useful <a href="http://leafletjs.com/reference.html">tutorial</a> for reference.

But on a deadline, sometimes user experience is sacrificed.

<h5>Multiple locations from a CSV</h5>

<div><script src="https://gist.github.com/andrewbtran/3ce8113819c5ba5bac58.js"></script></div>

<a href="http://trendct.org/files/2015/06/Screen-Shot-2015-06-22-at-1.20.46-PM.png"><img class="aligncenter size-full wp-image-2163" src="http://trendct.org/files/2015/06/Screen-Shot-2015-06-22-at-1.20.46-PM.png" alt="Screen Shot 2015-06-22 at 1.20.46 PM" width="566" height="306" /></a> Let's make a map with a list of locations from the file <strong>ctlist.csv</strong>.

<ul>
	<li>The spreadsheet <strong>ctlist.csv</strong> was saved to the variable <code>ct</code></li>
	<li>The dataframe <code>ct</code> was added within the <code>leaflet()</code> function.</li>
	<li>Then it pipes to the <code>addTiles</code> function with a link to a set of dark map tiles. Here's a <a href="http://leaflet-extras.github.io/leaflet-providers/preview/">large list</a> of map tiles you can substitute.</li>
	<li>View and zoom is set the same as before.</li>
	<li>Then it pipes to the <code>addCircles</code> function, passing it the names of the latitude and longitude column in the <code>ct</code> dataframe, as well as where to find the text for the pop-up information, and the parameters to set the style of the circles on the map.</li>
</ul>

         <iframe id="graphic" style="width: 100%; height: 400px; overflow: hidden;" src="http://projects.ctmirror.org/content/trend/2015/6/leaflet/leafletr1.html" width="300" height="150" frameborder="0" scrolling="no"></iframe>

<h5>Adding a legend to the map</h5>

<script src="https://gist.github.com/andrewbtran/480751ec4d85dab0b6a8.js"></script>
<ul>
	<li>Pipe in <code>addLegend()</code></li>
</ul>
<iframe id="graphic" style="width: 100%; height: 400px; overflow: hidden;" src="http://projects.ctmirror.org/content/trend/2015/6/leaflet/leafletr2.html" width="300" height="150" frameborder="0" scrolling="no"></iframe>

Five lines of code in R to make a complete map.

Compare that to <a href="https://gist.github.com/andrewbtran/df8c037e38dc817f22bc">585 lines</a> of HTML, CSS, and Javascript.

You could specify a palette of colors and it would show a range of colors if needed in the legend and map. But for now we just have one type of dot on the map, so we specify the variables. To get a good look at the legend options, type <code>?addLegend</code> in the console of R.

But we'll get into that next time when we discuss mapping with choropleths.