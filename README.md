# Gold Rush Claim Game

A text-based gold rush survival game written in x86-64 assembly. The player stakes mining claims, collects gold, manages health and morale, and tries to survive for 32 weeks.

## Overview

In this game, the player starts by choosing one of 10 claims. Each week, the player must decide how to survive and make progress. Different choices affect gold, health, morale, and long-term strategy.

The game includes:

* mining for gold
* switching to new claims
* recovering health at camp
* visiting town
* depositing gold in the bank
* gambling at the casino
* improving morale at the bar
* random bard and goblin events
* one hidden bonanza claim with extra gold

## Features

* Written in x86-64 assembly using Intel syntax
* 10 different claim locations with descriptions
* Randomized gold generation for each claim
* One hidden bonanza claim with a much larger gold value
* Health system that decreases as the game continues
* Morale system affected by mining results and town choices
* Town system with bank, casino, and bar actions
* Random event system including the bard and Bon Bons the Pouty
* Input validation for menu choices
* 32-week survival gameplay loop

## How the Game Works

* Choose a claim from 0 to 9
* Each week, make a decision on Sunday
* Mine for gold and manage your resources
* Going to camp restores health
* Choosing a new claim leaves the remaining gold from the old claim behind
* Town options give different advantages and risks
* If health reaches 0, the game ends
* If you survive all 32 weeks, the game ends and shows your final results

## Build

This version is intended to run in a normal Linux x86-64 environment.

Compile with:

```bash
gcc -x assembler -nostdlib -no-pie -o a.out claim_game_standalone.asm
```

## Run

```bash
./a.out
```

## File

* `claim_game_standalone.asm` - main source file for the game
