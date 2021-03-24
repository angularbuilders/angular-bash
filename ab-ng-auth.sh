# generate auth feature
echo " generate auth page";
nx g library auth --importPath=@ab/auth --prefix=ab --routing --lazy --parentModule='apps\web\src\app\core\core-routing.module.ts' --tags='domain, page'
nx g c auth --project=domain-auth --flat --type=Widget --skipTests=false --export=true
nx g c login --project=domain-auth --flat --type=Page --skipSelector --skipTests=false
nx g c login --project=domain-auth --type=Form
nx g s auth --project=domain-auth --flat
nx g interceptor auth --project=domain-auth --flat
nx g guard auth --implements='CanActivate,CanLoad' --no-interactive --project=domain-auth --flat
git add *
git commit -m 'feat: generate auth feature'