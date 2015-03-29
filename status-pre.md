###操作集：
  1. 控制器：①发送指令于各个节点。②接收各个节点的指令③遍历各个节点信息（获取状态）
  2. 子节点：①获取来自控制器的指令。②发送本身的状态给控制器。


###数据量：
Switch:
  1. Led1:{name:"led1", switch:0/1}
  2. Curtain:{name:"curtain", switch:0/1}
  3. Screen:{name:"screen", switch:0/1}
  4. Tap_water:{name:"tap_water", value:0/1}
  5. Projector:{name:"projector", value:0/1}
  6. Camara:{name:"camara", value:0/1}

Step:
  6. LED2:{name:"led2", switch_value:0/1, controller:"up"/"down"/"stay"}
  7. LED3:{name:"led3", switch_value:0/1, controller:"red"/"green"/"blue"}
  8. Sound:{name:"sound", switch_value:0/1, controller:"up"/"down"/"stay"}

Generic:
  9. Access Control:{name:"access", timestamp:?, data:?}
  10. Gas:{name:"gas",  timestamp:?, data:?}
  11. TV:{name:"tv", switch_value, sound_value, channel_value}
  12. Air Conditioner:{name:"conditioner", switch_value, channel_value}

http://icoolpy.com/
