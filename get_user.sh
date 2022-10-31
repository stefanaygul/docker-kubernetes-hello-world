#!/bin/bash

awk -F'[:=]' 'NR > 10 {print "USERNAME","UID","HOME"}
                 {gsub(/"/,"");
                  print $1 "\t" $3 "\t" $6}' /etc/passwd | column -t
