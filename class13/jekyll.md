---
layout: page
title: Build a blog with Jekyll and Github Pages
---

Time to bring together our understanding of Markdown, CSS, HTML, and Github to create your very own website.

Here's a few links if you need to fill in some gaps

* [Github Redux]({{ site.url }}/class13/github_redux.html)
* [Using the GitHub Desktop App](http://andrewbtran.github.io/JRN-418/github_app/)
* [Hosting your website on Github Pages](http://andrewbtran.github.io/JRN-418/class6/ghpages/)

Jekyll takes content written in **Markdown**, passes it through a pre-assigned templates, and spits out a complete **static** website.

These static HTML files can then be pushed to GitHub Pages, which serves the website directly from your GitHub repository without having to deal with hosting.

### There are a few ways to start out using Jekyll

* Fork a starting point, make changes, upload it to your repo.
* Clone a starting point to a local machine, install Jekyll locally via the command line, make updates to the website, build it locally, then upload it to your repo.
* Install Jekyll locally via the command line, create a new default website using `jekyll new`, build it locally with `jekyll build`, and then upload it.
  * Here's a good guide on installing via the command line -[[Jekyll]](http://jekyllrb.com/docs/quickstart/)

This is what we're going to accomplish with this walkthrough:

1. Create a Jekyll-powered website
2. Host it for free on GitHub pages.
3. Customize it so that it has all your social media usernames.
3. Publish a story as a blog post with one of your previously created interactives.

### Fork a Jekyll template

We're going to start by forking a template. 

* **Forking** means copying or cloning a repository which allows you to freely experiment with changes without affecting the original project.
  * Usually, people fork repos to propose changes to the original project or use that project as a starting off point.

There are some plenty of great templates to start out with.

Pick one you like from any of these links:

* [Jekyll Themes](http://jekyllthemes.org/)
* [Jekyll Tips](http://jekyll.tips/templates/)
* [Jekyll Templates](http://jekyllthemes.io/)

I'm going to use [this template](http://jekyllthemes.org/themes/strata/) created by Cloud Cannon, but feel free to use any of them listed above.

<a href="https://github.com/CloudCannon/Strata-Jekyll-Theme"><img src="../jek1.png" width="100%"></img></a>

Click on the **Fork** button at the top right.

Going through this process of forking a Jekyll template skips the process of setting up a local development environment in which you install dependencies through your console and have to know Jekyll's build process.

However, starting a Jekyll website through the local command line can be frustrating and time-consuming because it requires installing and configuring dependencies like Ruby and RubyGems. 

<img src="../jek2.png" width="100%"></img>

I want to rename this repo as a **github.io** address but *first* I need to clean out my old repo that has the same name.

**Note:** If you don't need to delete your old repo, scroll down 4 images.

<img src="../jek3.png" width="100%"></img>

Navigate to your *username.github.io* repo and click on the **Settings** button on the far right.

<img src="../jek4.png" width="80%"></img>

Scroll to the bottom of the page and find the red **Danger Zone**. 

Click on the **Delete this repository** button.

<img src="../jek5.png" width="80%"></img>

GitHub is going to make sure you definitely want to do this so you need to type in your **username.github.io** address into it.

Then click **I understand the consequences, delete this repository**.

Now, go back to your root GitHub directory. (Should be *http://github.com/your_username)

<img src="../jek6.png" width="80%"></img>

Click back to your repo and click on the Template repo you forked earlier.

Again, click on **Settings** and this time change the forked repo name to **your_username.github.io**.

<img src="../jek7.png" width="80%"></img>

And then click **Rename**.

Alright, the repo is now renamed.

Every GitHub user gets a free "user" website. 

(There's a difference between **user** websites and **project** websites on GitHub. [Read more](https://help.github.com/articles/user-organization-and-project-pages/).)

The code exists at **https://github.com/username/username.github.io** and the hosted code will appear at **http://username.github.io**

<img src="../jek8.png" width="100%"></img>

Go visit your **http://username.github.io** site.

This is what the default code looks like rendered. 

Now let's customize it.

### Customizing your Jekyll GitHub Page

There are several ways to edit the files in your **http://username.github.io** site.

* Edit files on your **https://github.com/username/username.github.io** respository directly in the browser at GitHub.com (as shown below).

<img src="../jek9.png" width="100%"></img>

* A third-party GitHub content editor, such as [Prose](http://prose.io/) by Development Seed. It’s optimized for Jekyll, which makes it easy to edit Markdown, write drafts and upload images.

<img src="../jek10.png" width="100%"></img>

* Clone your repository with the GitHub Desktop App and make updates locally, and then push them to your GitHub repository (Or do it using your [console](https://www.atlassian.com/git/tutorials/setting-up-a-repository/)).

<img src="../jek11.png" width="100%"></img>

Edit the website's name, description, avatar icon, and other options by changing the `_config.yml` file.

Let's take a look at the rest of the files.

<img src="../jek12.png" width="50%"></img>

This is the folder structure of the Template you downloaded.

The `default.html` is the template that GitHub will use to build `index.html`

Change the text in `default.html` so it says your name and whatever intro you want.

The `post.html` is the template that Github us10s to build the blog posts written in markdown in the `_posts` folder.

Replace `avatar.jpg` with your photo in the `images` folder.

Commit the changes and Sync it to your Github Page.

Wait a few moments and refresh to see the changes.

<img src="../jek13.png" width="100%"></img>

### Publish a blog post

Alright, the page is customized (briefly) with your information and it's live.

Next, get a post published.

Open up any of the markdown files in the `_posts` folder (it will end with either **.md** or **.markdown**)

<img src="../jek14.png" width="100%"></img>

This is the format that needs to be followed to turn the this text into a blog post.

```
---
layout: post
---
```
This text at the top of the markdown file tells Jekyll to wrap the content with the code in `post.html` in the `_layouts` folder.

Take a look at `post.html` in your text editor.

<img src="../jek15.png" width="100%"></img>

Look closely at the HTML.

This gives you insight on the possible options you can add to the top of the page:

* date
* author
* meta
* excerpt

Those variables at the top of the blog post are called front matter. In this case, they specify which layout to use and the title of the blog post. Additional front-matter variables exist, <a href="http://jekyllrb.com/docs/frontmatter/">such as permalink, tags and category</a>.

Let's create a new file using markdown (here's a [refresher](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet) and some Bob Ross quotes from [Bob Ross Lipsum](http://www.bobrosslipsum.com/).

We'll also keep the image code in that is used in the template but we'll use a new photo.

```
---
layout: post
title: Data visualization
author: Your name
exerpt: Just an example of a data vizualization.
---
<img src="http://theslanted.com/wp-content/uploads/2015/10/Bob-Ross-news-2015.jpg" class="fit image">
You're the greatest thing that has ever been or ever will be. You're special. You're so very special. Just make little strokes like that. You can create the world you want to see and be a part of. You have that power. And I know you're saying, 'Oh Bob, you've done it this time.' And you may be right.

### Happy trees!

The very fact that you're aware of suffering is enough reason to be overjoyed that you're alive and can experience it. There's not a thing in the world wrong with washing your brush. That's what makes life fun. That you can make these decisions. That you can create the world that you want. Let that brush dance around there and play.

```

Copy and paste the code into a new file.

<img src="../jek16.png" width="50%"></img>

Save it and make sure the file name includes the date and title of the post.

Jekyll requires posts be named `year-month-day-title.md`.

Commit the changes and Sync it to your Github Page.

Wait a few moments and refresh to see the changes.

<img src="../jek17.png" width="100%"></img>

### Excellent!

Ok, but what if you want to make a separate new page? 

Like, for your resume?

Easy, create a new file. Layout is `Post`.

(Also, upload your resume to [Scribd.com](http://www.scribd.com) and generate an embed code)

<img src="../jek18.png" width="100%"></img>

Save it as `resume.md` in your root directory (or any folder you want, as long you can find it later)

<img src="../jek19.png" width="100%"></img>

Jekyll will generate a folder on your GitHub Page site based on the name of the markdown in the root directory you created. So everything you put in `resume.md` can be found at **username.github.io/resume**.

Now, we just need to add a link to it in the sidebar.

Open up `default.html` in the `_layouts` folder.

Add this line under your name and description.

`<p><a href="/resume">Resume</a></p>`

<img src="../jek20.png" width="100%"></img>

Commit the changes and Sync it to your Github Page.

Wait a few moments and refresh to see the changes.

<img src="../jek20.png" width="100%"></img>

Now you've got a permanent link in the sidebar to your resume page.

### Next steps (if you want)

You can set up a custom URL to point to your **username.github.io** page.

It's a simple process.

* Go to the root of your blog’s repository, and edit the CNAME file (or create one if there isn't one) to include your domain name (for example, www.yourdomainname.com).
* Go to your domain name registrar, and add a CNAME DNS record pointing your domain to GitHub Pages:
 * type: CNAME
 * host: www.yourdomane.com
 * answer: username.github.io
 * TTL: 300
* Refresh your DNS

[More information](https://help.github.com/articles/setting-up-a-custom-domain-with-github-pages/.

#### Have a Wordpress?

Follow [these instructions](https://github.com/benbalter/wordpress-to-jekyll-exporter) on how to export your Wordpress site over to Jekyll and GitHub.


