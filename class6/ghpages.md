---
layout: page
title: Publishing web sites using Github Pages
---

You already know how to [sync and upload](http://andrewbtran.github.io/JRN-418/github_app/) homework files to your private Github repo I set up for class. 

Once you sync it, every repo on your Github page matches a folder on your computer. Think of every repo/folder you'll potentially create in the future as a standalone project. 

We're going to create a new project, exploring Github's service for web publishing: [Github Pages](https://pages.github.com/).

**NOTE: Make sure you have verified your email first. This process won't work unless you've done so.**


#### As it stands

If you code this into **index.html** and sync it to a normal Github repo...

```
<html>
	<head>
		<title></title>
	</head>
	<body>
		
		<img src="http://cdn.playbuzz.com/cdn/0079c830-3406-4c05-a5c1-bc43e8f01479/7dd84d70-768b-492b-88f7-a6c70f2db2e9.jpg" width= "100" />
		<img src="cat.jpg" width= "100" />
		<!-- Local link you mean? -->
		<a href="http://www.google.com">Link</a>
	</body>
</html>
```

If you went to your repo and looked up the uploaded [index.html](https://github.com/trendct/abtran2/blob/master/index.html), it would give you the pure code. It wouldn't render the html as an actual web site. It'd look like this below.

<img src="../ghp1.png" width="100%"></img>

### Creating a portfolio site

There's a way to set up your Github repo so that it renders the HTML and publishes your code. 

To do this, you need to create a new repo with a specific naming convention.

Login to your Github account. Click on **+ New repository**.

<img src="../ghp2.png" width="100%"></img>

In **Repository name**, put in your Github **username**, followed by ```github.io```.

It has to match your username *exactly* or the publishing won't work.

You don't need a **Description** at the moment. Click **Create Repository**.

<img src="../ghp3.png" width="100%"></img>

Excellent, you've created a new repo on the browser. 

The page you're brought to next is to give you some options on what to do next to fill this repository.

**Options**

* **Set up in Desktop** will open your Github desktop app and start the process of downloading it to your computer
* Create a new respository on the command line
* Push an existing repository from the command line
* Import code from another repo

<img src="../ghp4.png" width="100%"></img>

Let's just stick with **Set up in Desktop** for now (although, you should eventually learn how to do so from the command line— it's what all the cool kids are doing).

After you click the **Set up in Desktop** button, you might have to give the OK for the browswer to launch the application. Go ahead and click **OK** if that happens.

Otherwise **Github Desktop** will open and ask you where you want to clone your **github.io** repo  on your computer. Click on the pulldown menu or the little triangle on the far right to find a spot. 

Click **Clone**.

<img src="../ghp5.png" width="100%"></img>

OK, cloned. Congrats.

Now I have a repo on Github that can be found at ```https://github.com/abtran2/abtran2.github.io``` and an associated folder on my computer at ```\Desktop\abtran2.github.io```

<img src="../ghp6.png" width="100%"></img>

OK, now let's create a new file with your text editor (notepad++ or Sublime).

```
<html>
	<head>
		<title>Test cat page</title>
	</head>
	<body>
		<h3>Hello, world!</h3>
		<img src="http://cdn.playbuzz.com/cdn/0079c830-3406-4c05-a5c1-bc43e8f01479/7dd84d70-768b-492b-88f7-a6c70f2db2e9.jpg" width= "100" />
		<img src="cat.jpg" width= "100" />
		<a href="http://www.google.com">Link</a>
	</body>
</html>
```

Copy and paste the code above into a new file in notepad++ or Sublime. Save it as ```cat.html``` in your ```github.io``` directory.

<img src="../ghp7.png" width="100%"></img>

Go back to the **Github Desktop** app. **cat.html** should be listed as a *change*. (You might need to click on another folder on the left and then back to the **github.io** folder in the app to refresh it)

Fill in the description and summary field with whatever you like. Then click **Commit to master**.

<img src="../ghp8.png" width="100%"></img>

Then click **Publish**

<img src="../ghp9.png" width="100%"></img>

Go to your Github page. The file now exists in 

```https://github.com/abtran2/abtran2.github.io```

<img src="../ghp12.png" width="100%"></img>

Yup. ```cat.html```

But now go to your ```github.io``` page and put ```/cat.html``` at the end. For me, it'd be ```abtran2.github.io/cat.html```.

<img src="../ghp11.png" width="100%"></img>

Nice! You have a website. 

So the file exists in two places. One as pure code on **Github.com**, the other fully rendered on **Github.io**.

Alright, now let's fix this page a little bit. The images are too small and one of the images doesn't work.

Open up the ```cat.html``` in your ```github.io``` folder on your computer with a text editor. 

Add a percentage sign (**%**) behind the 100 after each of the images.

This switches the width from being 100 pixels wide, it says it will be 100% the width of the container around it.

<img src="../ghp10.png" width="100%"></img>

Also, download this file <a href="../cat.jpg">cat.jpg</a> and put it into the ```github.io``` folder on your desktop. The HTML was looking for cat.jpg file in its root directory but it didn't exist. So we're putting it in now.

Your folder should look like this now.

<img src="../ghp13.png" width="100%"></img>

OK, commit and sync the repo from the **Github Desktop** app. 

Go back to your ```github.io/cat.html``` page.

<img src="../ghp14.png" width="100%"></img>

Yup, those are some huge cats.

Next, let's put in one of the maps we created using Google Fusion Table.

The ones with the restaurants.

Click on **Tools > Publish** and copy the ```iframe``` code in the **Paste HTML to embed in a website**.

<img src="../ghp15.png" width="100%"></img>

Create a new HTML file.

Type in the ```<html>``` and ```<body>``` tags.

Paste the copied ```iframe``` code between the ```<body>``` and ```</body>``` tags.

And change the iframe ```width``` to ```100%``` and the ```height``` to ```400```.

<img src="../ghp16.png" width="100%"></img>

Save the file as ```map.html``` in your ```github.io``` folder on your computer.

Commit and Sync it using the **Github Desktop** app.

<img src="../ghp22.png" width="100%"></img>

Go to your ```github.io``` page and put ```/map.html``` at the end.

<img src="../ghp17.png" width="100%"></img>

You have your very own hosted map!

The center of the map matches exactly where the map was centered on your Fusion Table. If you need to readjust, move the map and redo the Publish process.

<img src="../ghp17.png" width="100%"></img>

Well, now we need a landing page. 

We could create a ```index.html``` page from scratch... But let's use a Github template.

Go to your **github.io** repo and click on **Settings** on the right.

<img src="../ghp18.png" width="100%"></img>

Click on **Laungh automatic page generator** at the bottom.

<img src="../ghp19.png" width="100%"></img>

Fill out this form and Github will take the information to generate your ```index.html``` page. **Page name** and **Tagline** is pretty self-explanatory.

In **Body**, you can fill out the body of your index page using [Markdown](https://help.github.com/articles/markdown-basics/), exactly like how you made the **Readme.md** file in one of your [first](http://andrewbtran.github.io/JRN-418//2015/09/02/welcome-to-class/) homework assignments.  

Just to refresh, Markdown is a simplified, easy-to-read, version of HTML.

Why learn it?

* It's trivial [to learn](https://guides.github.com/features/mastering-markdown/). It takes minutes.
* More and more publishing platforms and tools are using it. (Reddit, Python, R, etc)
* It's much easier to write than html. 

Fill **Body** with whatever you like. Leave it for now if you want and fill it back out later.

* [Online Markdown Editor - Dillinger](http://dillinger.io/) is an excellent tool to show you what **Markdown** looks like rendered as HTMl in real time.

<img src="../ghp26.png" width="100%"></img>

Select any of the themese at the top and click **Publish**.

<img src="../ghp20.png" width="100%"></img>

Go back to your **github.io** repo and you'll notice some new folders (javascripts and stylesheets) and files (index.html and params.json).

These are just the files needed to render your new **github.io** page.

<img src="../ghp21.png" width="100%"></img>

Go ahead and visit it.

<img src="../ghp27.png" width="100%"></img>

Very interesting.

But before we do anything else, we have to do something **very important**.

We have to sync it up with the folder on our computer.

Go to the **Github Desktop** app and go to the **github.io** folder in the app and click **Sync** at the top right.

<img src="../ghp23.png" width="100%"></img>

Double check and look at the **github.io** directory on your computer. 

All the new files should be there.

<img src="../ghp24.png" width="100%"></img>

Excellent.

**Next step (if you want)** Fix up the text on your ```index.html``` page. Either through the browser on **Launch automatic page generator** or by editing ```index.html``` manually through a text editor like **Sublime** or **Notepad++**. (Proably, you'll do a combination of both)
