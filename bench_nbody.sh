JS=benches/nbody/original/nbody.js
TS=benches/nbody/fully-typed/nbody.ts

echo "- on node(V8) hermes:"
node $JS
echo

echo "- on bytecode hermes:"
./build_bytecode/bin/hermes $JS
echo

echo "- on static untyped hermes:"
./build_static/bin/shermes $JS -exec
echo 

echo "- on static typed hermes:"
./build_static/bin/shermes $TS -typed -exec
echo 

echo "- on JavaScriptCore:"
/System/Library/Frameworks/JavaScriptCore.framework/Versions/A/Helpers/jsc $JS
echo 

echo "- on quickjs:"
timeout 10 ./QuickJS/qjs $JS || echo "no result, timeout after 10s"
echo

echo