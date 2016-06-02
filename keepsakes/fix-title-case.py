import re, sys, os, string

r = re.compile(r"^\t\[" + r"|" + \
		r"^\\(chapter|section|subsection)\*?{" + r"|" + \
		r"^\\begin\{(example|lemma|theorem|proposition|corollary|definition|problem|sproblem|remark)\}\[" + r"|" + \
		r"Theorem|Lemma")

def guess(line):
	# Make a best guess for the correct capitalization
	out = ''
	in_math = False
	prev_was_space = False

	for c in line:
		if c == '$':
			in_math = not in_math
		if not in_math and prev_was_space and c in string.uppercase:
			c = c.lower()
		prev_was_space = (c == ' ')
		out += c
	return out
	
def fixup(lines):
	tmp = [guess(line) for line in lines if r.search(line) is not None]

	with open("/tmp/tmp.tex", "w") as f:
		print >>f, ''.join(tmp).strip()
	os.system("vim /tmp/tmp.tex")
	with open("/tmp/tmp.tex", "r") as f:
		fixed_lines = f.readlines()

	i = 0
	out = ""
	for line in lines:
		if not r.search(line):
			out += line
		else:
			out += fixed_lines[i]
			i += 1
	return out

for filename in sys.argv[1:]:
	with open(filename, "r") as f:
		new_text = fixup(f.readlines())
	with open(filename, "w") as f:
		print >>f, new_text.strip()
	# with open(filename, "w") as f:
		# print >>f, new_text


