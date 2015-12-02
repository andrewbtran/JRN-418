---
layout: page
title: Making D3 charts using D3Plus.js
---

Data-driven documents, known as D3, is the most-common standard for interactive data visualizations. 

It is built on Javascript but uses HTML and CSS to style it. As you can see based on the many examples on the official site, [D3js.org](http://d3js.org/), there are many opportunities to turn your data into an interactive visualization.

You might not have noticed, but we've used D3 before when we used [Plot.ly](http://andrewbtran.github.io/JRN-418/class3/plotly.html). 

Unfortunately, D3 takes some advanced knowledge of Javascript, HTML, and CSS to build it from scratch. 

[Plot.ly](http://andrewbtran.github.io/JRN-418/class3/plotly.html) is a service for those who don't want to deal with the coding. It's a chart-building service that renders the visualizations using D3. However, there are limitations. You only have as much flexibility as their chart generators allow. Like height will always be limited. 

However, [D3plus.org](http://d3plus.org/) is an alternative for those who want to create D3 visualizations with a high level of customizaiton but don't have the deep coding knowledge.

A group of people from MIT's Media Lab created D3plus as a sort of introduction, or bridge to D3.

<a href="http://d3plus.org/"><img src="../dplus1.png" width="100%"></img></a>

They have a set of visualizations, like scatter plots, tree charts, bar charts, etc. 

All the code behind it is listed below each example and open to tweaking.

We're going to try it out and make the chart below.

<a href="http://andrewbtran.com/JRN-418/class14/d3pluschart/"><img src="../dplus2.png" width="80%"></img></a>

### Get the data

We'll replicate one of the charts used in this Connecticut Mirror story: [The story in charts: Who still smokes?](http://ctmirror.org/2015/11/18/the-story-in-charts-who-still-smokes/)

Start by taking a look at [the data](https://docs.google.com/spreadsheets/d/1jpYBjBXPrNCwKBftOXfNui5WMG4LOQBnHnUVf6Praf4/edit?usp=sharing).

<a href="https://docs.google.com/spreadsheets/d/1jpYBjBXPrNCwKBftOXfNui5WMG4LOQBnHnUVf6Praf4/edit?usp=sharing"><img src="../dplus3.png" width="70%"></img></a>

### Find the bar chart example in D3plus

On the [D3plus website](http://d3plus.org), click over to the [Simple Bar Chart plot](http://d3plus.org/examples/basic/32517cfde67270c99092/) example.

<a href="http://d3plus.org/examples/basic/32517cfde67270c99092/"><img src="../dplus4.png" width="90%"></img></a>

### Copy and paste the D3plus code into a text editor

Underneath the simple bar chart is a GitHub gist (a way to display code snippets). Inside is the HTML code that includes the D3plus Javascript needed to render the bar chart.

Copy and paste the code below into a text editor like Sublime or Notepad++.

<script src="https://gist.github.com/andrewbtran/27a9b53701c0338486cd.js"></script>

### Swap out the data with your own

Replace this dummy data with the smoking data into the array in the HTML.

**Tip**: Instead of doing it by hand, use [Mr. Data Converter](https://shancarter.github.io/mr-data-converter/) to do it quickly.

**Important**: The format of the smoking data must match the format of the data in the Javascript array.

This might take some extra work. D3's requirements is a little particular that what you're used to while looking at data in a spreadsheet.

For example, it's logical to view the smoking data like this:

<a href="https://docs.google.com/spreadsheets/d/1jpYBjBXPrNCwKBftOXfNui5WMG4LOQBnHnUVf6Praf4/edit?usp=sharing"><img src="../dplus3.png" width="70%"></img></a>

But for D3, it needs to look like this:

<a href="https://docs.google.com/spreadsheets/d/1jpYBjBXPrNCwKBftOXfNui5WMG4LOQBnHnUVf6Praf4/edit?usp=sharing"><img src="../dplus5.png" width="70%"></img></a>

Do you see the difference? 

The column headers `2005` and `2014` become variables and the data stacks up.

Education levels like `No HS diploma` are repeated in the same column but D3 will know that they are different because of the new column called `Year`. 

It's tough to wrap your head around at first, but it's all in the name of data journalism, which is essentially figuring out how to do this:

<img src="http://cdn.meme.am/instances/500x/57164489.jpg" width="40%"></img></a>

So just to reiterate, and pardon me for belaboring the point but this is important, this is what the array would look like if you used the data from the `Raw` sheet at the bottom of [this link](https://docs.google.com/spreadsheets/d/1jpYBjBXPrNCwKBftOXfNui5WMG4LOQBnHnUVf6Praf4/edit?usp=sharing).

```
[{"Education level":"No HS diploma","2005":25.5,"2014":22.9},
{"Education level":"HS grad","2005":24.6,"2014":21.7},
{"Education level":"Some college","2005":23.5,"2014":19.7},
{"Education level":"Associate degree","2005":20.9,"2014":17.1},
{"Education level":"Undergrad degree","2005":10.7,"2014":7.9},
{"Education level":"Grad degree","2005":7.1,"2014":5.4}]
```
If you replaced the data in the Simple Chart Example array with the code above, it wouldn't work because it's the incorrect format.

Instead, you need to use the data in the format from `For D3` at the bottom of [this link](https://docs.google.com/spreadsheets/d/1jpYBjBXPrNCwKBftOXfNui5WMG4LOQBnHnUVf6Praf4/edit?usp=sharing).

It looks like:

```
[{"Education level":"No HS diploma","Year":2005,"Percent":25.5},
{"Education level":"HS grad","Year":2005,"Percent":24.6},
{"Education level":"Some college","Year":2005,"Percent":23.5},
{"Education level":"Associate degree","Year":2005,"Percent":20.9},
{"Education level":"Undergrad degree","Year":2005,"Percent":10.7},
{"Education level":"Grad degree","Year":2005,"Percent":7.1},
{"Education level":"No HS diploma","Year":2014,"Percent":22.9},
{"Education level":"HS grad","Year":2014,"Percent":21.7},
{"Education level":"Some college","Year":2014,"Percent":19.7},
{"Education level":"Associate degree","Year":2014,"Percent":17.1},
{"Education level":"Undergrad degree","Year":2014,"Percent":7.9},
{"Education level":"Grad degree","Year":2014,"Percent":5.4}]
```

You'll also need to replace `name`, `year`, and `value` so that it matches the new data array.

```
    .id("name")         // key for which our data is unique on
    .x("year")          // key to use for y-axis
    .y("value")         // key to use for x-axis
    .draw               // This draws the visualization
```

Here's what the updated code should look like.

<script src="https://gist.github.com/andrewbtran/7e7cd42f24a1b542f322.js"></script>

### Upload the HTML file to your server

I've uploaded the file to my GithHub page but this is how it renders:

<img src="../dplus6.png" width="100%"></img>

What's the problem?

### Changing the height and width 

We need to explicitly detail the dimensions of the interactive.

Add `style="width:600px; height:400px;"` to the ` <div id="viz">` tag.

The line in your code whould now be:

```<div id="viz" style="width:600px; height:400px;"></div>```

This is what it will look like now:

<img src="../dplus7.png" width="100%"></img>

You could set the height and width to whatever you want.

If you have a responsive site, you could set the width to `100%` and it would match the size of the screen.

It's up to you.

### Next steps

* Adding a Title [How to](http://d3plus.org/examples/advanced/10276914/)
* Change colors [How to](http://d3plus.org/examples/utilities/53696917e5fd0964f91e/)

### Embed the interactive chart into your story

If you're using a content management system that likes to strip out custom code like Wordpress, you can upload the code as a standalone page and embed that into your site as an [iframe](http://www.w3schools.com/tags/tag_iframe.asp). 

So, for example, I'd have the chart here at [http://andrewbtran.github.io/JRN-418/class14/d3pluschart.html](http://andrewbtran.github.io/JRN-418/class14/d3pluschart.html)

I'd need to put the code into the iframe code like below. The height and width should match. If you're putting together an iframe on a responsive site, well, that's a [slightly more complicated](http://www.smashingmagazine.com/2014/02/making-embedded-content-work-in-responsive-design/).

`<iframe src="http://andrewbtran.github.io/JRN-418/class14/d3pluschart.html" frameborder="0" width="640" height="440" overflow="no" scrolling="no"></iframe>` 

Paste the link above into your Wordpress site and it will look like this:

<iframe src="http://andrewbtran.github.io/JRN-418/class14/d3pluschart.html" frameborder="0" width="600" height="440" overflow="no" scrolling="no"></iframe>

The bars are interactive. 

Congratulations!

Explore some more and try to replicate other project [examples on D3plus](http://d3plus.org/examples/).