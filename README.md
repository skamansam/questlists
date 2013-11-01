# Quest Lists

QuestLists is a crowd-sourcing application that organizes lists of any sort. The
crowd builds the lists, you say what you want to use from that list, and then
use it as a normal checklist. Essentially, this is a three-state checklist builder.

The intention is to use the crowd to build lists for games, inventories, shopping,
music, videos, and more! Once the lists are built and created, you can add/remove
your items from them. You don't even have to login to use it (only for the same devise)!

## Demo
This is the public code for http://questlists-rbe.rhcloud.com. The code is redeployed
when I finish any feature or want to test something, so it may change a lot and
may break down  often. I will do my best not to disturb any data that is already
there, but be warned, your data may be a casualty of development!

## Roadmap

Questlists is originally intended for game quests, so will have the following
ideas implemented first:

  1. Your progress in quests.
  2. Items collected
  3. Overall progress in the game
  4. Locations reached
  5. Information about any other object in the game

I am sure you can generalize these ideas to fit any circumstance, so i will
eventually create a few demos of lists for everyday use, such as a shopping
list and various TODO lists.


#Help with Development

If you wish to help with development, you must have a Pivotal Tracker account, and a GitHub account. Both of these are free for public use, and are excellent development tools.

## Pivotal Tracker

I use Pivotal tracker for issue tracking in Questlists. It can handle new features, bugs, and other tasks. In order to use this, you must sign up and email me, then I will add you to the project. I apologize for this convolution, but PT does not yet have a way to auto-join public repos.

## GitHub

If you would like to help with development of this project, follow these instructions:

  1. fork this repo, and setup your Pivotal Tracker Service Hook (in Github: repo settings -> Service Hooks -> Pivotal Tracker)
  2. create a new branch with your github username as the name of the new branch
  3. Take an UNOWNED ticket from the public Pivotal Tracker repository (https://www.pivotaltracker.com/s/projects/857969). DO NOT TAKE SOMEONE ELSE"S TICKET! Make sure no one else is working on that ticket, by checking the OWNER field for that ticket (it will say "&lt;none&gt;" if no one is working on it).
  4. If a ticket has not been entered for a feature you are implementing, please create one. I will most likely not accept git commits without a ticket number.
  5. hack away, committing to the new branch, with each commit tagged for at least one specific ticket from Pivotal Tracker. see https://www.pivotaltracker.com/help/api?version=v3#scm_post_commit for what your commit messages should look like.
  6. Make sure ALL rspec tests run successfully. This is to ensure you do not bug the application. I have set up simplecov for this project, so you can see how much of your code is tested. Your code should be at least 85% covered. If it is close, I may add some tests for you.
  NOTE: I may, from time-to-time "look over your shoulder" at the commits you have made and make suggestions or ask about the code. Don't worry, I will not criticize, I just like learning new things!
  7. send me a pull request once you are happy with your code
  8. Wait for me to merge the changes I am very busy with my 9-5 and my new family, so this may take some time. I should email you within a few days or a week if I don't use GitHub's tools.
