linux-configs
=============

My linux configurations
-----------------------

This is a snapshot of various linux configurations in use by me, including my
setup for i3wm, conky, etc.

File Layout
-----------

*home* contains files that belong relative to ~
*etc* contains files that belong in /etc
*configs* contain things such as crontabs

Naming Convention
-----------------

Dotfiles are prefixed with "dot-". For example, ".profile" would be checked in
as "dot-profile". While git supports dotfiles just fine, this makes things a
bit less messy when browsing this repo (and it's not like this repository is
an actual mirror of ~ anyway).

In many cases, I have different configurations for different systems, so I've
broken them out into saparate files where appropriate.

Most importantly, don't clone this and put these configurations into place
expecting them to work for you - this is a reference when I set up my own
systems, and which perhaps others find useful.
