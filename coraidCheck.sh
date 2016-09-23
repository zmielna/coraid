#!/bin/bash
#########################################################################################
# 2011-09-01: Quick and dirty, monitoring coraid
# Send bugreports, fixes, enhancements, t-shirts, money, beer & pizza to devnull at mielnet.pl
TODAYONLY=`date "+%b %e"`
grep "$TODAYONLY" /var/log/messages|grep shelf > /tmp/coraid.out
######### if corad.out exists and size > 0
if [ -s /tmp/coraid.out ]
 then 
######## send it to Andrew
	cat /tmp/coraid.out |mail -s "Problem with Coraid" email@address.here
######## otherwise just go away
 else exit 0
fi
######### cleanup
rm /tmp/coraid.out
######################## eof ############################################################

