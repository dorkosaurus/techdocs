#Pro git 

## Chapter 1: Getting started
### 3 stages
* Committed:  files that are safely stored in local db
* Modified:  changed the file but not yet committed
* Staged:  modified a file and marked it to be committed

### First time git set up
* /etc/gitconfig file:  used for every user for the system. Pass in --system to git to read/write this file
* ~/.gitconfig file:  specific to your user.  Make git read/write this file with --global option
* ./git/config for configuration of a specific git repository

#### Identity
Set username and E-mail address:
````
$git config --global user.name "Vivek Ramaswamy"
$git config --global user.email vramaswamy@gmail.com
````
#### Editor
Used by git to enable you to type in a message
````
$git config --global core.editor vim
````
#### Diff tool
Diff tool to resolve merge conflicts
````
$git config --global merge.tool vimdiff
````
#### Viewing configuration
This shows all config information from all files set. If the same key exists in different files, git will use the last value of the key it sees.

````
$git config --list
````
 
This shows the value for a particular key:
````
$ git config user.name
````

## Chapter 2:  git basics


### Tracking new files:

````
git add README
````

### Staging modified files
1. Add a file to the staging area
````
touch README
git add README
````
2. Modify the file
````
cat hello > README
````
3. Add the changes back to the staging area
````
git add README
````

If you simply follow step 1 and don't execute step 3 git will only commit step 1 when you tell it to commit



