# Load shell functions
for file in ~/.{aliases,bash_prompt}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;
