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

## Polymer Starter Kit

This project was initialized with the Polymer Starter Kit. For more information about how to build and setup this application, see the [Polymer Starter Kit's README](https://github.com/PolymerElements/polymer-starter-kit/README.md)

## App Setup

Just run the `./bin/setup` script from the repo's directory.

## Running Questlists for Development

## Contributing

If you wish to help out with Questlists, we use [Zenhub](https://www.zenhub.com) and [Github](https://github.com) to track issues. You can submit issues in Github withought signing up for Zenhub, but they will be managed with Zenhub. 

## Requirements

The `bin/setup` script will install everything you may need for developing Questlists. If you really want to do it manually, the following npm modules should be installed globally, so their binaries are more easily accessible from the command line.
  * firebase-tools
  * polymer-cli
  * firebase-server (local server used by `bin/start db`)

### Prepping your application for development
You need to make sure the `firebase-app` element in the `questlists-app` element points to the correct firebase domain. If you have set one up for development, make sure it points to the right domain. If you want to run your own local server, you can install the npm module firebase-server with `npm install -g firebase-server`.

Just run `./bin/start` from the repo's directory to start the 
Just run `./bin/start db` from the repo's directory.

## Deploying Questlists

You can deploy to your own repo's github page by running the `bin/deploy` script from the repo's directory. You need to have firebase-tools setup for deployment to your server.

## Code Style Guide
You can view the current element docs after starting the polymer server, by going to `<local-server-address>/dev-docs.html` on the server. This project should really document everything so these documents contain the full-fledged API for using our elements. We should strive to do a better job than the Polymer team!

Having a style guide really helps code readability and lessens cognitive overhead when developing software. I will use the style guidelines set forth in the [Polymer Guide](https://www.polymer-project.org/2.0/docs/devguide/feature-overview)'s section on [Documenting your elements](https://www.polymer-project.org/2.0/docs/tools/documentation), with the following addendums:

1. Method Names
  1. Public methods are camel-case
  2. private methods should be snake-case and start with an underscore
  3. Special Cases: Public methods that may not be part of a public API should be snake-case. This includes alias or router methods. You should say why in the comments.
2. HTML Element Attributes
  If your element decalaration is very long, and uses a lot of attributes, do the following:
  1. Put the id attribute first, on the same line as the element declaration.
  2. Put any boolean attributes on a line of their own
  3. Put the rest of the attributes each on a line of their own.
  4. the closing bracket aligns with the opening bracket, and the closing tag aligns with the opening tag.

  Example:
  ```HTML
    <my-element id="my_elem"
      isCool hasFoo isBar reallyNeat
      message="this is a text thing"
      config="{some: {js: {'obj'}}}"
    >
      <p>
        Here is a test element!
      </p>
    </my-element>
  ```
## Creating working demos
Each element should should contain a working demo, outling all available options, at `demo/<the-element>.html`

## Testing
Each element should contain a suitable set of automated tests, located in `test/<the-element>.html`
