const os = require('os');

const isWindows = os.platform() === "win32";
const isLinux = os.platform() === "linux";

module.exports = {
  isWindows,
  isLinux,
};