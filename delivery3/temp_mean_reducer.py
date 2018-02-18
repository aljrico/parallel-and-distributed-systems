#!/usr/bin/env python

import sys

(last_key, max_val, count) = (None, 0, 0)
for line in sys.stdin:
	(key, val) = line.strip().split("\t")
	if last_key and last_key != key:
		# Print results of non-last key
		print ("%s\t%s" % (last_key, max_val/count))
		# Starts reducing new key
		(last_key, max_val, count) = (key, int(val), 1)
	else:
		# Process data
		(last_key, max_val, count) = (key, int(max_val) + int(val), int(count) + 1)

if last_key:
	# Print results of last key
	print ("%s\t%s" % (last_key, max_val/count))
