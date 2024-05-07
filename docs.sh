flutter build web --web-renderer html --release & wait
rm -rf ./docs/
mkdir ./docs/
mv ./build/web/* ./docs/