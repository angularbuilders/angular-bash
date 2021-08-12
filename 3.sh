cd $REPOSITORY
echo "    👨‍🚀 generating shared ui library for common components, directives and pipes";
nx g lib ui --directory=shared --importPath=@$ORGANIZATION/ui  --prefix=$ORGANIZATION-ui --tags="scope:shared","type:ui" --standaloneConfig=true
echo "    👨‍🚀 generating shared data library client api services, data validations...";
nx g lib data --directory=shared --importPath=@$ORGANIZATION/data --tags="scope:shared","type:data" --standaloneConfig=true
echo "    👨‍🚀 generating shared util library for utility, funcions, adapters and non framework related code";
nx g lib util --directory=shared --importPath=@$ORGANIZATION/util --tags="scope:shared","type:util" --standaloneConfig=true
cd ..