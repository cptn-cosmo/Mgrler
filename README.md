# Mgrler
Mgrler is an addon for World of Warcraft that translates chat text from English into Nerglish, the language of the Murloc race in game. This addon is purely for laughs and giggles and serves no practical purpose otherwise. For more information please see the [Nerglish article](https://wow.gamepedia.com/Nerglish) on Wowpedia.

[![Build Status](https://travis-ci.org/salindersidhu/Mgrler.svg)](https://travis-ci.org/salindersidhu/Mgrler)
[![Release](https://img.shields.io/github/release/salindersidhu/Mgrler.svg)](https://github.com/salindersidhu/Mgrler/releases/latest)
![Github All Releases](https://img.shields.io/github/downloads/salindersidhu/Mgrler/total.svg)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](/LICENSE.md)

# Table of Contents
* [Getting Started](#getting-started)
	* [Installing](#installing)
	* [Developing](#developing)
* [Contributing](#contributing)

# Getting Started

To use, first select your chat channel `/s, /y, /g, /p, /i, /2`...ect and then type `/ngl` followed by the text you want to translate into Nerglish.

<div align="center">
	<img src="https://user-images.githubusercontent.com/12175684/44621912-cf2c5400-a87c-11e8-94b4-0f480eed87f5.jpg" alt="Screenshot1"/>
	<img src="https://user-images.githubusercontent.com/12175684/44621913-cfc4ea80-a87c-11e8-96e1-e224e092d12f.jpg" alt="Screenshot2"/>
	<img src="https://user-images.githubusercontent.com/12175684/44621914-cfc4ea80-a87c-11e8-9239-fe64873c950f.jpg" alt="Screenshot3"/>
</div>

## Installing
To install Mgrler, download the latest addon from [Releases](https://github.com/salindersidhu/Mgrler/releases). Extract the zip file and copy the extracted `Mgrler` folder to your `World of Warcraft/Interface/Addons` folder.

## Developing
A makefile has been provided to help build the addon for development and testing purposes.

To build and install the addon, run the following command:
```bash
make
```

To remove the addon, run the following command:
```bash
make clean
```

# Contributing
Mgrler welcomes contributions from anyone and everyone. Please see our [contributing guide](/CONTRIBUTING.md) for more info.
