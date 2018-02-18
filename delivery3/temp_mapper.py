#!/usr/bin/env python

import re
import sys

for line in sys.stdin:
	# Remove heading and tailing characters
	val = line.strip()

	# String split to get data
	(year, temp, q) = (val[15:19], val[87:92], val[92:93])

	# Print concat(year, temp) for each year
	if (temp != "+9999" and re.match("[01459]", q)):
		print ("%s\t%s" % (year, temp))
