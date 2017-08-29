# Quest Lists

QuestLists is a crowd-sourcing application that organizes lists of any sort. The crowd builds the lists, you say what you want to use from that list, and then use it as a normal checklist. At its heart, this is an _n_-state checklist application.

The intention is to use the crowd to build lists for games, inventories, shopping, music, videos, and more! Once the lists are built and created, you can add/remove your items from them. It uses the browser's caching for data, so you don't even have to login to use it (only for the same devise/browser)!

## Demo

This is the public code for https://questlists.firebaseapp.com. The code is redeployed when I finish any feature or want to test something, so it may change a lot and may break down often. I will do my best not to disturb any data that is already there, but be warned, your data may be a casualty of development!

Once everything is stable, it will become a REAL application, and all the notices about the demo will be removed.

## Roadmap

Questlists is originally intended for game quests, so will have the following ideas implemented first:
  
### Minimum Viable Product (version 1.0.0)
  1. tiled interface for viewing all lists
  1. user management, via firebase
  1. storage/db via firebase
  1. users can create lists
  1. users can add items to lists
  1. users can only remove items if they created the lists
  1. users can rate lists
  1. users cannot delete lists (only admin/firebase owners)0
  1. list items can have multiple states
  1. list items can have different types, but only text will be implemented
  1. list items can be pointers to other lists
  1. rudimentary cycle detection for lists (using firebase cloud functions)
  1. icons for list items
  1. cover images for lists (uploading via firebase)

### Planned Features
  After the MVP has been met, we will switch to a rolling release,
  using the [semver standard](https://semver.org). Here are a few planned features that will not be in the MVP.

  1. Your progress in quests. (completion percentage)
  2. Items collected - new Inventory Type for items
  3. Overall progress in the game (all sublists) - include item setting for inclusion in this count
  4. Locations reached - filter list by item type
  5. Integration with external service (links to wikia)
  6. stats page for each item: dashboard for item types
  7. custom item types

I am sure you can generalize these ideas to fit any circumstance, so i will eventually create a few demos of lists for everyday use, such as a shopping list and various TODO lists.

# Contributing

To keep things simple, I am only using GitHub and associated tools that anyone can use. I am even deploying this app to GitHub pages. For ticket management, I am using ZenHub, so you can use it too, if you want. All tickets will be managed through ZenHub, but you can create Issues in GitHub if you want, as well.


## Polymer Starter Kit

This project was initialized with the Polymer Starter Kit. For more information about how to build and setup this application, see the [Polymer Starter Kit's README](https://github.com/PolymerElements/polymer-starter-kit/README.md)


