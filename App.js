/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 *
 * @format
 * @flow strict-local
 */

import React, { Component } from "react";
import {

  StyleSheet,
  Text,
  View,
  TouchableOpacity,
  requireNativeComponent,
  UIManager,
  findNodeHandle
} from 'react-native';

import CounterView from './CounterView'

export default class App extends Component {
  state = {
    count: 1
  };


  update = e => {
    this.setState({ count: e.count })
  }
  updateNative = () => {
    this.counterRef.update(this.state.count);
  }





  increment = () => {
    this.setState({ count: this.state.count + 1 })
  }
  render() {
    return (
      <View style={styles.container}>
        <TouchableOpacity
          style={[styles.wrapper, styles.border]}
          onPress={this.increment}
          onLongPress={this.updateNative}
        >
          <Text style={styles.button}>
            {this.state.count}
          </Text>
        </TouchableOpacity>
        <CounterView style={styles.wrapper}
          count={2}
          onUpdate={this.update}
          ref={e => this.counterRef = e}
        />
      </View>
    );
  }
}
const styles = StyleSheet.create({
  container: {
    flex: 1, alignItems: "stretch"
  },
  wrapper: {
    flex: 1, alignItems: "center", justifyContent: "center"
  },
  border: {
    borderColor: "#eee", borderBottomWidth: 1
  },
  button: {
    fontSize: 50, color: "orange"
  }
});