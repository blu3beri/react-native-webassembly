import { NativeModules } from 'react-native';

const module = NativeModules.Webassembly;
export const res = module.install();
if (!res) {
  throw Error('Unable to install the turboModule: Webassembly');
}

// @ts-ignore
export const wasmRes = global.wasm_res;
