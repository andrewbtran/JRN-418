<style>
  .wide {
    width:100%;
    padding-left:5%;
    padding-right:5%;
  }
.midcenter {
  position: fixed;
  top: 50%;
  left: 50%;
}
</style>


How to understand and retrieve Census data — for beginners
========================================================
author: Andrew Ba Tran
date: November 4, 2015

Thanks to this document
========================================================
<div class="wide">
<img src="http://www.nationofchange.org/2015/wp-content/uploads/changeconst22715.jpg" style="width:100%"></img>
</div>

U.S. Constitution
========================================================

An enumeration must be made every 10 years, which determines 
* how many federal representatives each state receives
* how federal resources are parsed out. 

U.S. Constitution
========================================================
In the past, surveys filled out as part of the Census have helped policymakers decide what to do in times of crisis, like during the Great Depression when they needed an idea of how grim the situation actually was.

The Census
========================================================
But another effect of the Census is that the public can use the data to answer their own questions.

For some social and data scientists, working with Census data is a breeze. But for everyone else, it can be overwhelming. So today we’ll talk about understanding the Census — and how total beginners can retrieve datasets.

The Census: History
========================================================

To best understand how the Census works, it’s important to understand it’s history.

The first Census in 1790 mainly wanted to track males older than 16 — to gauge military potential — as well as the number of free people and slaves. It surveyed the head of each household, which looked like this:

<div class="wide">
<img src="http://3m0s6l2ief6j3hrzgs3m55qv.wpengine.netdna-cdn.com/files/2015/08/Screen-Shot-2015-08-12-at-2.49.36-PM.png" style="width:100%"></img>
</div>

The Census: History
========================================================

As the population grew, among the biggest challenges was figuring out how to gather large amounts of data — and to count it without computers. 

In 1870, the first tallying machine was introduced, but it was still a laborious process — and it took nearly a decade to count all the surveys, at which point it was time to begin the next Census.

It wasn’t until 1890 that an electronic tabulating system helped speed up counting.

The Census: History
========================================================

Another large problem was — and still is — the undercounting of some minority populations. 

* For example, analysis of the 1980 survey found that African Americans were severely undercounted. 

One solution was to use statistical sampling to adjust the data for these populations, but the Supreme Court ruled in 1999 that using these methods to allocate seats in the U.S. House of Representatives violated the Census Act of 1976. 

It did not rule out the use of sampling for redistricting or the allocation of federal resources.

The Census: History
========================================================
In 2010, the census bureau estimated that it missed 1.5 million minorities.

All this is to say: Counting large numbers of people is hard, and it’s important to keep that in mind when looking at Census data.

The Census: A new survey
========================================================

Before 2010, there used to be two surveys: a “short” survey, which all households received, and a “long-form” survey, which one-in-six households received in 2000.


The Census: A new survey
========================================================
But in 2010, that changed. 

Every household received a 10-question survey for the biennial Census. 

But the in-depth questions went to the **American Community Survey**, which surveys about 295,000 people a month. 

It is a running survey, which gives more up-to-date data compared to the previous long-form Census survey taken once every 10 years. 

Not everyone supports this mandatory survey, but it helps us answer some very important questions.

The Census: A new survey
========================================================

Because it’s not a survey of the entire population, you can’t answer questions about small groups of people using just one year's worth of data — otherwise known as “one-year estimates.” 

So the Census combines data from multiple years to provide a better estimate for smaller locales or demographic groups. 

That’s what it means to use “three-year estimates” or “five-year estimates.”

The Census: What's in the new survey
========================================================

One of the best ways to begin asking questions of Census and ACS data is to actually read the survey. You can see the Census survey [here](http://www.census.gov/2010census/text/text-form.php) and the ACS one [here](https://www.census.gov/programs-surveys/acs/methodology/questionnaire-archive.html).

It can help you understand what kinds of queries you can make of the data.

The Census: Getting the data
========================================================
There are multiple ways to get the data — all with the upsides and downsides. 

In short, as the interface becomes easier, the flexibility to find custom datasets becomes harder. 

I’ll run through three options here.

Easy: Census Reporter
========================================================

The easiest site is [CensusReporter.org](http://www.censusreporter.org). 

You input a location you’re looking for, then it walks you through the available datasets. 

For example, we can find the median age by sex for Connecticut.

Easy: Census Reporter
========================================================

From there, you can create various geographic breakdowns. 

In Connecticut, if you want to divide it by town, use “county subdivisions.” 

If you want to divide it by Census tract — which are plots of land with about 4,000 people each — then you can select that.

Easy: Census Reporter
========================================================

The magic, but also the downside, is that Census Reporter tries to guess which dataset you want. 

It’ll switch between ACS five-year estimates and one-year estimates, and you don’t have to make that choice.

Once you have the dataset you want, you download the data on the top right.

Medium: American Factfinder
========================================================

[American FactFinder](http://factfinder.census.gov/faces/nav/jsf/pages/searchresults.xhtml?refresh=t) gives you a little more flexibility.

You can select your topic and your geographic constraints, and then it will push out datasets that match your query. 

It’s a lot easier to explore what’s available with FactFinder, because it categorizes the different datasets available.

Here's a [walkthrough](https://docs.google.com/presentation/d/1WrVJxQ2ytcvASqyS44EVcoezMT7DRiEl_62JHzcU3wM/edit?usp=sharing).

Hard: IPUMS
========================================================

The [Integrated Public Use Microdata Series](https://usa.ipums.org/usa/), or IPUMS, is an incredibly powerful tool that lets you extract data from 1850 to the present. 

The other tools don’t allow for this.

For example: 

Do you want to find the average household size from 1900 to the present? 

This is your tool.


Hard: IPUMS
========================================================
There are a lot of nuances to historic Census data, with various things affecting it, such as when the Census Bureau began primarily mailing the surveys versus conducting them in person. 

But if you’re using IPUMS, you might already know this. 

In other words: Since this tutorial is for beginners, I just mentioned IPUMS so you know that it exists.


Hard: IPUMS
========================================================

Have a long weekend to learn? 

Here are some good YouTube videos to walk you through using IPUMS.

* [Registering with IPUMS-USA](https://www.youtube.com/watch?v=clt3oFJS8DI)
* [Selecting variables and datasets](https://www.youtube.com/watch?v=k1URIE6u2CU)
* [Ordering data](https://www.youtube.com/watch?v=r1j9Q1jmh5k)
* [Downloading data and opening it](https://www.youtube.com/watch?v=puTMa8SUkBU)
