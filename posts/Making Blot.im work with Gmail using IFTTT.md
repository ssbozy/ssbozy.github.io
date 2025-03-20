---
title: Making Blot.im work with Gmail using IFTTT
date: 2018-03-31
---

# Making Blot.im work with Gmail using IFTTT

Here is what I am trying to accomplish. Ability to post to Blot.im blog by send an email to my gmail. The title of the blog will be the subject of the email and the content of the blog will be the content of my email. Since there is no direct integration between the two, I am planning to leverage the power of IFTTT. 

## Step 1: Setup Gmail

* I created a label in my gmail called "myblog". 
* In Filters and Blocked Address, I created an new filter which filters emails  in the to section with "your_email_id_here+blog@gmail.com" and in the next page add the label "myblog"
* I tested it out my sending an email to "your_email_id_here+blog@gmail.com" and it showed up with a lable "myblog"

## Step 2: IFTTT
* I have an IFTTT account where I conneted my Gmail and Dropbox account. I created a recipe which picks an email with myblog as label and creates a text file with the subject of email as title and content of email as content of blog. 

## Step 3: Test
I sent a test email to my gmail account "your_email_id_here+blog@gmail.com" with title in subject and content and email. Within a few minutes a text file with blog title is created in my Blot folder and my post is online. 

## Caveats and corner cases
* This works only with text blogs. Images are not supported. 

