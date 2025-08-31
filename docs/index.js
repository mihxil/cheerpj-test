const settings = {
    version: 17
}
console.log("init cheerpj", settings);
await cheerpjInit(settings);

const pref = document.location.pathname.startsWith("/cheerpj-test") ?
    "/app/cheerpj-test/" :
    "/app/";
console.log(pref);
const version = "0.1-SNAPSHOT"
const cj = await cheerpjRunLibrary(`${pref}cheerpj-test-${version}.jar`);

const Impl = await cj['org.meeuw.cheerpj.Impl']

const instance = await new Impl();

const output = document.querySelector("output");
const a = await instance.getResult();

//const b = await instance.getB();
output.textContent = `
a: ${a} (should be AB)
`
