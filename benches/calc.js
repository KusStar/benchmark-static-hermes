function bench (lc, fc) {
  var n, fact;
  var res = 0;
  while (--lc >= 0) {
      n = fc;
      fact = n;
      while (--n > 1)
          fact *= n;
      res += fact;
  }
  return res;
}

if (typeof globalThis.print === 'undefined') {
  globalThis.print = globalThis.console.log;
}

let t1 = Date.now();
var res = bench(4e6, 100);
print(Date.now() - t1, "ms,", res);