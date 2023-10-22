# Benchmark Static Hermes

About Static Hermes, check [Static Hermes: the Next Generation of Hermes - Tzvetan Mikov | React Native EU 2023](https://www.youtube.com/watch?v=q-xKYA0EO-c), [Static Hermes (React Native EU 2023 Announcement)
](https://speakerdeck.com/tmikov2023/static-hermes-react-native-eu-2023-announcement), [facebook/hermes - static_h branch](https://github.com/facebook/hermes/tree/static_h)

This repo make comparison between Static Hermes and other JS engines.

- V8(Node.js)
- JavaScriptCore(JavaScriptCore.framework)
- QuickJS
- previous bytecode hermes

## Run

Only run on macOS.

```shell
git clone https://github.com/kusstar/benchmark-static-hermes.git
cd benchmark-static-hermes
git submodule update --init --recursive
```

```shell
sh build.sh
```

```shell
sh bench.sh
```

## Result

The running time only calculate the time of executing JS code, not include precompile time or engine initial setup time.

Run on MacBook Pro 2021 M1 PRO 16GB.

Check [bench.sh](bench.sh) and [benches/](benches/) for more detail.

|                       | base.js | calc.js | json.js | md5.js | nbody.js |
|-----------------------|---------|---------|---------|--------|----------|
| V8                    | 0ms     | 410ms   | 354ms   | 198ms  | 35ms     |
| JavaScriptCore        | 0ms     | 271ms   | 153ms   | 179ms  | 35ms     |
| quickjs               | 0ms     | 6101ms  | timeout | 3381ms | 1150ms   |
| bytecode hermes       | 0ms     | 2085ms  | 648ms   | 2027ms | 841ms    |
| static untyped hermes | 0ms     | 2334ms  | 546ms   | 2504ms | 555ms    |
| static typed hermes   | 0ms     | 4ms     | 520ms   | 2263ms | 53ms     |
