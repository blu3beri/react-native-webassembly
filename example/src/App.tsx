import * as React from 'react';

import { StyleSheet, View, Text } from 'react-native';

import { res, wasmRes } from 'react-native-webassembly';

export default function App() {
  return (
    <View style={{ flex: 1, justifyContent: 'center', alignItems: 'center' }}>
      <Text>Wasm response: {wasmRes}</Text>
    </View>
  );
}
