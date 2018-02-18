#!/usr/bin/env python

import sys

for line in sys.stdin:
	# Remove heading and tailing characters
	line=line.strip()

	# Split each line into words
	words = line.split()

	# Print concat(word, 1) for each word
	for word in words:
		print ('%s\t%s' % (word, "1"))
