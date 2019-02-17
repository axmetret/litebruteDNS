#!/bin/bash
#
for pname in $(cat name_dns); do host $pname.test.com | grep "has address"; done
