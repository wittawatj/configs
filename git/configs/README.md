myconfigs
=========

This git repository contains most configuration files I use on my Linux box. 
I followed [this guide](https://www.digitalocean.com/community/tutorials/how-to-use-git-to-manage-your-user-configuration-files-on-a-linux-vps)
to create a git repository outside the home folder by changing repository's `core.worktree`. 
I initiated a repository at `~/git/configs/` and used 

    git config core.worktree "../../../"  

so that the worktree points to the home folder.

