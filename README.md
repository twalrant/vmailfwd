Introduction

The simple program written in Perl is designed to handle and manage
virtual domains and related email addresses. It helps to add, delete
or modify recipient email addresses of virtual domains
(Cfr. http://www.debian-administration.org/articles/140 for details).

Installation

1. Install the program addvmail into your PATH
2. Install or create a symlink for the program delvmail 
3. Make sure to make the program executable, chmod +x addvmail
4. Copy (and edit) the default configuration file vmailfwd.conf to
   /etc/default/vmailfwd - this is not mandatory.

Examples

Note: Virtual domain files must exists (in this version)!

$> addvmail john@example.org john.doe@gmail.com

   Adding recipient john to /etc/exim4/virtual/example.org, forwarded
   to a gmail account.

$> addvmail -f john@example.org jdoe

   Replace (above) recipient john to drop mail into local mailbox of
   jdoe

$> addvmail -x sales@example.net

   Create an entry of example.net to drop mail (as :blackhole:)

$> delvmail info@example.org

   Suppress (delete) recipient info from example.org

$> addvmail -r sharon@example.net She no longer lives here.

   Create an entry of example.net to bounce/reject mail for sharon
   with a specific text "She no longer lives here."


Todo

* Add perldoc
* Add command options for all configuration parameters
* ...

Done

* Add support to create virtual domain file
