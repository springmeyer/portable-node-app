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
mkdir -p ${DEST}/app/mbtiles
cp -r ${SOURCE} ${DEST}/app/${SOURCE}
find ./${DEST}/app/${SOURCE}/node_modules -name test | xargs rm -rf;
find ./${DEST}/app/${SOURCE}/node_modules -name deps | xargs rm -rf;
find ./${DEST}/app/${SOURCE}/node_modules -name examples | xargs rm -rf;
find ./${DEST}/app/${SOURCE}/node_modules -name docs | xargs rm -rf;
find ./${DEST}/app/${SOURCE}/node_modules -name testdata | xargs rm -rf;
find ./${DEST}/app/${SOURCE}/node_modules -name tests | xargs rm -rf;
find ./${DEST}/app/${SOURCE}/node_modules -name tmp | xargs rm -rf;
rm -rf ./${DEST}/app/${SOURCE}/.git
rm -rf ./${DEST}/app/${SOURCE}/test/
rm -rf ./${DEST}/app/${SOURCE}/node_modules/bones/node_modules/jquery/node_modules/htmlparser/libxmljs.node

echo "Close this window to stop the server" >  ${DEST}/app/start-${SOURCE}.command
echo "Starting up browser at ${URL}" >> ${DEST}/app/start-${SOURCE}.command
echo "open ${URL}" >>  ${DEST}/app/start-${SOURCE}.command
echo "${SOURCE}/node ${SOURCE}/index.js --tiles=./mbtiles" >> ${DEST}/app/start-${SOURCE}.command
cp README.txt ${DEST}/
cp `which node` ${DEST}/app/${SOURCE}/
DMG_NAME="${DEST}.dmg"
hdiutil create \
  "${DMG_NAME}" \
  -volname "${DMG_NAME}" \
  -fs HFS+ \
  -srcfolder "${DEST}"


