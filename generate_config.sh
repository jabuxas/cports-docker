#!/bin/sh
echo "What is the path to your cports repo?"
read repo_path
echo "CPORTS_REPO=$repo_path" > .env
