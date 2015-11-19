---
layout: post
title: "Meteor Day HK"
date: 2014-11-13 19:37:44 +0800
comments: true
categories: meteor
---

last week, I attended a very impressive Meteor js meetup in Hong Kong.

## Present your idea reactively!

One of the amazing presentation held by Chris Hitchcott (@hitchcott) is really fascinating! While at the very begining of the presentation, he ask everyone in the venue to subscribe to his presentation App using any device! ( Yep, It's a web app, and build in Meteor! ). And once your device is subscribed ( For me, it's my laptop ), you will have a live presentation in your device's screen too! When chris move one slide forward, your subscribed device will also move a slide forward! This is really a reactive and creative present way for you! And if the slide in Chirs's side is asking a question, everyone can answer this questions in their subscribed device, and within limit time set by Chris. If your answer is correct, you will win a socre, And we can have a summary up after presentation! ( Well, I am not going to tell anyone I am one of the winners in Meteor Day HK! ). 

For more information about the technical stuff for Chris presentation, please refer to [TapEvent](http://tapevents.com/)



## What's Meteor actually?
Meteor is a full stack framework which is built in pure Javascript! while the key different among other full stack framework like `Ruby on Rails` is: Meteor is super easy to build a real-time web application! 

Typical way to build a real-time web application, for example, to insert a new row in a table presented in the website should include the following flow:

1. user input data, then click a button called "create"
2. client side trigger a javascript code, then call to server side
3. server side accept this call, and connect to Database, do some query, return the result
4. client side receive the result from server side, and manuplate DOM, to either insert/replace some DOM's html code.

But for Meteor way, it is super easy:

1. user input data, then click a button called "create"
2. client side trigger a javascript code, and insert record in Database( Yes, client side have Database too!)

There is a lot of `Magics` happened in step 2 for a typical Meteor Application:

1. Interchange data between client side's database ( called MiniMonogo), and server side's database ( Right now, It's Mongo )
2. Permision control ( to see if client side have permission to insert database to server side or not)
3. Refresh the view and show the updated result in client side ( well, it is implemented by a view rendering library called "Blaze", and this Blaze library will monitor a pre-define data source. If the data source change, it will update related view automatically )

And the most amazing thing should be: you don't need to write javascript to handle the view DOM update anymore! This is epic and I can pretty sure that this feature ( right now, It's call `reactively` from Meteor community ) will be rock and roll in the next few years for modern web framework!
 
For anyone who is interesting in Meteor, and want to dig more about it, I personally recommended a book called [`Discover Meteor`](https://www.discovermeteor.com/), and now it's free for first 8 chapters! This should be good enough for begining! Well, I am still a beginner in Meteor :P

## More from the Meetup
There's one interesting presentation ( by Jason Li ) to talk about build a workable prototype using Meteor withing 1 month ( more or less ). One of the key things to build a start-up prototype so fast is to eliminate down the time to implement the key features. While meteor is really a good try for it, and he also give us some tips. One of the key thing is to out-source as many as features to external service! For example, he doesn't want to handle the File upload feature in Meteor, so he integrated the system with [Filepicker](https://www.filepicker.io/). And try to do some lo-fi Admin first, since it's not a customer-oriented interface, the most important thing should be: Roll-out your idea as fast as your can!

There is a lot Saas services for us to eliminate this time to build prototype in the early stage of start-up:

 1. Form ( I can not find a proper example, i will update this later )
 2. Customer chating using [Intercom](https://www.intercom.io/)
 3. Payment using [Stripe](https://stripe.com/) or [Paypal](https://www.paypal.com/)
 4. Comments using [Disqus](https://disqus.com/)

This remind me a [article](http://www.developmentseed.org/blog/2012/07/27/build-cms-free-websites/) from Dave Cole to state that the way of how we develpment web application is changing from traditional client/server way to a brand new mechanism: build a static web site using HTML, and using as many as external service to handle the form input, file upload, payment service.

Well, it's not going to happened in next few year, but it's seems really a mind-browing facts! The world is changing!
