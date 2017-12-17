while read x
do
    if [[ -f $x ]]
    then
        echo $x
    fi
done
