#!/bin/sh

yes y | vdirsyncer -c /config/config discover
yes y | vdirsyncer -c /config/config metasync
yes y | vdirsyncer -c /config/config sync