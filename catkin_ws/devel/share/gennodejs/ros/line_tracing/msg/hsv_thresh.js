// Auto-generated. Do not edit!

// (in-package line_tracing.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class hsv_thresh {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.k_size = null;
      this.e_size = null;
      this.d_size = null;
      this.lowH = null;
      this.highH = null;
      this.lowS = null;
      this.highS = null;
      this.lowV = null;
      this.highV = null;
    }
    else {
      if (initObj.hasOwnProperty('k_size')) {
        this.k_size = initObj.k_size
      }
      else {
        this.k_size = 0;
      }
      if (initObj.hasOwnProperty('e_size')) {
        this.e_size = initObj.e_size
      }
      else {
        this.e_size = 0;
      }
      if (initObj.hasOwnProperty('d_size')) {
        this.d_size = initObj.d_size
      }
      else {
        this.d_size = 0;
      }
      if (initObj.hasOwnProperty('lowH')) {
        this.lowH = initObj.lowH
      }
      else {
        this.lowH = 0;
      }
      if (initObj.hasOwnProperty('highH')) {
        this.highH = initObj.highH
      }
      else {
        this.highH = 0;
      }
      if (initObj.hasOwnProperty('lowS')) {
        this.lowS = initObj.lowS
      }
      else {
        this.lowS = 0;
      }
      if (initObj.hasOwnProperty('highS')) {
        this.highS = initObj.highS
      }
      else {
        this.highS = 0;
      }
      if (initObj.hasOwnProperty('lowV')) {
        this.lowV = initObj.lowV
      }
      else {
        this.lowV = 0;
      }
      if (initObj.hasOwnProperty('highV')) {
        this.highV = initObj.highV
      }
      else {
        this.highV = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type hsv_thresh
    // Serialize message field [k_size]
    bufferOffset = _serializer.uint8(obj.k_size, buffer, bufferOffset);
    // Serialize message field [e_size]
    bufferOffset = _serializer.uint8(obj.e_size, buffer, bufferOffset);
    // Serialize message field [d_size]
    bufferOffset = _serializer.uint8(obj.d_size, buffer, bufferOffset);
    // Serialize message field [lowH]
    bufferOffset = _serializer.uint8(obj.lowH, buffer, bufferOffset);
    // Serialize message field [highH]
    bufferOffset = _serializer.uint8(obj.highH, buffer, bufferOffset);
    // Serialize message field [lowS]
    bufferOffset = _serializer.uint8(obj.lowS, buffer, bufferOffset);
    // Serialize message field [highS]
    bufferOffset = _serializer.uint8(obj.highS, buffer, bufferOffset);
    // Serialize message field [lowV]
    bufferOffset = _serializer.uint8(obj.lowV, buffer, bufferOffset);
    // Serialize message field [highV]
    bufferOffset = _serializer.uint8(obj.highV, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type hsv_thresh
    let len;
    let data = new hsv_thresh(null);
    // Deserialize message field [k_size]
    data.k_size = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [e_size]
    data.e_size = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [d_size]
    data.d_size = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [lowH]
    data.lowH = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [highH]
    data.highH = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [lowS]
    data.lowS = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [highS]
    data.highS = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [lowV]
    data.lowV = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [highV]
    data.highV = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'line_tracing/hsv_thresh';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0a5aabfc8bbb0749ec67edd76bf4b306';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 k_size
    uint8 e_size
    uint8 d_size
    uint8 lowH
    uint8 highH
    uint8 lowS
    uint8 highS
    uint8 lowV
    uint8 highV
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new hsv_thresh(null);
    if (msg.k_size !== undefined) {
      resolved.k_size = msg.k_size;
    }
    else {
      resolved.k_size = 0
    }

    if (msg.e_size !== undefined) {
      resolved.e_size = msg.e_size;
    }
    else {
      resolved.e_size = 0
    }

    if (msg.d_size !== undefined) {
      resolved.d_size = msg.d_size;
    }
    else {
      resolved.d_size = 0
    }

    if (msg.lowH !== undefined) {
      resolved.lowH = msg.lowH;
    }
    else {
      resolved.lowH = 0
    }

    if (msg.highH !== undefined) {
      resolved.highH = msg.highH;
    }
    else {
      resolved.highH = 0
    }

    if (msg.lowS !== undefined) {
      resolved.lowS = msg.lowS;
    }
    else {
      resolved.lowS = 0
    }

    if (msg.highS !== undefined) {
      resolved.highS = msg.highS;
    }
    else {
      resolved.highS = 0
    }

    if (msg.lowV !== undefined) {
      resolved.lowV = msg.lowV;
    }
    else {
      resolved.lowV = 0
    }

    if (msg.highV !== undefined) {
      resolved.highV = msg.highV;
    }
    else {
      resolved.highV = 0
    }

    return resolved;
    }
};

module.exports = hsv_thresh;
