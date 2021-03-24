echo "🚧 init nx-workspace";
npm init nx-workspace REPOSITORY --appName=web --defaultBase=main --interactive=false --linter=eslint --nxCloud=false --npmScope=ORGANIZATION --preset=angular --routing=true --style=css
cd ORGANIZATION
echo "on six"
json -I -f apps/web/tsconfig.json -e "this.compilerOptions = { };"
echo "this.compilerOptions = { }"
json -I -f apps/web/tsconfig.json -e "this.compilerOptions.forceConsistentCasingInFileNames = true;"
echo "this.compilerOptions.forceConsistentCasingInFileNames = true"
json -I -f apps/web/tsconfig.json -e "this.compilerOptions.strict = true;"
echo "this.compilerOptions.strict = true"
json -I -f apps/web/tsconfig.json -e "this.compilerOptions.noImplicitReturns = true;"
echo "this.compilerOptions.noImplicitReturns = true"
json -I -f apps/web/tsconfig.json -e "this.compilerOptions.noFallthroughCasesInSwitch = true;"
echo "this.compilerOptions.noFallthroughCasesInSwitch = true"
json -I -f apps/web/tsconfig.json -e "this.angularCompilerOptions = { };"
echo "this.angularCompilerOptions = { }"
json -I -f apps/web/tsconfig.json -e "this.angularCompilerOptions.strictInjectionParameters = true;"
echo "this.angularCompilerOptions.strictInjectionParameters = true"
json -I -f apps/web/tsconfig.json -e "this.angularCompilerOptions.strictTemplates = true;"
echo "this.angularCompilerOptions.strictTemplates = true"
nx g m core web --module=app --routing --routingScope=Root --no-interactive
git branch -M main
git remote add origin https://github.com/ORGANIZATION/REPOSITORY.git
git add *
git commit -m 'chore: init nx-workspace'
echo "🏠 init nx-workspace";