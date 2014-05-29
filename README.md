Introduction

The simple program written in Perl is designed to handle and manage
virtual domains and related email addresses. It helps to add, delete
or modify recipient email addresses of your virtual domains
(Cfr. http://www.debian-administration.org/articles/140 for details).

Installation

1. Install the program addvemail into you PATH at your discretion
2. Make sure to make the program executable, chmod +x addvemail
3. Copy and edit the default configuration file addvemail.conf to
   /etc/default/addvemail - this is not mandatory.

Example

Note: Virtual domain files must exists (in this version)!

$> addvemail john@example.org john.doe@gmail.com
   Adding recipient john to /etc/exim4/virtual/example.org

$> addvemail -f john@example.org jdoe
   Replace (above) recipient john to drop mail into local mailbox of
   jdoe

$> addvemail -x sales@example.net
   Create an entry of example.net to drop mail (as blackhole)

$> addvemail -s info@example.org
   Suppress (delete) recipient info from example.org

Todo

* Add support to create virtual domain file
* Add perldoc
* Add command options for all config parameters
* ...
