# Quest Lists

QuestLists is a crowd-sourcing application that organizes lists of any sort. The crowd builds the lists, you say what you want to use from that list, and then use it as a normal checklist. At its heart, this is an _n_-state checklist application.

The intention is to use the crowd to build lists for games, inventories, shopping, music, videos, and more! Once the lists are built and created, you can add/remove your items from them. It uses the browser's caching for data, so you don't even have to login to use it (only for the same devise)!

## Demo

This is the public code for http://skamansam.github.io/questlists. The code is redeployed when I finish any feature or want to test something, so it may change a lot and may break down  often. I will do my best not to disturb any data that is already there, but be warned, your data may be a casualty of development!

Once everything is stable, it will become a REAL application, and all the notices about the demo will be removed.

## Roadmap

Questlists is originally intended for game quests, so will have the following ideas implemented first:

  1. Your progress in quests.
  2. Items collected
  3. Overall progress in the game
  4. Locations reached
  5. Information about any other object in the game

I am sure you can generalize these ideas to fit any circumstance, so i will eventually create a few demos of lists for everyday use, such as a shopping list and various TODO lists.


# Contributing

To keep things simple, I am only using GitHub and associated tools that anyone can use. I am even deploying this app to GitHub pages. For ticket management, I am using ZenHub, so you can use it too, if you want. All tickets will be managed through ZenHub, but you can create Issues in GitHub if you want, as well.

## GitHub

If you would like to help with development of this project, follow these instructions:
```text
TL;DR - Fork repo and create a new branch for each issue, then create a new pull request. I won't be too harsh on the rest.
```

  1. fork this repo
  2. See if there is an issue currently in GitHub that addresses your feature, bugfix, etc. If not, create one!
  3. create a new branch in your forked repo, preferably including the ticket number in the branch name, like `4-my-new-feature` or `my-new-feature_issue-4` or `my_new_feature-issue_4`. You get the idea.
  4. hack away!
  5. When committing your changes, please make sure you include the ticket number in the description, surrounded by brackets. Something like `make sure we use the correct ES2016 syntax for foo-bar elements. [46]`. The commit message should read like a command, not a summary of what you did. (This is a hard one to follow, as you can tell from my commit messages, but it really does help new-comers get an understanding of what's going on.)
  6. Make sure ALL tests run successfully by running `gulp test`. This is to ensure you do not bug the application.
  7. Create a new pull request against the develop branch once you are happy with your code
  8. Wait for me to merge the changes I am very busy with my 9-5 and my new family, so this may take some time.
![](https://cloud.githubusercontent.com/assets/110953/7877439/6a69d03e-0590-11e5-9fac-c614246606de.png)

## Polymer Starter Kit

This project was initialized with the Polymer Starter Kit. For more information about how to build and setup this application, see the [Polymer Starter Kit's README](https://github.com/PolymerElements/polymer-starter-kit/README.md)

## App Setup

Just run the `bin/setup` script from the repo's directory.

## Running Questlists for Development

Just run the `bin/start` script from the repo's directory.

## Deploying Questlists

You can deploy to your own repo's github page by running the `bin/deploy` script from the repo's directory.
