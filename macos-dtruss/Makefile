

# https://stackoverflow.com/questions/31045575/how-to-trace-system-calls-of-a-program-in-mac-os-x
# cp /usr/bin/find find
# codesign --remove-signature ./find
# sudo dtruss ./find …

# Resources
# https://pastebin.com/pvd65wE1
# https://developer.apple.com/documentation/technotes/tn3127-inside-code-signing-requirements
# https://www.deepanseeralan.com/tech/fun-with-dtruss-macOS/
# https://opensource.apple.com/source/dtrace/dtrace-147/DTTk/dtruss.auto.html

# FOO=foo strace ./geten

run:
	gcc getenv.c -o geten -g3 -O0

	codesign --display --verbose=4 ./geten
	codesign --remove-signature ./geten

	codesign --display --verbose=4 ./geten
	# ./geten: code object is not signed at all

	FOO=foo sudo dtruss ./geten
