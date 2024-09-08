---@meta

--- UI class
--- @class UI
--- @field __index__ UI
UI = {}

-------- Pages --------
--- @class Pages
--- @field __index__ Pages
UI.Pages = {}

--- Create a new Pages object.
--- @param index number Selected page, defaults to 1.
--- @param num_pages number Total number of pages, defaults to 3.
--- @return Pages
function UI.Pages.new(index, num_pages) end

--- Set selected page.
--- @param index number Page number.
function UI.Pages:set_index(index) end

--- Set selected page using delta.
--- @param delta number Number to move from selected page.
--- @param wrap boolean Boolean, true to wrap pages.
function UI.Pages:set_index_delta(delta, wrap) end
  
--- Redraw Pages.
--- Call when changed.
function UI.Pages:redraw() end

-------- Tabs --------

--- Tabs
--- @class Tabs
--- @field __index__ Tabs
UI.Tabs = {}

--- Create a new Pages object.
--- @param index number Selected page, defaults to 1.
--- @param titles string[]  Table of strings for tab titles
--- @return Tabs
function UI.Tabs.new(index, titles) end

--- Set selected tab.
--- @param index number Tab number.
function UI.Tabs:set_index(index) end

--- Set selected page using delta.
--- @param delta number Number to move from selected page.
--- @param wrap boolean Boolean, true to wrap pages.
function UI.Tabs:set_index_delta(delta, wrap) end

--- Redraw Tabs.
--- Call when changed.
function UI.Tabs:redraw() end

-------- List --------

--- List
--- @class List
--- @field __index__ List
UI.List = {}

--- Create a new List object.
--- @param x number X position, defaults to 0.
--- @param y number Y position, defaults to 0.
--- @param index number Selected entry, defaults to 1.
--- @param entries string[] Table of strings for list entries.
--- @return List Instance of List.
function UI.List.new(x, y, index, entries) end

--- Set selected entry.
--- @param index number Entry number.
function UI.List:set_index(index) end

--- Set selected list using delta.
--- @param delta number Number to move from selected entry.
--- @param wrap boolean Boolean, true to wrap list.
function UI.List:set_index_delta(delta, wrap) end
  
--- Set selected list's active state.
--- @param state boolean Boolean, true for active.
function UI.List:set_active(state) end
  
--- Redraw List.
--- Call when changed.
function UI.List:redraw() end


-------- ScrollingList --------

--- ScrollingList
--- @class ScrollingList
--- @field __index__ ScrollingList
UI.ScrollingList = {}

--- Create a new ScrollingList object.
--- @param x number X position, defaults to 0.
--- @param y number Y position, defaults to 0.
--- @param index number Selected entry, defaults to 1.
--- @param entries string[] Table of strings for list entries.
--- @return ScrollingList Instance of ScrollingList.
function UI.ScrollingList.new(x, y, index, entries) end

--- Set selected entry.
--- @param index number Entry number.
function UI.ScrollingList:set_index(index) end

--- Set selected scrolling list using delta.
--- @param delta number Number to move from selected entry.
--- @param wrap boolean Boolean, true to wrap list.
function UI.ScrollingList:set_index_delta(delta, wrap) end

--- Set selected scrolling list's active state.
--- @param state boolean Boolean, true for active.
function UI.ScrollingList:set_active(state) end

--- Redraw ScrollingList.
--- Call when changed.
function UI.ScrollingList:redraw() end

-------- Message --------

--- Message
--- @class Message
UI.Message = {}

--- Create a new Message object.
--- @param text_array string[] Array of lines of text.
--- @return Message Instance of Message.
function UI.Message.new(text_array) end

--- Set message's active state.
--- @param state boolean Boolean, true for active.
function UI.Message:set_active(state) end

--- Redraw Message.
-- Call when changed.
function UI.Message:redraw() end


-------- Slider --------

--- Slider
--- @class Slider
UI.Slider = {}

--- Create a new Slider object.
--- @param x number X position, defaults to 0.
--- @param y number Y position, defaults to 0.
--- @param width number Width of slider, defaults to 3.
--- @param height number Height of slider, defaults to 36.
--- @param value number Current value, defaults to 0.
--- @param min_value number Minimum value, defaults to 0.
--- @param max_value number Maximum value, defaults to 1.
--- @param markers table Array of marker positions.
--- @param direction string the direction of the slider "up" (defult), down, left, right
--- @return Slider Instance of Slider.
function UI.Slider.new(x, y, width, height, value, min_value, max_value, markers, direction) end

--- Set value.
--- @param number number Value number.
function UI.Slider:set_value(number) end

--- Set value using delta.
--- @param delta number Number.
function UI.Slider:set_value_delta(delta) end

--- Set marker position.
--- @param id number Marker number.
--- @param position number Marker position number.
function UI.Slider:set_marker_position(id, position) end

--- Set slider's active state.
--- @param state boolean Boolean, true for active.
function UI.Slider:set_active(state) end

--- Redraw Slider.
-- Call when changed.
function UI.Slider:redraw() end


-------- Dial --------

--- Dial
--- @class Dial
UI.Dial = {}
UI.Dial.__index = UI.Dial

--- Create a new Dial object.
--- @param x number X position, defaults to 0.
--- @param y number Y position, defaults to 0.
--- @param size number Diameter of dial, defaults to 22.
--- @param value number Current value, defaults to 0.
--- @param min_value number Minimum value, defaults to 0.
--- @param max_value number Maximum value, defaults to 1.
--- @param rounding number Sets precision to round value to, defaults to 0.01.
--- @param start_value number Sets where fill line is drawn from, defaults to 0.
--- @param markers table Array of marker positions.
--- @param units string String to display after value text.
--- @param title string String to be displayed instead of value text.
--- @return Dial Instance of Dial.
function UI.Dial.new(x, y, size, value, min_value, max_value, rounding, start_value, markers, units, title) end

--- Set value.
--- @param number number Value number.
function UI.Dial:set_value(number) end

--- Set value using delta.
--- @param delta number Number.
function UI.Dial:set_value_delta(delta) end

--- Set marker position.
--- @param id number Marker number.
--- @param position number Marker position number.
function UI.Dial:set_marker_position(id, position) end

--- Set dial's active state.
--- @param state boolean Boolean, true for active.
function UI.Dial:set_active(state) end

--- Redraw Dial.
-- Call when changed.
function UI.Dial:redraw() end


-------- PlaybackIcon --------

--- PlaybackIcon
--- @class PlaybackIcon
UI.PlaybackIcon = {}

--- Create a new PlaybackIcon object.
--- @param x number X position, defaults to 0.
--- @param y number Y position, defaults to 0.
--- @param size number Icon size, defaults to 6.
--- @param status number Status number. 1 = Play, 2 = Reverse Play, 3 = Pause, 4 = Stop. Defaults to 1.
--- @return PlaybackIcon Instance of PlaybackIcon.
function UI.PlaybackIcon.new(x, y, size, status) end

--- Set PlaybackIcon's status.
--- @param status number Status number. 1 = Play, 2 = Reverse Play, 3 = Pause, 4 = Stop.
function UI.PlaybackIcon:set_status(status) end

--- Set PlaybackIcon's active state.
--- @param state boolean Boolean, true for active.
function UI.PlaybackIcon:set_active(state) end

--- Redraw PlaybackIcon.
-- Call when changed.
function UI.PlaybackIcon:redraw() end

return UI