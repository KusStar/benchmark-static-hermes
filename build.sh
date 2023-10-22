echo "Building all binaries, please wait..."

echo "Building bytecode hermes"
cd hermes && git checkout main && cd -
cmake -S hermes -B build_bytecode -G Ninja -DCMAKE_BUILD_TYPE=Release
cmake --build ./build_bytecode

echo "Building static hermes"
cd hermes && git checkout static_h && cd -
cmake -S hermes -B build_static -G Ninja -DCMAKE_BUILD_TYPE=Release
cmake --build ./build_static

echo "Building QuickJS"
cd QuickJS && make && cd -

echo
echo "Built all binaries"