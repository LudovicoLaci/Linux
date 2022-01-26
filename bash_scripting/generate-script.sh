#!/bin/bash
# generate-script.sh

OUTFILE=generated.sh		# Name of the file to generate.

(
cat <<'EOF'
#!/bin/bash

echo "This is a generated shell script."
# Note: we are in a subshell therefore we can't access outside variables.

echo "Generated file will be named: $OUTFILE"
# Parameter expansion has been disabled ==> literal output.

a=7
b=3

let "c = $a * $b"
echo "c = $c"

exit 0
EOF
) > $OUTFILE

# Quoting the 'limit string' prevents variable expansion within the body
# of the above 'here document'. This perimits outputting literal strings
# in the output file.

if [ -f $OUTFILE ]
then
	chmod 755 $OUTFILE
else
	echo "Problem in crating file: \"$OUTFILE\"".
fi

exit 0
