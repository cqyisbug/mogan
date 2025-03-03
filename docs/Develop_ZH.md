# 开发者文档
## 在macOS或者GNU/Linux上开发
假定你已经在mogan的源代码目录：
``` bash
mkdir build && cd build
cmake .. -DCMAKE_INSTALL_PREFIX=$HOME/software
make install -j12

```
编译安装完成之后，可以这样启动墨干：
``` bash
$HOME/software/bin/mogan.sh
```

使用`make install`，然后在单独的目录里面做开发，能够排除一些干扰。如果你对源代码比较了解，可以通过更改TEXMACS_PATH的方式，直接在源代码中更改Scheme这部分代码，不需要重新编译就可以测试你的更改。

## 在Windows上开发
我们需要在Windows上使用WSL里面的Ubuntu 20.04或者在Ubuntu 20.04上启动Windows的虚拟机。因为构建是在Ubuntu上面完成，而测试是在Windows上完成。

首先，我们需要完成MXE的下载和相关依赖的安装，可以参考这个文档：
https://texmacs.github.io/notes/docs/build-using-cmake-and-mxe-on-wsl.html

假定你已经在mogan的源代码目录：
```
rm -rf build/
./packages/windows/package.sh
```
安装完成之后，我们需要通过虚拟机和宿主机之间的文件共享，在Windows系统中启动墨干，并做测试。
