for var in "$@"
do
    echo "**$var**"
    echo ""
    sed  's/^/    /' "$var"
    echo ""
done
