echo "    👨‍🚀 creating nx-workspace ${REPOSITORY} for ${ORGANIZATION}";
npx create-nx-workspace $REPOSITORY --defaultBase=main --interactive=false --nxCloud=false --npmScope=$ORGANIZATION --preset=empty --standaloneConfig=true
cd $REPOSITORY
echo "    👨‍🚀 installing Angular schematics";
npm i --save-dev @nrwl/angular
echo "    👨‍🚀 generating Angular applicaction";
nx g @nrwl/angular:application $MAIN_APP_NAME --no-interactive --routing=true --tags="scope:app","type:feat" --standaloneConfig=true
cd ..