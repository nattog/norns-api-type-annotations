---@meta

---@class Util
util = {}

--- wrap an integer to a positive min/max range
---@param name string
---@return string
function util.acronym(name) end

--- wrap an integer to a positive min/max range
---@param n number
---@param min number
---@param max number
---@return number
function util.wrap(n, min, max) end

--- wrap an integer to a positive min/max range but clamp the min
---@param n number
---@param min number
---@param max number
---@return number
function util.wrap_max(n, min, max) end

--- get system time in fractional seconds
---@return number
function util.time() end

--- scan directory, return file list
---@param directory string
---@return string[] fileList
function util.scandir(directory) end

--- check if file exists
---@param name string
---@return boolean
function util.file_exists(name) end

--- query file size
---@param name string
---@return number
function util.file_size(name) end

--- make directory (with parents as needed)
---@param path string
---@return boolean success
function util.make_dir(path) end

--- execute os command, capture output
---@param cmd string
---@param raw boolean
---@return string result
function util.os_capture(cmd, raw) end

--- string begins with
---@param s string
---@param start string
---@return boolean
function util.string_starts(s, start) end

--- trim string to a display width
---@param s string
---@param width number
---@return string
function util.trim_string_to_width(s, width) end

--- clamp values to min/max
---@param n number
---@param min number
---@param max number
---@return number
function util.clamp(n, min, max) end

--- convert a linear range to an exponential range
---@param slo number
---@param shi number
---@param dlo number
---@param dhi number
---@param f number
---@return number
function util.linexp(slo, shi, dlo, dhi, f) end

--- map a linear range to another linear range
---@param slo number
---@param shi number
---@param dlo number
---@param dhi number
---@param f number
---@return number
function util.linlin(slo, shi, dlo, dhi, f) end

--- convert an exponential range to a linear range
---@param slo number
---@param shi number
---@param dlo number
---@param dhi number
---@param f number
---@return number
function util.explin(slo, shi, dlo, dhi, f) end

--- map an exponential range to another exponential range
---@param slo number
---@param shi number
---@param dlo number
---@param dhi number
---@param f number
---@return number
function util.expexp(slo, shi, dlo, dhi, f) end

--- round to a multiple of a number
---@param number number
---@param quant number
---@return number
function util.round(number, quant) end

--- round up to a multiple of a number
---@param number number
---@param quant number
---@return number
function util.round_up(number, quant) end

--- format string, seconds to h:m:s
---@param s number
---@return string
function util.s_to_hms(s) end

--- convert degrees to radians
---@param degrees number
---@return number
function util.degs_to_rads(degrees) end

--- convert radians to degrees
---@param radians number
---@return number
function util.rads_to_degs(radians) end

return util
