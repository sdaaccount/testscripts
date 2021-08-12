#!/bin/bash

find /etc/ -exec ./check_stats.sh {} \;
