# Purpose
Builds a Ruby on Rails development virtual machine. 

## Tutorial
This project accompanies the tutorial available at {TBD}.  

See the tutorial for additional information.

# Specs
Vagrant virtual machine
* Run on a Windows 10 PC
* Deployed with ubuntu/xenial64, web server, database, ruby, and rails.
* Used in conjunction with Visual Studio Code and Git (Git for Bash optional)

## Vagrant

See the .Vagrantfile for details on port and ip specifications, shared folders, CPUs used, memory, and more.

# Provisioning the Virtual Machine

* OS and apt automatically updated when possible
* APT as the mechanism to install
* Common tools include only bash, openssl, git, and curl as of this edit
* ruby-install and chruby are used as the RoR installers
* complex sections are in their own yml file but included instead of referenced as ansible sub-roles or sub-tasks
* only one ruby version installed by this script, per the variable yml; you can add your own via chruby

# Tested

* Not all branches of possible errors have been tested.  See flowchart below {TBD}.

# A Beginner's Guide to Troubleshooting

1. Sometimes getting the apt updates fail, probably because that server isn’t responding at that moment
1. Did you accidentally wack the three dashes at the beginning of the file?
1. If your file isn’t evaluated -- is it in the correct subdirectory?
1. Be careful of quotes and Ansible variables
1. Is your shell or command not executing as expected?  It may be because Ansible doesn’t call bash but rather sh and does it non-interactively -- meaning what your bash dotfiles do, doesn’t happen, including setting of the PATH environment variable
1. Did you accidentally name a results variable the same as a results variable in a previous task?
1. Are you root or [username] as appropriate for the task?
1. If you’re stuck, try the debug module
1. Vagrant running Ansible defaults to the "root" user, but "Become: true" is needed for some tasks to make sure they're run as root
1. Make sure to Use become/become_user (see Ansible docs) as needed for non-root users

# References
## Vagrant References

* For a complete Vagrant reference, please see the online documentation at
* https://docs.vagrantup.com.

* Every Vagrant development environment requires a box. You can search for
* boxes at https://vagrantcloud.com/search.

## Ansible References
* Vagrant's guide on using Ansible: https://www.vagrantup.com/docs/provisioning/ansible.html
* Ansible's guide on using Vagrant: https://docs.ansible.com/ansible/latest/scenario_guides/guide_vagrant.html
