#!/bin/bash

pwd

if [ "$1" = "origin" ]; then
    cp -rf runners/origin/android project
    cp -rf runners/origin/go project
    cp -rf runners/origin/ios project
    cp -rf runners/origin/linux project
    cp -rf runners/origin/macos project
    cp -rf runners/origin/web project

    exit $?
fi

if [ "$1" = "next" ]; then
    mkdir -p project/android
    mkdir -p project/go
    mkdir -p project/ios
    mkdir -p project/linux
    mkdir -p project/macos
    mkdir -p project/web

    cp -rf runners/next/android/. project/android/
    cp -rf runners/next/go/. project/go/
    cp -rf runners/next/ios/. project/ios/
    cp -rf runners/next/linux/. project/linux/
    cp -rf runners/next/macos/. project/macos
    cp -rf runners/next/web/. project/web

    exit $?
fi

echo "unknown start command"