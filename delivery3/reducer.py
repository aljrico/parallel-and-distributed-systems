#!/usr/bin/env python
import sys

word2count= {}

for line in sys.stdin:
	line = line.strip()

	# Save word and count of each concat(word, 1)
	word,count = line.split('\t', 1)

	# Check if count is a number
	try:
		count = int(count)
	except ValueError: # Ignore the word
		continue

	# Add counts of each word in an array
	try: # Normal behaviour: add + 1 to the counter
		word2count[word] = word2count[word] + count
	except: # Add new word to the "database" with value "1"
		word2count[word] = count

for word in word2count.keys():
	print ('%s\t%s' % ( word, word2count[word]))
