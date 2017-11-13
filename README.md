# Welcome to the Battle Gaming eBook Wiki

David W. Graham, Author

This project is licensed under the Open Game License v. 1.0a (OGL)

![build](https://codeship.com/projects/96c99a00-cfe6-0134-1e09-22b901f6ad6b/status?branch=master "build")

In 2017, still having not published my second book on battle gaming, but having a large stash of almost finished content, I decided to just open source all the new material and invite the battle gaming community to contribute. On this wiki you will find information about the various eBook projects being worked on as well as how you can contribute to the publications.

First off I want to say that just because this material is open sourced does not mean that I will not sell the same material through various sales channels. My goal is not to get rich off battle gaming. Instead, my goal is to expose as many people as possible to the hobby though as many channels as possible. That means I expect people to find this material where they are already shopping. So don't be surprised if the same book that you downloaded and compiled for free from this source is also available in pre-compiled form at the Apple, Android, or Amazon store. You might say, why buy what you can build for free? I say, it is about exposure, and if people find it in those market places, great! I have found that consumers assume that if they have to pay for it, then it must be of value. That said, the pricing models for the various eBook sales channels are set up to maximize profit for the app store. If you price an eBook to low, and the app store can't make money, your eBook will actually not get ranked as well. Given all these considerations, the price for a pre-compiled copy of these books may very depending on the distributor.

## Using the Open Source

If you want to compile your own copy of any of these eBooks feel free to do so. Instructions on how it is done can be found further down on this page. 

**What you can do with your eBook:**
* Compile it from source.
* Share the compiled copy with friends.
* Create a derived content (see below)
* Print hard copies and sell them locally at a profit to cover your time and publication expense.

**What you cannot do with your eBook:**
* Directly compete for profits through the sales of any eBooks found in this repository.
* Alter the content of the eBook and distribute it under the same title and copyright.
* Use any sections that are marked as Product Identity under the Open Game License v. 1.0a

##Downloading the eBook Sources

Follow instructions provided by GitHub: https://help.github.com/articles/cloning-a-repository

##Compiling Your Own Copy of the eBooks

The eBooks are built in EPUB format. They cannot be directly packaged as they have shared content files. In order to get the share content properly distributed and packaged you must run one of the build scripts.

### On Windows OS
I have only tested this on Windows 10, so I am not sure if my scripts will work correctly on other versions.  Let me know if you have any problems.
* Using Windows Explorer, navigate in to the battle-gaming directory.  
* Double click on the build.ps1 to launch Windows PowerShell and run the build PowerShell script to compile the eBooks.

The resulting eBooks will be found in a new directory named "publish".

### On Mac OS or Linux
I have the build running on Linux but have never tested it on Mac OS (but I think it should work).
* Launch a shell terminal
* Use cd to change the directory of the shell terminal to the battle-gaming directory you downloaded.
* Run the build.sh script

# Contributing to the eBooks
Everyone is welcome to submit suggested changes to any of the eBooks found in this repository. All kinds of suggested content is welcome from simple typo fixing to entire new eBook sections.

