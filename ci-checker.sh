git submodule update --recursive
mkdir generator/output
cp *.json generator/output
cp config.yml generator/output/config.yml

cd generator
cp -R src/template output/template
yarn
yarn build
yarn run check