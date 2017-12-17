echo "Output of \`$1\`:"
echo ""
eval "$1" | sed 's/^/    /'
