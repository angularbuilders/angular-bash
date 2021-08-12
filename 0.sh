export REPOSITORY="0nx"
export ORGANIZATION="ab"
export MAIN_APP_NAME="www"

echo "  🌑 1 - create nx-workspace ${REPOSITORY} for ${ORGANIZATION}";
bash 1.sh

echo "  🌘 2 - generate core libraries ${MAIN_APP_NAME}";
bash 2.sh

echo "  🌗 3 - generate shared libaries";
bash 3.sh

echo "  🌖 4 - generate domain libaries";
bash 4.sh

echo "  🌕 5 - add dependency constraints";
bash 5.sh

echo "  🚀 launch appllication";
cd $REPOSITORY
# npm run update
# nx migrate --run-migrations=migrations.json
# nx report
npm start -- -o