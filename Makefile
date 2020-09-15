SHELL=/bin/bash

include .env

.DEFAULT_GOAL := cmd3

file1: # don't be runned, because file1 exists
	@echo "it works!"

.PHONY: file2
file2:
	@echo "it works!"

# make cmd1 message="bla bla"
# make message="bla bla" cmd1
cmd1:
	@echo "your message: ${message}"

# make cmd2 message="bla bla"
# make cmd2
cmd2:
	@echo "your message: $${message:-"default value"}"

# read env from .env file
cmd3:
	echo ${DATABASE_URL}
