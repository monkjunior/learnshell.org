#!/bin/bash
VAR1="Use backslash to escape special character"
echo "\$VAR1 $VAR1"

VAR2="Encapsulating the variable name with \${} is used to avoid ambiguity"
echo "\${VAR2} ${VAR2}"

# Encapsulating the variable name with "" will preserve any white space values
VAR3="Hello,                     world!"
echo ${VAR3}
echo "${VAR3}"

# Substitute by commend output
CURRENT_DIR=`pwd`
LIST_FILE=$(ls ${CURRENT_DIR})
echo ${CURRENT_DIR}
echo ${LIST_FILE}

# Exercies
BIRTHDATE="$(/bin/date "+%b %1d, %Y" --date "Jan 1, 2000")"
Presents=10
BIRTHDAY=$(/bin/date "+%A" --date "Jan 1, 2000")

# Testing code - do not change it

if [ "$BIRTHDATE" == "Jan 1, 2000" ] ; then
    echo "BIRTHDATE is correct, it is $BIRTHDATE"
else
    echo "BIRTHDATE is incorrect - please retry"
fi
if [ $Presents == 10 ] ; then
    echo "I have received $Presents presents"
else
    echo "Presents is incorrect - please retry"
fi
if [ "$BIRTHDAY" == "Saturday" ] ; then
    echo "I was born on a $BIRTHDAY"
else
    echo "BIRTHDAY is incorrect - please retry"
fi
