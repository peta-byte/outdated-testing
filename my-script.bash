echo “Checking dependencies’ versions…”
while IFS= read -r line
do 
    vals=$(echo $line | LC_ALL=C tr “:” "\n")
    for val in $vals
    do 
        echo "$val" >> ./parsednread.txt;
    done
done < <(npm outdated --parseable)
echo “All done.”
