cp templates/.eslintrc.json $REPOSITORY/.eslintrc.json;
cd $REPOSITORY
npm run lint
# nx affected:dep-graph --file=dep-graph.html
# nx print-affected
cd ..