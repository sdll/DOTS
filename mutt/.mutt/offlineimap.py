#! /usr/bin/env python2
from subprocess import check_output

def get_pass():
    return check_output("gpg -dq ~/.mailp.gpg", shell=True).strip("\n")
