#!/bin/sh
flutter clean
flutter build apk -t lib/main.dart --release
[[ -d ./build_apks ]] && echo "Directory already exists" || mkdir ./build_apks
mv build/app/outputs/apk/release/app-release.apk ./build_apks/gabriel-`date +%d-%m-%Y-%H-%M-%S`.apk
flutter clean