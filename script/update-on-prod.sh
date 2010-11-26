#!/bin/bash
ssh jamesro@thepeoplesfeed.com 'cd vroommates && git pull && rake db:migrate && touch tmp/restart.txt'
