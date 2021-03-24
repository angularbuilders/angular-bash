echo "🚧 add capabilities";
echo "add universal"
ng add @nguniversal/express-engine --interactive=false --defaults=true
git add *
git commit -m 'chore: add universal'
echo "add bulma";
npm i bulma
json -I -f angular.json -e "this.projects.web.architect.build.options.styles[1] = 'node_modules/bulma/css/bulma.css';"
git add *
git commit -m 'chore: add bulma'
echo "🏠 add capabilities";