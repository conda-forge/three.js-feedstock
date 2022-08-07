cat $RECIPE_DIR/sage.js >> src/Three.js
npm install rollup
npm run build
tgz=$(npm pack)
npm install -g $tgz
mkdir -p $PREFIX/share
mv $PREFIX/lib/node_modules/three $PREFIX/share/threejs
ln -s $PREFIX/share/threejs $PREFIX/lib/node_modules/three
echo "$PKG_VERSION" > $PREFIX/share/threejs/version
