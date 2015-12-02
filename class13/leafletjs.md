---
layout: page
title: Making a Leaflet.JS map from scratch
---

We've made maps using Google Fusion Table and CartoDB but now we're going to learn how to make one from scratch.

It's good to understand the mechanics of what programs like CartoDB or Silk is using to make their maps to see what's flexible and customizable in the future.

This tutorial will show you how to take a dataset with latitude and longitude columns, map it and style it using Leaflet.js, an open source Javascript library. It's extremely versatile for building many types of interactive maps.

### Get the data

We'll be mapping out Dunkin' Donuts locations in Connecticut.

Download the dataset <a href="../ctlist.csv">here</a>. 

### Setting up the environment

Set up the HTML by creating a new file on your computer called `leaflet.html` and paste the code below in it. 

<script src="https://gist.github.com/andrewbtran/ce3640d66357724408a1.js"></script>

The code above sets up the `<html>` and links to the `leaflet.css` and `leaflet.js` CDN files.

Next, we need to set up the div for where the map will appear and also the javascript to build the map.

Replace the code in `leaflet.html` with the code below.

<script src="https://gist.github.com/andrewbtran/fc5c9844104573b04b71.js"></script>

Here's what the code above is doing:

* The div id `#map` is set to `200px` height in the CSS section `<style></style>`
* `<div id="map"></div>` is the HTML body and where the map will be rendered.
* Everything within `<script></script` is the Javascript that builds out the map using the Leaflet library parameters.

`    var map = L.map('map').setView([41.651426, -72.690940], 8); `

The line above sets the variable map and `L.map('map')` directs the function building the map to render in the div id `map` (Remember `<div id="map"></div>`?). The latitude and longitude within `setView([])` is where the map should be centered and that's followed by `8` which is the level of zoom it should start at.

Beneath that is 

```
    L.tileLayer('http://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
    attribution: 'Map data &copy; <a href="http://openstreetmap.org">OpenStreetMap</a> contributors, <a href="http://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, Imagery © <a href="http://mapbox.com">Mapbox</a>',
    }).addTo(map);
```

So `L.tileLayer` sets the base layer tiles. 

* You can find other layers at [this site](http://leaflet-extras.github.io/leaflet-providers/preview/
)
* **Note:** These tiles are a wonderful and free open-source service. The only stipulation for using these tiles is to be sure to credit and link to them in the map.

At the end, `.addTo(map)` pipes latitude, longitude, and zoom information in the variable `map` above it. 

Save the file and open it in a browser.

<iframe src="http://andrewbtran.github.io/JRN-418/class13/map1.html" frameborder="0" width="100%" height="250" overflow="no" scrolling="no"></iframe>

Congratulations, you've coded <a href="../map1.html">a map</a>a> from scratch.

But we're just getting started. Let's add data to the map.

### Adding a popup marker

Insert these lines of code between `var map` and `L.tileLayer`

```
    var marker = L.marker([41.763919, -72.681897]).addTo(map);
        marker.bindPopup("<b>Hello</b><br><a href='http://www.trendct.org'>-TrendCT.org</a>");
```

`L.marker()` is function for an icon on the map with the latitude and longitude.

And `bindPopup` is the HTML you want to appear in the pop up window when people click on it.

Here's what the code looks like

<script src="https://gist.github.com/andrewbtran/5b26bcd3e1b3fc35c1fb.js"></script>

Here's how the marker looks

<iframe src="http://andrewbtran.github.io/JRN-418/class13/map2.html" frameborder="0" width="100%" height="250" overflow="no" scrolling="no"></iframe>

### Adding many dots on a map

Let's get the data. Visit [this link](https://docs.google.com/spreadsheets/d/1g3cLdI2goe8tVTehZpvleGsImeLFyWjIctxmq3KTBro/edit#gid=2062367066&vpid=A1).

<img src="../leaf2.png" width="60%"></img>

This is what the data looked like after I scraped it from the Dunkin' Donuts website.

But Leaflet needs these addresses to be translated to latitude and longitude.

To do that, you'll need to 1) concatenate the address, city, state, and zipcode columns into one new column and then 2) geocode the new column.

Here are some good services to geocode batches of addresses: 

#### Batch Geocoding options
* [CartoDB](https://cartodb.com/)
  * CartoDB will automatically look up latitude and longitude for addresses but won't let you export it easily (They want you to stay within their environment)
  * But you can still get the data by selecting all the data in the table (CTRL+A or CMD+A) and copy and paste it into a new spreadsheet
* [Texas A&M Geocoder - Free online geocoding](http://geoservices.tamu.edu/Services/Geocode/)
  * Email them a list of addresses and they'll email back latitudes and longitudes
* [BatchGeo](http://batchgeo.com/)
  * Only 250 free lookups a day
* [Geocodio](http://geocod.io/)
  * 100 free lookups a day (or 2,500 if you register)
* [Batch Geocode](http://www.findlatitudeandlongitude.com/batch-geocode/)
  * No limit, but lags after 300 lookups
  * Someone's running it himself. So who knows how long it will last?

**However**, we can skip all that for now. Just click on the **Formatted** tab at the bottom.

I've already done the hard work for you.

OK, copy the data in the **Formatted** tab of the [spreadsheet](https://docs.google.com/spreadsheets/d/1g3cLdI2goe8tVTehZpvleGsImeLFyWjIctxmq3KTBro/edit#gid=2062367066&vpid=A1) and paste it into the top window of [Mr. Data Converter](https://shancarter.github.io/mr-data-converter/)

<img src="../leaf3.png" width="60%"></img>

Select `JSON - Row Arrays` in the **Output as** pulldown menu.

Copy the data output in the bottom window and paste it into your code above `L.tilelayer`.

Add `var dlist =` before it and add `;` to the end.

This turns it into a Javascript array.

Next, delete the marker code we added before:


```
    var marker = L.marker([41.763919, -72.681897]).addTo(map);
        marker.bindPopup("<b>Hello</b><br><a href='http://www.trendct.org'>-TrendCT.org</a>");
```

And replace it with 

```
for (var i = 0; i < dlist.length; i++) {
	circle = new L.circle([dlist[i][1],dlist[i][2]], 500, {
	fillOpacity: .8,
  	color: '#ffa500',
	fillColor: '#ffa500',
  	weight:3,
  	radius:40,
	stroke: true
	})
	.bindPopup(dlist[i][0])
	.addTo(map);
	}
```

This is a loop function that will go through an array of data we just added `var dlist` and add a circle to the map after it finds the latitude and longitude in each row. 

The options below `circle` are various styles like color and opacity and how big the circles will be.

Here are [more options](http://leafletjs.com/reference.html#circle) for styling circles.

Also, let's make the height of the map larger. Change `#map` to `400px`.

```
		#map { height: 400px; }
```

**This what your code should look like**.

<script src="https://gist.github.com/andrewbtran/4b4e40b3506a76aedefb.js"></script>

**And here's the map!**

<iframe src="http://andrewbtran.github.io/JRN-418/class13/map3.html" frameborder="0" width="100%" height="250" overflow="no" scrolling="no"></iframe>

Pretty cool, right?

I swapped out the tile link so it would make the orange pop out more.

### Adding a legend

We're adding some additional CSS to the `<style>` section of the HTML.

This sets the dimensions of the box and the font size, as well as other things like padding and color.

Also in the `<body>` part of the HTML, we're adding a **div** for the legend to be rendered in.

This is that part of the code.

<script src="https://gist.github.com/andrewbtran/6d19f0335f23d6f69fe5.js"></script>

Adding all those lines of CSS and HTML looks like this.

The legend is in the bottom right corner.

<iframe src="http://andrewbtran.github.io/JRN-418/class13/map4.html" frameborder="0" width="100%" height="250" overflow="no" scrolling="no"></iframe>

And here's the complete code.

<script src="https://gist.github.com/andrewbtran/df8c037e38dc817f22bc.js"></script>