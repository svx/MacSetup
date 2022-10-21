<div align="center">

# Base template

[Overview](#overview)
•
[Usage](#usage)
</div>

## Table of contents

- [Overview](#overview)
- [Usage](#usage)
- [Credits](#credits)

## Overview

Basic bash script to automatically install some applications on macOS.

The script will:

- Create a SSH key (`ed25519`)
- Open a browser window (Safari) pointing to GitHub to add your key
- Install X-Code
- Install Homebrew
- Install a list of applications via Homebrew (see below)

## Usage

- Clone the repository
- Change into the repository
- Adjust permissions of the script to make it "runnable" (`chmod +x setup.sh`)

## Packages

List of applications which will be installed:

- Git
- HTTPie
- Node (16)
- Yarn
- Docker
- Visual Studio Code
- GitHub CLI
- GitHub Desktop

## Credits

- [GMGStudio](https://github.com/GMGStudio)