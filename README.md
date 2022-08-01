<!-- 
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages). 

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages). 
-->

Envision Fency container library used for different type of widgets like, Gradiant, Imagebackground or Profile detail containers. This make easy to your coding life.

## Features

This package inclue the 
Container with gradiant background.
Container with image background.
Container with profile detail.

## Getting started

Conatiner with Gradiant
en_fency_container(
                  width: 300,
                  title: "Title", 
                  subTitle: "Some detail info here...", 
                  height: 100,
                  color1: Colors.yellow, 
                  color2: Colors.red, 
                  textColor: Colors.white, 
                  type: containerType.gradient,),

Container with image backgourd
en_fency_container(
                  imageUrl: 'https://images.unsplash.com/photo-1610307766999-01f45d259959?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80',
                  width: 300,
                  type: containerType.imageBackground, 
                  title: "Title 1", 
                  subTitle: "Some detail info here...", 
                  textColor: Colors.white, 
                  height: 250,),

Profile setting with detail
en_fency_container(
                  profileImgUrl: 'https://dl.memuplay.com/new_market/img/com.vicman.newprofilepic.icon.2022-06-07-21-33-07.png',
                  userName: "MR ANDY",
                  userEmail: 'andy@gmail.com',
                  userPhoneNo: '+123456789876',
                  height: 100, 
                  width: 300,
                  type: containerType.profile,
                  borderColor: Colors.blueGrey,)


## Example

https://tinyurl.com/55tpmh6n

