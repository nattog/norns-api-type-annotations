---@meta

--- Slot class
--- @class Slot
local Slot = {}

--- Create a new Slot
--- @param pool table The pool that owns this slot
--- @param id number The id of the slot
--- @return Slot
function Slot.new(pool, id) end

--- Release the slot
function Slot:release() end

--- Rotate allocation class
--- @class Rotate
local Rotate = {}

--- Create a new Rotate allocator
--- @param polyphony number The number of slots
--- @param slots table The list of slots
--- @return Rotate
function Rotate.new(polyphony, slots) end

--- Get the next slot in rotation
--- @return Slot
function Rotate:next() end

--- Random allocation class
--- @class Random
local Random = {}

--- Create a new Random allocator
--- @param polyphony number The number of slots
--- @param slots table The list of slots
--- @return Random
function Random.new(polyphony, slots) end

--- Get a random slot
--- @return Slot
function Random:next() end

--- LRU allocation class
--- @class LRU
local LRU = {}

--- Create a new LRU allocator
--- @param polyphony number The number of slots
--- @param slots table The list of slots
--- @return LRU
function LRU.new(polyphony, slots) end

--- Get the next slot using LRU algorithm
--- @return Slot
function LRU:next() end

--- Voice class
--- @class Voice
local Voice = {}

--- Voice mode constants
Voice.MODE_ROTATE = 1
Voice.MODE_LRU = 2
Voice.MODE_RANDOM = 3

--- Create a new Voice
--- @param polyphony number The number of slots
--- @param mode number The allocation mode
--- @return Voice
function Voice.new(polyphony, mode) end

--- Get the next available slot, possibly stealing an active slot
--- @return Slot
function Voice:get() end

--- Push a key-slot pairing
--- @param key any The key to pair with the slot
--- @param slot Slot The slot to pair with the key
function Voice:push(key, slot) end

--- Pop a slot associated with a key
--- @param key any The key to remove
--- @return Slot? The slot previously associated with the key
function Voice:pop(key) end

--- Release a slot back to the pool
--- @param slot Slot The slot to release
function Voice:release(slot) end

return Voice
