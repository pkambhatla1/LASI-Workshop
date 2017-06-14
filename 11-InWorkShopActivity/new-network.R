rm(list=ls(all=TRUE))
library(igraph)

rawPosts <- read.csv("mdl_forum_posts_scrubbed.csv")

# SQL That moves Raw posts to a network structure
# SELECT * INTO mdl_forum_posts_snadata FROM 
# (SELECT p2.id, p2.userid AS userid_from, p2.created, p1.userid AS userid_to   
#   FROM mdl_forum_posts p1 JOIN mdl_forum_posts p2 ON p2.parent = p1.id) data;

## Original Data
# id - row id for a specific post
# discussion - discussion forum id
# parent - is there a top level post that this is under
# userid - person
# created - timestamp of creation
# modified - timestamp of any modification 



networkPosts <- read.csv("mdl_forum_posts_scrubbed_sna_data.csv")

