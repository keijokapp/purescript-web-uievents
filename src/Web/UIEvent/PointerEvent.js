"use strict";

exports.screenX = function (e) {
  return e.screenX;
};

exports.screenY = function (e) {
  return e.screenY;
};

exports.clientX = function (e) {
  return e.clientX;
};

exports.clientY = function (e) {
  return e.clientY;
};

exports.pageX = function (e) {
  return e.pageX;
};

exports.pageY = function (e) {
  return e.pageY;
};

exports.ctrlKey = function (e) {
  return e.ctrlKey;
};

exports.shiftKey = function (e) {
  return e.shiftKey;
};

exports.altKey = function (e) {
  return e.altKey;
};

exports.metaKey = function (e) {
  return e.metaKey;
};

exports.button = function (e) {
  return e.button;
};

exports._relatedTarget = function (e) {
  return e.relatedTarget;
};

exports.buttons = function (e) {
  return e.buttons;
};

exports.getModifierState = function (s) {
  return function (e) {
    return function () {
      return e.getModifierState(s);
    };
  };
};

exports.pointerId = function (e) {
  return e.pointerId;
}

exports.width = function (e) {
  return e.width;
}

exports.height = function (e) {
  return e.height;
}

exports.pressure = function (e) {
  return e.pressure;
}

exports.tangentialPressure = function (e) {
  return e.tangentialPressure;
}

exports.tiltX = function (e) {
  return e.tiltX;
}

exports.tiltY = function (e) {
  return e.tiltY;
}

exports.twist = function (e) {
  return e.twist;
}

exports.pointerType = function (e) {
  return e.pointerType;
}

exports.isPrimary = function (e) {
  return e.isPrimary;
}
