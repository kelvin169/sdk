// Copyright (c) 2018, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/*member: main:
 static=[
  testAnonymousAsync(0),
  testAnonymousAsyncStar(0),
  testAnonymousSyncStar(0),
  testAsync(0),
  testAsyncForIn(1),
  testAsyncForInTyped(1),
  testAsyncStar(0),
  testLocalAsync(0),
  testLocalAsyncStar(0),
  testLocalSyncStar(0),
  testSyncStar(0)],
 type=[inst:JSNull]
*/
main() {
  testSyncStar();
  testAsync();
  testAsyncStar();
  testLocalSyncStar();
  testLocalAsync();
  testLocalAsyncStar();
  testAnonymousSyncStar();
  testAnonymousAsync();
  testAnonymousAsyncStar();
  testAsyncForIn(null);
  testAsyncForInTyped(null);
}

/*member: testSyncStar:
 static=[
  _IterationMarker.endOfIteration(0),
  _IterationMarker.uncaughtError(1),
  _IterationMarker.yieldStar(1),
  _makeSyncStarIterable<dynamic>(1)]
*/
testSyncStar() sync* {}

/*member: testAsync:
 static=[
  StreamIterator.(1),
  _asyncAwait(2),
  _asyncRethrow(2),
  _asyncReturn(2),
  _asyncStartSync(2),
  _makeAsyncAwaitCompleter<dynamic>(0),
  _wrapJsFunctionForAsync(1)]
*/
testAsync() async {}

/*member: testAsyncStar:
 static=[
  StreamIterator.(1),
  _IterationMarker.yieldSingle(1),
  _IterationMarker.yieldStar(1),
  _asyncStarHelper(3),
  _makeAsyncStarStreamController<dynamic>(1),
  _streamOfController(1),
  _wrapJsFunctionForAsync(1)]
*/
testAsyncStar() async* {}

/*member: testLocalSyncStar:
 static=[
  _IterationMarker.endOfIteration(0),
  _IterationMarker.uncaughtError(1),
  _IterationMarker.yieldStar(1),
  _makeSyncStarIterable<Null>(1),
  computeSignature(3),
  def:local,
  getRuntimeTypeArguments(3),
  getRuntimeTypeInfo(1),
  setRuntimeTypeInfo(2)],
 type=[
  inst:Function,
  inst:JSArray<dynamic>,
  inst:JSExtendableArray<dynamic>,
  inst:JSFixedArray<dynamic>,
  inst:JSMutableArray<dynamic>,
  inst:JSUnmodifiableArray<dynamic>]
*/
testLocalSyncStar() {
  local() sync* {}
  return local;
}

/*member: testLocalAsync:
 static=[
  StreamIterator.(1),
  _asyncAwait(2),
  _asyncRethrow(2),
  _asyncReturn(2),
  _asyncStartSync(2),
  _makeAsyncAwaitCompleter<Null>(0),
  _wrapJsFunctionForAsync(1),
  computeSignature(3),
  def:local,
  getRuntimeTypeArguments(3),
  getRuntimeTypeInfo(1),
  setRuntimeTypeInfo(2)],
 type=[
  inst:Function,
  inst:JSArray<dynamic>,
  inst:JSExtendableArray<dynamic>,
  inst:JSFixedArray<dynamic>,
  inst:JSMutableArray<dynamic>,
  inst:JSUnmodifiableArray<dynamic>]
*/
testLocalAsync() {
  local() async {}
  return local;
}

/*member: testLocalAsyncStar:
 static=[
  StreamIterator.(1),
  _IterationMarker.yieldSingle(1),
  _IterationMarker.yieldStar(1),
  _asyncStarHelper(3),
  _makeAsyncStarStreamController<Null>(1),
  _streamOfController(1),
  _wrapJsFunctionForAsync(1),
  computeSignature(3),
  def:local,
  getRuntimeTypeArguments(3),
  getRuntimeTypeInfo(1),
  setRuntimeTypeInfo(2)],
 type=[
  inst:Function,
  inst:JSArray<dynamic>,
  inst:JSExtendableArray<dynamic>,
  inst:JSFixedArray<dynamic>,
  inst:JSMutableArray<dynamic>,
  inst:JSUnmodifiableArray<dynamic>]
*/
testLocalAsyncStar() {
  local() async* {}
  return local;
}

/*member: testAnonymousSyncStar:
 static=[
  _IterationMarker.endOfIteration(0),
  _IterationMarker.uncaughtError(1),
  _IterationMarker.yieldStar(1),
  _makeSyncStarIterable<Null>(1),
  computeSignature(3),
  def:<anonymous>,
  getRuntimeTypeArguments(3),
  getRuntimeTypeInfo(1),
  setRuntimeTypeInfo(2)],
 type=[
  inst:Function,
  inst:JSArray<dynamic>,
  inst:JSExtendableArray<dynamic>,
  inst:JSFixedArray<dynamic>,
  inst:JSMutableArray<dynamic>,
  inst:JSUnmodifiableArray<dynamic>]
*/
testAnonymousSyncStar() {
  return () sync* {};
}

/*member: testAnonymousAsync:
 static=[
  StreamIterator.(1),
  _asyncAwait(2),
  _asyncRethrow(2),
  _asyncReturn(2),
  _asyncStartSync(2),
  _makeAsyncAwaitCompleter<Null>(0),
  _wrapJsFunctionForAsync(1),
  computeSignature(3),
  def:<anonymous>,
  getRuntimeTypeArguments(3),
  getRuntimeTypeInfo(1),
  setRuntimeTypeInfo(2)],
 type=[
  inst:Function,
  inst:JSArray<dynamic>,
  inst:JSExtendableArray<dynamic>,
  inst:JSFixedArray<dynamic>,
  inst:JSMutableArray<dynamic>,
  inst:JSUnmodifiableArray<dynamic>]
*/
testAnonymousAsync() {
  return () async {};
}

/*member: testAnonymousAsyncStar:
 static=[
  StreamIterator.(1),
  _IterationMarker.yieldSingle(1),
  _IterationMarker.yieldStar(1),
  _asyncStarHelper(3),
  _makeAsyncStarStreamController<Null>(1),
  _streamOfController(1),
  _wrapJsFunctionForAsync(1),
  computeSignature(3),
  def:<anonymous>,
  getRuntimeTypeArguments(3),
  getRuntimeTypeInfo(1),
  setRuntimeTypeInfo(2)],
 type=[
  inst:Function,
  inst:JSArray<dynamic>,
  inst:JSExtendableArray<dynamic>,
  inst:JSFixedArray<dynamic>,
  inst:JSMutableArray<dynamic>,
  inst:JSUnmodifiableArray<dynamic>]
*/
testAnonymousAsyncStar() {
  return () async* {};
}

/*member: testAsyncForIn:dynamic=[_StreamIterator.cancel(0),_StreamIterator.current,_StreamIterator.moveNext(0)],static=[Rti._bind(1),Rti._eval(1),StreamIterator.(1),_arrayInstanceType(1),_asBoolNullable(1),_asDoubleNullable(1),_asIntNullable(1),_asNumNullable(1),_asObject(1),_asStringNullable(1),_asTop(1),_asyncAwait(2),_asyncRethrow(2),_asyncReturn(2),_asyncStartSync(2),_checkBoolNullable(1),_checkDoubleNullable(1),_checkIntNullable(1),_checkNumNullable(1),_checkObject(1),_checkStringNullable(1),_generalAsCheckImplementation(1),_generalIsTestImplementation(1),_generalTypeCheckImplementation(1),_instanceType(1),_isBool(1),_isInt(1),_isNum(1),_isObject(1),_isString(1),_isTop(1),_makeAsyncAwaitCompleter<dynamic>(0),_wrapJsFunctionForAsync(1),findType(1),instanceType(1)],type=[impl:Stream<dynamic>,inst:Closure,inst:JSBool,inst:JSNull,inst:Null]*/
testAsyncForIn(o) async {
  // ignore: UNUSED_LOCAL_VARIABLE
  await for (var e in o) {}
}

/*member: testAsyncForInTyped:dynamic=[_StreamIterator.cancel(0),_StreamIterator.current,_StreamIterator.moveNext(0)],static=[Rti._bind(1),Rti._eval(1),StreamIterator.(1),_arrayInstanceType(1),_asBoolNullable(1),_asDoubleNullable(1),_asIntNullable(1),_asNumNullable(1),_asObject(1),_asStringNullable(1),_asTop(1),_asyncAwait(2),_asyncRethrow(2),_asyncReturn(2),_asyncStartSync(2),_checkBoolNullable(1),_checkDoubleNullable(1),_checkIntNullable(1),_checkNumNullable(1),_checkObject(1),_checkStringNullable(1),_generalAsCheckImplementation(1),_generalIsTestImplementation(1),_generalTypeCheckImplementation(1),_instanceType(1),_isBool(1),_isInt(1),_isNum(1),_isObject(1),_isString(1),_isTop(1),_makeAsyncAwaitCompleter<dynamic>(0),_wrapJsFunctionForAsync(1),findType(1),instanceType(1)],type=[impl:Stream<dynamic>,impl:int,inst:Closure,inst:JSBool,inst:JSNull,inst:Null]*/
testAsyncForInTyped(o) async {
  // ignore: UNUSED_LOCAL_VARIABLE
  await for (int e in o) {}
}
