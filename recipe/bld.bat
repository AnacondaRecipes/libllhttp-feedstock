@echo on
setlocal enabledelayedexpansion

cmake -S . -B build -G "Ninja" ^
  -DCMAKE_BUILD_TYPE=Release ^
  -DBUILD_SHARED_LIBS=ON ^
  -DCMAKE_INSTALL_PREFIX="%PREFIX%\Library" ^
  -DCMAKE_INSTALL_LIBDIR=lib

cmake --build build --parallel
cmake --install build
