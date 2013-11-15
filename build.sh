# settings
export SOURCE=tilestream
export DEST=portable-${SOURCE}-v1
export URL="http://127.0.0.1:8888"
# change into current directory
export ROOTDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd ${ROOTDIR}
# cleanup
rm -rf ${DEST}*
# build
mkdir -p ${DEST}/app/tiles
cp -r ${SOURCE} ${DEST}/app/${SOURCE}
find ./${DEST}/app/${SOURCE}/node_modules -name test | xargs rm -rf;
find ./${DEST}/app/${SOURCE}/node_modules -name deps | xargs rm -rf;
find ./${DEST}/app/${SOURCE}/node_modules -name examples | xargs rm -rf;
find ./${DEST}/app/${SOURCE}/node_modules -name docs | xargs rm -rf;
find ./${DEST}/app/${SOURCE}/node_modules -name testdata | xargs rm -rf;
find ./${DEST}/app/${SOURCE}/node_modules -name tests | xargs rm -rf;
find ./${DEST}/app/${SOURCE}/node_modules -name tmp | xargs rm -rf;
find ./${DEST}/app/${SOURCE}/node_modules -name testcase | xargs rm -rf;
rm -rf ./${DEST}/app/${SOURCE}/.git
rm -rf ./${DEST}/app/${SOURCE}/test/
rm -rf ./${DEST}/app/${SOURCE}/node_modules/bones/node_modules/jquery/node_modules/htmlparser/libxmljs.node

COMMAND="${DEST}/app/start-${SOURCE}.command"
echo "echo Close this window to stop the server" > ${COMMAND}
echo "echo Starting up browser at ${URL}" >> ${COMMAND}
echo "function browser { sleep 3; open ${URL}; }" >> ${COMMAND}
echo "browser &" >> ${COMMAND}
echo 'CURRENT_DIRECTORY="$( cd "$( dirname "$0" )" && pwd )"' >> ${COMMAND}
echo "SOURCE=${SOURCE}" >> ${COMMAND}
echo '${CURRENT_DIRECTORY}/${SOURCE}/node ${CURRENT_DIRECTORY}/${SOURCE}/index.js --tiles=${CURRENT_DIRECTORY}/tiles' >> ${COMMAND}
chmod +x ${COMMAND}
cp test.mbtiles ${DEST}/app/tiles/
cp README.txt ${DEST}/
cp `which node` ${DEST}/app/${SOURCE}/node
chmod +x ${DEST}/app/${SOURCE}/node
DMG_NAME="${DEST}.dmg"
hdiutil create \
  "${DMG_NAME}" \
  -volname "${DMG_NAME}" \
  -fs HFS+ \
  -srcfolder "${DEST}"


