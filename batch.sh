echo

echo "- on node(V8) hermes:"
node $1
echo

echo "- on bytecode hermes:"
./build_bytecode/bin/hermes $1
echo

echo "- on static untyped hermes:"
./build_static/bin/shermes $1 -exec
echo 

echo "- on static typed hermes:"
./build_static/bin/shermes $1 -typed -exec
echo 

echo "- on JavaScriptCore:"
/System/Library/Frameworks/JavaScriptCore.framework/Versions/A/Helpers/jsc $1
echo 

echo "- on quickjs:"
timeout 10 ./QuickJS/qjs $1 || echo "no result, timeout after 10s"
echo

echo