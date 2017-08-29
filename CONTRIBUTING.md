# Contributing

Before delving into the world of open source, or reading further here, please review [this fantastic guide on How To Contribute To Open Source](https://opensource.guide/how-to-contribute/).

If you wish to help out with Questlists, we use [Zenhub](https://www.zenhub.com) and [Github](https://github.com) to track issues. You can submit issues in Github withought signing up for Zenhub, but they will be managed with Zenhub. We prefer you to join Zenhub, so you can see how we track all our tickets (including yours!) via a very nice and smooth interface built on top of Github, but that is completely up to you and extremely optional.

## GitHub

Before you submit a new feature or bugfix (or any other code change), make sure there is an issue currently in GitHub that addresses your issue, and is not assigned to anyone else. If one exists and is assigned to someone else, contact them via the Questlists Slack group or via Github and see if you can help with it! If there is no issue, create one! Its metadata will be updated shortly thereafter.

Then follow these instructions:
```text
TL;DR - Fork repo and create a new branch for each issue, then create a new pull request. I won't be too harsh on the rest.
```

  1. fork the repo
  2. create a new branch in your forked repo, preferably including the ticket number in the branch name, like `4-my-new-feature` or `my-new-feature_issue-4` or `my_new_feature-issue_4`. You get the idea.
  4. hack away! Follow the [Code Style Guide](#Code Style Guide) when hacking.
  5. When committing your changes, please make sure you include the ticket number in the description, surrounded by brackets. Something like `make sure we use the correct ES2016 syntax for foo-bar elements. [46]`. The commit message should read like a command, not a summary of what you did. (This is a hard one to follow, as you can tell from my commit messages, but it really does help new-comers get an understanding of what's going on.)
  6. Make sure ALL tests run successfully by running `gulp test`. This is to ensure you do not bug the application.
  7. make sure YOU have tests! Test as well as you can and a project maintainer will let you know whether it is enough, via comments on the PR. (Maybe one will even work with you on it!)
  8. Create a new pull request against the develop branch once you are happy with your code
  9. Wait for a maintainer to merge the changes. We are very busy with our 9-5's our families, so it may take some time.


## Running Questlists for Development

### Requirements

The `bin/setup` script will install everything you may need for developing Questlists. If you really want to do it manually, the following npm modules should be installed globally, so their binaries are more easily accessible from the command line.
  * firebase-tools
  * polymer-cli
  * firebase-server (local server used by `bin/start db`)

### Prepping your application for development

You need to make sure the `firebase-app` element in the `questlists-app` element points to the correct firebase domain. If you have set one up for development, make sure it points to the right domain. If you want to run your own local server, you can install the npm module `firebase-server` with `npm install -g firebase-server`.

Just run `./bin/start` from the repo's directory to start the polymer server. If you have a firebase app setup properly, you should be able to login and get started really quickly.

Then run `./bin/start db` from the repo's directory to start the local firebase server. This server is not as feature-rich as the real firebase server is, but it will allow you to develop Questlists offline. The database does not store any data on disk, but the seed DB is `test_db.json` in the project root. The DB access rules are at `database.rules.json` WARNING: Cloud functions don't work with this, so you will have to use a real firebase server to test these. 

### Deploying Questlists

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
