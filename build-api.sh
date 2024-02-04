echo 'changing directory to /api'
cd api
rm -r yyc_scan-api

echo 'generating files for api client'
java -jar openapi-generator-cli-7.2.0.jar generate -i yyc_scan-api.yml -g dart -o yyc_scan-api

echo 'changing directory to /api/yyc_scan-api'
cd yyc_scan-api

echo 'running build_runner and deleting conflicting files...'

flutter pub get
flutter pub run build_runner build --delete-conflicting-outputs

cd ..