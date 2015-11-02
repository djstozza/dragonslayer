# README

## Dragon Slayer

[dragonslayer.herokuapp.com](https://dragonslayer.herokuapp.com/)

I have been interested in making a game for a while so I decided to try out Phaser.js, a robust framework that can apply physics to games. I found some sprite sheets for characters from Heroes of Might and Magic III, a turn-based strategy game from the 90's, and decided to make the user move a knight across the screen while battling minions with the aim of slaying a dragon! I used Rails as a back end to handle user logins and a scoreboard.

The scores from the game are added to the highscores table through an AJAX request.

***

## What was used?

* JavaScript
* JQuery
* Phaser.js
* Bootstrap
* AJAX
* gon
* Ruby on Rails

***

## Bugs

The enemy characters tend to bunch up at the moment when chasing the player across the screen. I am currently working on implementing an array of coordinates around the player (probably in an octagonal shape) which would work as follows: If an enemy comes within striking distance of the player, it will be pushed into one of these coordinates and will thereby occupy that position until it is killed. Once that set of coordinates is taken, no other enemy character would be able to occupy that position. Other enemy character would therefore be pushed into other attack coordinates, thereby surrounding the player.


***

## Still to come:

* Making Dragon Slayer a two-player game using websockets