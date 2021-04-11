#!/bin/sh

# list all texlive packages
apt list "texlive*"

# search texlive packages with simple description
apt search "^texlive.*"

# list all installed texlive packages
apt list --installed "texlive*"

# list all manually installed texlive packages
apt list --manual-installed "texlive*"

# list all manually installedpackages
apt list --manual-installed

# show information about a package
apt show myhello

# make the user happy
apt moo
