# Questlists
Questlists is yet another list application. However, its roots are not
typical of most of its ilk. I really needed an application to handle
lists for the following scenarios.

### Gaming
I love playing RPGs and love to explore and map out the universes
therein, and would like to keep some of that information around
for others. There are many sites that have information on these
games, but none have the information *and* allow you to keep track
of, say,  whether you have the item and where you have it stashed
in the game. For example, for Skyrim, I need to have a list that
keeps track of the following:
* items and where I have them stored in the game
* locations and whether I have discovered them
* ingredients I have (and how many)
* potion, equipment, etc. recipes
* potions I can make (based on ingredients I have)
* equipment I can make (based on items I have)

### Chores

### Shopping

# Previous Version
The original Questlists was going to be an angular-sinatra app, but I decided I needed a completely new toolkit, one that I had never before worked with. So here is my second attempt at Questlists, usign Polymer elements and meteor.It is based on the [meteor-polymer-music](https://github.com/atoy40/meteor-polymer-music) project.

# Features

I have many features planned for this project. Here is a list of some of them.

* Lists for any occasion
* Multi-state list items (per-list specification)
  * Can specify whether to show or hide the items depending on state
* Autocomplete most fields
* Drag N Drop editor for lists, using state-based areas
* Touch-compliance for all widgets
* Item prerequisites and postrequisite
  * Complex Rule DSL
* Arbitrary fields for list items, type is dependent on widget existence
  * google maps
  * images
  *
* Can show only items that can be activated (prereq.s met)
* User Management:
  * Admins
    * disable or delete users
    * delete public lists
  * Registered users
    * create lists
    * Update existing lists
    * Receive and manage system notices (via email, system notification)
    * Save progress/data to cloud
  * Unregistered users
    * Can create local lists (offline usage)
    * Item state is saved per user or browser
