#!/usr/bin/env python

import sys

(last_key, max_val) = (None, 0)
for line in sys.stdin:
	(key, val) = line.strip().split("\t")
	if last_key and last_key != key:
		# Print results of key
		print ("%s\t%s" % (last_key, max_val))
		# Starts reducing new key
		(last_key, max_val) = (key, int(val))
	else:
		# Process
		(last_key, max_val) = (key, max(max_val, int(val)))

if last_key:
	# Print results of last key
	print ("%s\t%s" % (last_key, max_val))
