#!/usr/bin/env python2
import re, os

def get_password_emacs(machine, login, port):
    s = "machine %s login %s port %s password ([^ ]*)\n" % (machine, login, port)
    p = re.compile(s)
    authinfo = os.popen("gpg -q --no-tty -d ~/Dropbox/.authinfo.gpg").read()
    return p.search(authinfo).group(1)
