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

Github
========================================================
author: Andrew Ba Tran
date: November 18, 2015

Why?
========================================================

More newspapers are making the code behind their data visualization projects open-source by putting them on Github.

<div class="wide">
<a href="https://github.com/showcases/open-journalism"><img src="gh1.png" style="width:60%"></img></a>
</div>

Why others use Github
========================================================

* **Version control** 
 * Everything on GitHub is stored in Git, the best version control system around. 
 * Version control allows you to experiment and make mistakes in code without messing up your final product.
* **Keep your code or data in one place**
 * Whether you work on multiple computers or just want to get some old projects off your computer, GitHub is the perfect place to store your projects online.
* **Collaboration**
 * Once your code is on GitHub, you can invite others to work on your code with you. 
 * Send them a link to help you debug a problem.

Why you will use Github in this class
========================================================

* To understand the future of journalism workflow 
 * Even if you won't be coding
* See how others put together data visualization projects

* **To publish a blog or portfolio website**

A Github repo
========================================================

<div class="wide">
<img src="gh2.png" style="width:100%"></img>
</div>

Github terms
========================================================

* **Git**
 * The version control tool that GitHub is built on top of.

* **GitHub**
 * The name of the company and software. 
 * Software and websites to help you interact with Git repositories in a nice way.

* **GitHub.com**
 * The website you log into to view repositories online.

* **GitHub Desktop**
 * An application that you can install on your computer to help you synchronize local code with GitHub.com.

Github Desktop
========================================================

<div class="wide">
<img src="gh3.png" style="width:100%"></img>
</div>

Github Desktop
========================================================

GitHub Desktop is the easiest way to get code on GitHub.com. 

You won’t need to learn any command-line instructions, SSH keys, or complicated Git terminology. 

All you’ll need is your Mac or Windows computer and a GitHub.com account.

Setting up Github Desktop
========================================================
The easiest way to get your project into GitHub Desktop is to drag the folder which contains your project files onto the main application screen.

<div class="wide">
<img src="mac-dragndrop.jpg" style="width:100%"></img>
</div>


Setting up Github Desktop
========================================================

If you are dragging in an existing Git repository, you can skip ahead and push your code to GitHub.com.

If the folder isn’t a Git repository yet, GitHub Desktop will prompt you to turn it into a repository. 

Turning your project into a Git repository won’t delete or ruin the files in your folder—it will simply create some hidden files that allow Git to do its magic.

<div class="wide">
<img src="mac-gitinit.jpg" style="width:100%"></img>
</div>

Your first commit
========================================================
All Git repositories are based on commits—snapshots of your code at a point in time. You need to make at least one commit before you can push your code up to GitHub.com.

<div class="wide">
<img src="mac-commit.jpg" style="width:100%"></img>
</div>

Your first commit
========================================================

Navigate to the **Changes** tab and click **Commit** to create your first commit. 

You’ll need to create a new commit every time you change files. 

Creating a commit is like saving a file—you are telling Git that you’d like to remember this point in history.

Make as many commits as you like locally. 

No one but you can see those commits until you push them to GitHub.com.

Push your code to GitHub.com
========================================================
<div class="wide">
<img src="mac-push.jpg" style="width:100%"></img>
</div>

Push your code to GitHub.com
========================================================
Click the “Publish” button in the upper-right corner and GitHub Desktop will ask you what kind of repository to create:

* **Public repository** — Anyone can see a public repository, but you choose who can commit (make changes) to it. You can create as many public repositories as you want on GitHub.com for free.

* **Private repository** — By default, only you can see a private repository. You choose who can see and commit to this repository by adding collaborators. Private repositories require a paid subscription on GitHub.com.

Published on Github
========================================================
Now that you’ve published the repository, you have it in two places:

* **Local repository on your computer** — You can work on this repository without an Internet connection using GitHub Desktop. This is where you edit files and make changes to your project.

* **Remote repository on GitHub.com** — You can send people links to your repository on GitHub.com so they can see your code and use all of GitHub’s other features (like Issue management and Pull Requests).

Published on Github
========================================================

Each time you make changes to your local repository, you’ll need to sync your changes (by clicking the button in the upper-right corner of GitHub Desktop) to make sure they show up online.

<div class="wide">
<img src="gh5.png" style="width:90%"></img>
</div>

Getting code from GitHub.com
========================================================

If you want to get some code from GitHub.com onto your computer or synchronize changes between multiple computers, you’ll need to either pull changes or clone a repository:

* **Pull changes** — Click the “Sync” button in the upper-right corner of GitHub Desktop to bring code from an online repository (for example, changes that your co-worker pushed up) onto your computer. 
 * Note: This will also push changes you haven’t pushed yet.

* **Clone a repository** — Click the “Clone in Desktop” button on GitHub.com to create a new copy of a repository on your computer.

Blogging with Jekyll and GitHub Pages
========================================================

## Jekyll

It's a website generator.
* Designed for building minimal, **static** blogs to be hosted on GitHub pages.

Static versus Dynamic websites
========================================================
### Static 

* Each page is a separate HTML file
* Even if two pages contain a chunk of identical content (like a footer or header), they both contain two versions.
* So if you update the footer, you must update each one on each page.
* This is how websites were built in the early years of the internet.

Static versus Dynamic websites
========================================================
### Dynamic

* Uses server technology (like PHP) to dynamically build a website when a user visits the page.
 * A user goes to a web address and the server finds a bunch of different pieces of information that it writes into a single cohesive website.
* Each part of a web page is separate.
* Store the content in a databse. 
 * Easier to search, categorize, back up.
* A person can update the content without knowing any HTML.


Jekyll
========================================================

Jekyll takes content written in **Markdown**, passes it through templates you've set up, and spits out a complete **static** website.

Meanwhile, GitHub Pages serves the website directly from your GitHub repository so you don't have to deal with hosting.

Markdown refresher
========================================================

Markdown is a super simple way to add formatting like headers, bold, bulleted lists, and so on to plain text. 

It was originally designed to be an easy alternative to HTML, and allows people to create web pages with no HTML experience—but it's also a great way to organize notes, to-do lists, and other things. 

A simple way for non-programming types to write in an easy-to-read format that could be converted directly into HTML.

Markdown example
========================================================
<div class="wide">
<img src="gh6.png" style="width:100%"></img>
</div>

Some websites created using Jekyll
========================================================
* [CSS Wizardry](http://csswizardry.com/about/#colophon)
* [Jekyll • Simple, blog-aware, static sites](http://jekyllrb.com/)
* [HealthCare.gov](https://www.healthcare.gov/)

So why static?
========================================================
* **Simplicity** - Jekyll strips everything down to the bare minimum, eliminating a lot of complexity:
 * **No database** - Unlike WordPress and other content management systems (CMS), Jekyll doesn’t have a database. All posts and pages are converted to static HTML prior to publication. This is great for loading speed because no database calls are made when a page is loaded.
 * **No CMS** - Simply write all of your content in Markdown, and Jekyll will run it through templates to generate your static website. GitHub can serve as a CMS if needed because you can edit content on it.
 * **Fast** - Jekyll is fast because, being stripped down and without a database, you’re just serving up static pages. My base theme, Jekyll Now, makes only three HTTP requests — including the profile picture and social icons!
 * **Minimal** - Your Jekyll website will include absolutely no functionality or features that you aren’t using.

So why static?
========================================================

* **Design control** - Spend less time wrestling with complex templates written by other people, and more time creating your own theme or customizing an uncomplicated base theme.
* **Security** - The vast majority of vulnerabilities that affect platforms like WordPress don’t exist because Jekyll has no CMS, database or PHP. So, you don’t have to spend as much time installing security updates.
* **Convenient hosting** - Cjekonvenient if you already use GitHub, that is. GitHub Pages will build and host your Jekyll website at no charge, while simultaneously handling version control.

Ready to begin? 
========================================================

Let's get started:
http://andrewbtran.github.io/JRN-418/class13/jekyll/
