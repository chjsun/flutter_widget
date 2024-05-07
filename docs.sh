flutter build web --web-renderer html --release --base-href /flutter_widget/ & wait
rm -rf ./docs/
mkdir ./docs/
mv ./build/web/* ./docs/