if [ -z "$1" ]
then
	echo -n "Usage\nOne-shot: sh compile.sh <name>\nAutocompile on save: ls <name.tex> | entr ./compile.sh <name>\n"
	exit
fi 
echo "Autocompiling $1"
pdflatex "$1";
biber "$1"
pdflatex "$1";
pdflatex "$1";
notify-send "Done compiling document $1"
