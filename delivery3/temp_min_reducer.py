#!/usr/bin/env python

import sys

(last_key, min_val) = (None, 0)
for line in sys.stdin:
	(key, val) = line.strip().split("\t")
	if last_key and last_key != key:
		# Print results of non-last key
		print ("%s\t%s" % (last_key, min_val))
		# Starts reducing new key
		(last_key, min_val) = (key, int(val))
	else:
		# Process data
		(last_key, min_val) = (key, min(min_val, int(val)))

if last_key:
	# Print results of last key
	print ("%s\t%s" % (last_key, min_val))
