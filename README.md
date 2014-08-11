Simple Vagrant/Virtualbox Appliance
===================================
Getting started
---------------

#### Pre-requisites:

*  Vagrant
*  Virtualbox
*  Ruby Bundler

After cloning the repo

	> ./script/bootstrap
	> vagrant up
	
This will install the necessary Gems to build out the puppet environment. Then bring the box online. It takes a while since the Odoo branch is cloned from github. The source is pretty large.