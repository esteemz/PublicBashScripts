#!/bin/bash

#Convert txt file to html file with subsitutions
if [ $# -lt 1 ]
then
    echo "Usage: $0 <input_file>"
    exit 1
fi

input_file=$1
output_file=${input_file%.*}.html

cat <<EOF > $output_file
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>$(basename $input_file .txt)</title>
</head>
<body>
$(sed 's/&/\&amp;/g; s/</\&lt;/g; s/>/\&gt;/g' $input_file)
</body>
</html>
EOF

echo "Output written to $output_file"
