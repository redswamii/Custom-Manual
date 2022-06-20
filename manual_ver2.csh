#! /bin/csh -f
clear

echo "GREP | AWK | SED | TR | SHUF |  ECHO |"
echo -n "Select from the following list: "

set input = $<

if ( $input == GREP || $input == grep ) then

echo "GREP - global search for regular expression and print out."
echo " Syntax - grep [options] pattern [files]"
echo "  Modifiers - "
echo "   grep -c "word" file.txt This prints only a count of the lines that match a pattern."
echo "   grep -i "WOrd" file.txt Ignores, case for matching."
echo "   grep -l "word" * Displays list of a filenames only."
echo "   grep -n "word" file.txt Display the matched lines and their line numbers."
echo "   grep -v "word" file.txt This prints out all the lines that do not matches the pattern."
echo "   grep –f pattern.txt file.txt Takes patterns from file, one per line."
echo "   grep -w "word" file.txt Match whole word."
echo "   grep -o "word" file.txt Print only the matched parts of a matching line,"
echo "                                 with each such part on a separate output line."

#-A n : Prints searched line and nlines after the result.
#-B n : Prints searched line and n line before the result.
#-C n : Prints searched line and n lines after before the result.

else if  ( $input == AWK || $input == awk ) then
echo "AWK - Aho, Weinberger, and Kernighan. Produce formatted reports."
echo " Syntax - awk options 'selection _criteria {action }' input-file > output-file."
echo "  awk '{print}' employee.txt By default Awk prints every line of data from the" 
echo "	              specified file."
echo "  awk '/manager/ {print}' employee.txt In the above example, the awk command prints"
echo "                          all the line which matches with the ‘manager’."
echo "  awk '{print $1,$4}' employee.txt If the line has 4 words, it will be stored in"
echo "                      $1, $2, $3 and $4 respectively. Also, $0 represents the whole line."
echo " 	awk 'NF < 0' geeksforgeeks.txt To print any non empty line if present."
echo "  awk 'END { print NR }' geeksforgeeks.txt To count the lines in a file."
echo "  awk '{print $1,$2,$NF}' dennis_ritchie.txt"
echo "  who | awk '{print $1}'"
echo "  who | awk '{print $1,$4}' Fields are identified by a dollar sign ($) and a number. So,"
echo "                            $1 represents the first field, which we’ll use with the print"
echo "                            action to print the first field."
echo "  date | awk '{print $2,$3,$6}' prints 2,3, and 6 fields of the date function."
echo "  $0: Represents the entire line of text."
echo "  $NF: Stands for “number of fields,” and represents the last field."

else if ( $input == SED || $input == sed ) then
echo "SED - stream editor and it can perform file like searching, find and replace, insertion or"  
echo "      deletion."
echo " Syntax - OPTIONS... [SCRIPT] [INPUTFILE...]"
echo "  sed 's/unix/linux/' geekfile.txt Replacing or substituting string"
echo "  sed 's/unix/linux/2' geekfile.txt Replacing the nth occurrence of a pattern in a line"
echo "  sed 's/unix/linux/g' geekfile.txt Replacing all the occurrence of the pattern in a line"
echo "  sed 's/unix/linux/3g' geekfile.txt Replacing from nth occurrence to all occurrences"
echo "                        in a line."
echo "  sed -n '13p' file.txt"
 
else if ( $input == TR || $input == tr ) then 
echo "TR - translating or deleting characters."
echo " Syntax - tr [OPTION] SET1 [SET2]"
echo "  -d : delete characters in the first set from the output."
echo "  -s : replaces repeated characters listed in the set1 with single occurrence."
echo "  -e "1 \n2" The most used newline character."
echo "  cat greekfile | tr “[a-z]” “[A-Z]” "
echo "  cat geekfile | tr “[:lower:]” “[:upper:]”
echo "  Welcome To GeeksforGeeks" | tr -d 'w'#How to delete specified characters using -d option."
echo "  my ID is 73535" | tr -cd [:digit:] How to complement the sets using -c option."
echo "  my ID is 73535" | tr -d [:digit:] To remove all the digits from the string, use."

else if ( $input == SHUF || $input == shuf ) then  

echo "SHUF - writes a random permutation of the input lines to standard output."
echo " Syntax - shuf [option] [file]"
echo "  shuf file.txt"
echo "  shuf -n 2 file.txt Any number of lines can be randomized by using -n option."
echo "  shuf -e A B C D E When -e option is used with shuf command, it works as a list shuf." 
echo "  the arguments of the command are taken as the input line for the shuf."
echo "  shuf -e -n 1 A B C D E Any number of input lines can be displayed using"
echo "                         the -n option along with -e option."

else if ( $input == ECHO || $input == echo ) then  

endif

#zennity
#tee
#find
#sleep
#head
#tail
#diff
#shred
#more
#less
#wget
#tar
#gzip
#join
#pv (must install)
#fmt
