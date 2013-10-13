#!/bin/sh
# Prevents rebuilding of static data by touching the results.

touch Cakegen
touch Makefile
touch src/static/*mk
