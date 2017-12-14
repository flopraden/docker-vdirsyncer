#!/bin/sh

yes y | vdirsyncer discover
yes y | vdirsyncer metasync
yes y | vdirsyncer sync