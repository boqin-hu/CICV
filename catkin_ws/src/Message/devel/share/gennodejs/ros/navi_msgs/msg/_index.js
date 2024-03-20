
"use strict";

let TimeStamp = require('./TimeStamp.js');
let NaviHmi = require('./NaviHmi.js');
let Point2D = require('./Point2D.js');
let VehHeader = require('./VehHeader.js');
let VehStatus = require('./VehStatus.js');
let NaviTask = require('./NaviTask.js');
let NaviTaskStatus = require('./NaviTaskStatus.js');
let WifiInfo = require('./WifiInfo.js');
let VehPosition = require('./VehPosition.js');
let NavParas = require('./NavParas.js');
let SysInfo = require('./SysInfo.js');
let StationPoint = require('./StationPoint.js');
let NavPose = require('./NavPose.js');

module.exports = {
  TimeStamp: TimeStamp,
  NaviHmi: NaviHmi,
  Point2D: Point2D,
  VehHeader: VehHeader,
  VehStatus: VehStatus,
  NaviTask: NaviTask,
  NaviTaskStatus: NaviTaskStatus,
  WifiInfo: WifiInfo,
  VehPosition: VehPosition,
  NavParas: NavParas,
  SysInfo: SysInfo,
  StationPoint: StationPoint,
  NavPose: NavPose,
};
