# Investigating the Impact of X on Y

This repository contains the research paper for MSc. In information Technology - SLIIT - 2016
The study investigates analysing malware infections on Android operating system when installing
Android apps.
DroidBox is tool developed to offer dynamic analysis of Android applications. 
It is well known malware analysis sandbox and it will dynamically analyze the Android apps. 
DroidBox, authored by Patrick Lantz, is a sandbox for the Android platform.
It focuses on detecting information leaks that were derived from performing taint analysis for information-flow tracking on Android trojan applications. 
DroidBox can be used to get an overview of malicious activities triggered by the app.

## Key Findings

* DroidBox is build on Dalvik Runtime environment and currently it become obsolete with the new Android ART upgrade.
  In this project I’m going to analysis how to use Droidbox for analysing the malware in ART and what are the possible solutions to compile Droidbox to fix ART issues.

## docs
Research report
Project Proposal
Research finding report
Installation and Test Data preparation User guide

## Data

The `data/` directory contains the following files:

* `sample malware application`:  Sample mobile application which access restricted files in Andorid device.

## Scripts

The `scripts/` directory contains the shell scripts used for execute the DroidBox:

* `install_droidbox.sh`:  droidbox installation script

## executable
* Droidbox application jar file
* Droidbox report generator : Produce an analysis report
