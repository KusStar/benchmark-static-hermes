if (typeof globalThis.print === 'undefined') {
  globalThis.print = globalThis.console.log;
}

const perf = () => {
  return Date.now()
}

let t1 = perf();
const a = Array.from("str")

a[1] = "a"

print(a.join('') + "233")
print(perf() - t1, "ms");
