<div align="center">

# Base template

[Overview](#overview)
•
[Usage](#usage)
</div>

## Table of contents

- [Overview](#overview)
- [Usage](#usage)

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

- git
- github/gh/gh
- httpie
- node@16
- yarn
- docker
- visual-studio-code

