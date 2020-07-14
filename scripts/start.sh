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
    mkdir project/next/android
    mkdir project/next/go
    mkdir project/next/ios
    mkdir project/next/linux
    mkdir project/next/macos
    mkdir project/next/web

    cp -rf runners/android_next/. project/android/
    cp -rf runners/go_next/. project/go/
    cp -rf runners/ios_next/. project/ios/
    cp -rf runners/linux_next/. project/linux/
    cp -rf runners/macos_next/. project/macos
    cp -rf runners/web_next/. project/web

    exit $?
fi

echo "unknown start command"