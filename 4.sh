cd $REPOSITORY
echo "    👨‍🚀 generating domain home library for lazy load features with smart components and services on home route activation";
nx g lib home --directory=domain --simpleModuleName=true --importPath=@$ORGANIZATION/home --prefix=$ORGANIZATION --routing --lazy --parentModule='\apps\'$MAIN_APP_NAME'\src\app\app.module.ts' --tags="scope:domain","type:feat" --standaloneConfig=true
echo "    👨‍🚀 generating domain about library for lazy load features with smart components and services on home about activation";
nx g lib about --directory=domain --simpleModuleName=true --importPath=@$ORGANIZATION/about --prefix=$ORGANIZATION --routing --lazy --parentModule='\apps\'$MAIN_APP_NAME'\src\app\app.module.ts' --tags="scope:domain","type:feat" --standaloneConfig=true
echo "    👨‍🚀 generating domain auth library for lazy load features with smart components and services on home auth activation";
nx g lib auth --directory=domain --simpleModuleName=true --importPath=@$ORGANIZATION/auth --prefix=$ORGANIZATION --routing --lazy --parentModule='\apps\'$MAIN_APP_NAME'\src\app\app.module.ts' --tags="scope:domain","type:feat" --standaloneConfig=true
cd ..