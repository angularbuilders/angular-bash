cd $REPOSITORY
echo "    👨‍🚀 generating core layout library for layout components";
nx g lib layout  --directory=core --importPath=@$ORGANIZATION/layout --prefix=$ORGANIZATION-layout --tags="scope:core","type:ui" --standaloneConfig=true
echo "    👨‍🚀 generating core global library for global store, interceptors, errorhandler...";
nx g lib global  --directory=core --importPath=@$ORGANIZATION/core  --tags="scope:core","type:data" --standaloneConfig=true
cd ..