REPOSITORY=conf21
ORGANIZATION=ab
echo "🚧 init nx-workspace";
npm init nx-workspace $REPOSITORY --appName=www --defaultBase=main --interactive=false --linter=eslint --nxCloud=true --npmScope=$ORGANIZATION --preset=angular --style=css
echo "🏠 init nx-workspace";
