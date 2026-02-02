/*
    Project 01
    
    Requirements (for 15 base points)
    - Create an interactive fiction story with at least 8 knots 
    - Create at least one major choice that the player can make
    - Reflect that choice back to the player
    - Include at least one loop
    
    To get a full 20 points, expand upon the game in the following ways
    [+2] Include more than eight passages
    [+1] Allow the player to pick up items and change the state of the game if certain items are in the inventory. Acknowledge if a player does or does not have a certain item
    [+1] Give the player statistics, and allow them to upgrade once or twice. Gate certain options based on statistics (high or low. Maybe a weak person can only do things a strong person can't, and vice versa)
    [+1] Keep track of visited passages and only display the description when visiting for the first time (or requested)
    
    Make sure to list the items you changed for points in the Readme.md. I cannot guess your intentions!

*/
->Arena_hall1

== Arena_hall1 ==
You find yourself tossed into the Hall of the Arena after being caught stealing bread from the market. All you need to do get out is to survive your one colossium match. Though with the poor conditions of your weapons you doubt you would survive. You look around to see if there is anything you can find before being sent off to your fight. -> Arena_hall2

== Arena_hall2 ==
+ Left Wing
{ not Armory: You see a armory with many weapons and you also see a man working on his weapons.| Armory}
->Armory

+Right wing
->Rwing


+North Wing
->Nwing


+South Wing
->Swing

+ Colossium
->colossium

== colossium ==
*{not newsword} Enter
Due to the poor items you have you end up dying in combat
->END
*{newsword} Enter
Due to getting a better sword you end up winning you fight and also your freedom.
->END

== Armory ==
{not hank_name :You are at the armory and see the man sitting down looking at one of his swords.|You see hank sitting}
+ [Speak to him]
->hank
+ [Return to main hall]
-> Arena_hall2

== hank ==
{not hank_name: You approch the man. | You approch Hank.}
+ [Ask his name]
-> hank_name
+ [Ask if you could get one of his swords]
->sword_get
+Leave
-> Arena_hall2

== hank_name ==
"Name's Hank would ask yours but most people don't survive their fight so I won't ask yours." ->hank

== sword_get ==
+{ not sharpener} Get me a something to sharpen my sword and I can give you my old one not the best but better than that hunk of junk. Return to me whenever you get it.
->hank
*{ sharpener} Give it to him
-> newsword
+ [Nevermind]
->hank
== newsword ==
Thanks here's a old sword not the best but certaintly way better than that piece of junk you have.
* [Take it]
->hank

== Rwing ==
 You see a well
 + [Drink from it]
 ->Rwing
 *{bucket} [Fill bucket]
 ->getwater
 + [Leave]
 -> Arena_hall2
 
 == getwater ==
 You fill the bucket with water
 *Walk away
 ->Rwing
 
 == Nwing ==
{ not sharpener:You see a man in poor condition.| You see a the man drinking water.}

+ [Walk up towards him]
->waterman

+[Leave]
->Arena_hall2

== waterman ==
{not sharpener:Please give me water | Thank you.}
+Walk away
-> Nwing
*{getwater} Give him the bucket
->sharpener

== sharpener ==
Thank you, take this
* Grab it
You now have a sharpener
->Nwing


== Swing ==
You walk and see a room with random tools
+ [Leave]
->Arena_hall2

*Search around
->bucket

== bucket ==
You search around but don't find much but a bucket.
* Take it
You might need it.
->Arena_hall2



