本文旨在linux机器上编译, 不推荐windows下编译

## Native build on Linux
Ubuntu:

1. 由于ubuntu仓库的cmake版本比较老, 先自行下载源码编译并安装[cmake](https://github.com/Kitware/CMake)
``` bash
sudo apt update && sudo apt install pkg-config
```

2. Build with the following commands.

```bash
git clone https://github.com/RickyCong/unicorn2-aosp10.git && cd unicorn2-aosp10

mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release
make -j $(nproc --all)
```


## Cross build with NDK (构建安卓版本的Unicorn2)

| Android Version | SDK/API level | Version code |
|:----|:----:|:----:|
| Android 12 | 31 | 12 |
| Android 11 | 30 | 11 |
| Android 10 | 29 | 10 |
| Android 9 | 28 | Pie |
| Android 8.1 | 27 | Oreo |
| Android 8.0 | 26 | Oreo |


To build Unicorn2 on the Android platform, firstly you need to download [NDK](https://developer.android.com/ndk/downloads).

For newer NDK, please make sure your cmake version is above 3.19.

Then generate the project like:

```bash
git clone https://github.com/RickyCong/unicorn2-aosp10.git && cd unicorn2-aosp10

mkdir build; cd build;
cmake .. -DCMAKE_TOOLCHAIN_FILE=$NDK/build/cmake/android.toolchain.cmake -DANDROID_ABI=$ABI -DANDROID_NATIVE_API_LEVEL=$MINSDKVERSION
make
```

You may get the possible values from this [page](https://developer.android.com/ndk/guides/cmake).

Unicorn2 support cross-build for `armeabi-v7a`, `arm64-v8a`, `x86` and `x86_64`.

Note the build is only tested and guaranteed to work under Linux, however, other systems may still work.


## Cross build from Linux host to other architectures

This cross-builds Unicorn2 from **Linux host** to other architectures, using a cross compiler.

- Install cross compiler package. For example, cross-compile to ARM requires the below command.

```bash
sudo apt install gcc-arm-linux-gnueabihf
```

- Build Unicorn and samples with the following commands. The compiler name differs according to your targets.

```bash
mkdir build; cd build
cmake .. -DCMAKE_C_COMPILER=gcc-arm-linux-gnueabihf
make
```
