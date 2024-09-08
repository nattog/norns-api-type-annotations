---@meta

--- @class Screen
--- @field font_face_count number
--- @field font_face_names string[]
--- @field BLEND_MODES { [string | number]: number }
Screen = {}

Screen.update_default = function() end
Screen.ping = function() end
Screen.update_low_battery = function() end
Screen.update = function() end

--- enable/disable anti-aliasing.
--- @param state number on(1) or off(0)
Screen.aa = function(state) end

--- clear
Screen.clear = function() end

--- set level (color/brightness).
--- @param value number 0-15 (0=off, 15=white)
Screen.level = function(value) end

--- set line width.
--- @param w number line width (in pixels, floats permitted)
Screen.line_width = function(w) end

--- set line cap style.
--- @param style string line cap style string ("butt", "round" or "square"). default is "butt".
Screen.line_cap = function(style) end

--- set line join style.
--- @param style string line join style string ("miter", "round" or "bevel"). default is "miter"
Screen.line_join = function(style) end
  
--- set miter limit.
--- @param limit number if the current line join style is set to "miter", the miter limit is used to determine whether the lines should be joined with a bevel instead of a miter. if the length of the miter divided by the line width is greater than the miter limit, the style is converted to a bevel. default value 10.
Screen.miter_limit = function(limit) end

--- move drawing position.
--- @param x number position x
--- @param y number position y
Screen.move = function(x, y) end

--- move drawing position relative to current position.
--- @param x number relative position x
--- @param y number relative position y
Screen.move_rel = function(x, y) end

--- draw line to specified point.
--- @param x number destination x
--- @param y number destination y
Screen.line = function(x,y) end

--- draw line to specified point relative to current position.
--- @param x number relative destination x
--- @param y number relative destination y
Screen.line_rel = function(x, y) end


--- draw arc.
--- @param x  number circle center x
--- @param y  number circle center y
--- @param r  number radius
--- @param angle1  number start angle
--- @param angle2  number end angle
Screen.arc = function(x, y, r, angle1, angle2) end

--- draw circle.
--- @param x  number origin x
--- @param y  number origin y
--- @param r  number radius
Screen.circle = function(x, y, r) end

--- draw rectangle.
--- @param x  number x position
--- @param y  number y position
--- @param w  number width
--- @param h  number height
Screen.rect = function(x, y, w, h) end

--- draw curve (cubic Bézier spline).
--- @param x1  number handle 1 x
--- @param y1  number handle 1 y
--- @param x2  number handle 2 x
--- @param y2  number handle 2 y
--- @param x3  number destination x
--- @param y3  number destination y
Screen.curve = function(x1, y1, x2, y2, x3, y3) end

--- draw curve (cubic Bézier spline) relative coordinates.
--- @param x1  number handle 1 x
--- @param y1  number handle 1 y
--- @param x2  number handle 2 x
--- @param y2  number handle 2 y
--- @param x3  number relative destination x
--- @param y3  number relative destination y
Screen.curve_rel = function(x1, y1, x2, y2, x3, y3) end

--- close current path.
Screen.close = function() end

--- stroke current path.
-- uses currently selected color.
-- after this call the current path will be cleared, so the 'relative' functions
-- (`move_rel`, `line_rel` and `curve_rel`) won't work - use their absolute
-- alternatives instead.
Screen.stroke = function() end

--- fill current path.
-- uses currently selected color.
-- after this call the current path will be cleared, so the 'relative' functions
-- (`move_rel`, `line_rel` and `curve_rel`) won't work - use their absolute
-- alternatives instead.
Screen.fill = function() end

--- draw text (left aligned).
-- uses currently selected font.
--- @param str string : text to write
Screen.text = function(str) end

--- draw left-aligned text, trimmed to specified width.
-- (characters are removed from end of string until it fits.)
-- uses currently selected font.
--- @param str string : text to write
--- @param w number: width 
Screen.text_trim = function(str, w) end

--- draw text (left aligned) and rotated.
-- uses currently selected font.
--- @param x number x position
--- @param y number y position
--- @param str string : text to write
--- @param degrees number : degrees to rotate
Screen.text_rotate = function(x, y, str, degrees) end

--- draw text, right aligned.
-- uses currently selected font
--- @param str string : text to write.
Screen.text_right = function(str) end

--- draw text, center aligned.
-- uses currently selected font.
--- @param str string : text to write
Screen.text_center = function(str) end

--- draw text, center aligned, and rotated.
-- uses currently selected font.
--- @param x number x position
--- @param y number y position
--- @param str string : text to write
--- @param degrees number : degress to rotate
Screen.text_center_rotate = function(x, y, str, degrees) end

--- calculate width of text given current font and draw state.
--- @param str string : text to calculate width of
--- @return number width
Screen.text_extents = function(str) end

-- get the current drawing position in the screen surface
--- @return number x
--- @return number y
Screen.current_point = function() end

--- select font face.
--- @param index number font face (see list, or Screen.font_face_names)
--
-- 1 norns (default)
-- 2 ALEPH
-- 3 Roboto Thin
-- 4 Roboto Light
-- 5 Roboto Regular
-- 6 Roboto Medium
-- 7 Roboto Bold
-- 8 Roboto Black
-- 9 Roboto Thin Italic
-- 10 Roboto Light Italic
-- 11 Roboto Italic
-- 12 Roboto Medium Italic
-- 13 Roboto Bold Italic
-- 14 Roboto Black Italic
-- 15 VeraBd
-- 16 VeraBI
-- 17 VeraIt
-- 18 VeraMoBd
-- 19 VeraMoBI
-- 20 VeraMoIt
-- 21 VeraMono
-- 22 VeraSeBd
-- 23 VeraSe
-- 24 Vera
-- 25 bmp/tom-thumb
-- 26 creep
-- 27 ctrld-fixed-10b
-- 28 ctrld-fixed-10r
-- 29 ctrld-fixed-13b
-- 30 ctrld-fixed-13b-i
-- 31 ctrld-fixed-13r
-- 32 ctrld-fixed-13r-i
-- 33 ctrld-fixed-16b
-- 34 ctrld-fixed-16b-i
-- 35 ctrld-fixed-16r
-- 36 ctrld-fixed-16r-i
-- 37 scientifica-11
-- 38 scientificaBold-11
-- 39 scientificaItalic-11
-- 40 ter-u12b
-- 41 ter-u12n
-- 42 ter-u14b
-- 43 ter-u14n
-- 44 ter-u14v
-- 45 ter-u16b
-- 46 ter-u16n
-- 47 ter-u16v
-- 48 ter-u18b
-- 49 ter-u18n
-- 50 ter-u20b
-- 51 ter-u20n
-- 52 ter-u22b
-- 53 ter-u22n
-- 54 ter-u24b
-- 55 ter-u24n
-- 56 ter-u28b
-- 57 ter-u28n
-- 58 ter-u32b
-- 59 ter-u32n
-- 60 unscii-16-full.pcf
-- 61 unscii-16.pcf
-- 62 unscii-8-alt.pcf
-- 63 unscii-8-fantasy.pcf
-- 64 unscii-8-mcr.pcf
-- 65 unscii-8.pcf
-- 66 unscii-8-tall.pcf
-- 67 unscii-8-thin.pcf
-- 68 Particle
Screen.font_face = function(index) end

--- set font size.
--- @param size number size in pixel height.
Screen.font_size = function(size) end

--- draw single pixel (requires integer x/y, fill afterwards).
--- @param x number x position
--- @param y number y position
Screen.pixel = function(x, y) end

--- export screenshot
--- @param filename string filename: saved to dust/data/(script)/(filename).png
Screen.export_screenshot = function(filename) end

--- display png
--- @param filename string
--- @param x number x position
--- @param y number y position
Screen.display_png = function(filename, x, y) end

--- load png into an image buffer
--- @param filename string
Screen.load_png = function(filename) end


--- create an image buffer
--- @param width number image witdth
--- @param height number image height
--- @return number
Screen.create_image = function(width, height) end

--- display image buffer
--- @param image number
--- @param x number x position
--- @param y number y position
Screen.display_image = function(image, x, y) end

--- display sub-region image buffer
--- @param image number
--- @param left number left inset within image
--- @param top number top inset within image
--- @param width number width from right within image
--- @param height number height from top within image
--- @param x number x position
--- @param y number y position
Screen.display_image_region = function(image, left, top, width, height, x, y) end

--- direct screen drawing within the provide function into the image instead of the screen
--- @param image number the image to draw into
--- @param func function function called to perform drawing
Screen.draw_to = function(image, func) end

--- get a rectangle of screen content. returned buffer contains one byte (valued 0 - 15) per pixel, i.e. w * h bytes
--- @param x number x position
--- @param y number y position
--- @param w number width, default 1
--- @param h number height, default 1
--- @return number, number, number, number
Screen.peek = function(x, y, w, h) end

--- set a rectangle of screen content. expected buffer contains one byte (valued 0 - 15) per pixel, i.e. w * h bytes
--- @param x number x position
--- @param y number y position
--- @param w number width
--- @param h number height
--- @param s string screen content to set
Screen.poke = function(x, y, w, h, s) end

--- rotate
--- @param r number radians
Screen.rotate = function(r) end

--- move origin position
--- @param x number position x
--- @param y number position y
Screen.translate = function(x, y) end

--- save
Screen.save = function() end

-- restore
Screen.restore = function() end

--- change screen blending mode.
--- @param index number|string index blending mode (see list), strings are case-insensitive, include '_' between words
--
-- more info at https://www.cairographics.org/operators/
--
-- there are other operators available, see the above link or use tab.print(screen.BLEND_MODES) in the REPL for the full list.
--
-- 0 Over (default)
--
-- 1 XOR: clears any overlapping pixels.
--
-- 2 Add: adds together the alpha (brightness) of overlapping pixels.
--
-- 3 Multiply: multiplies the colors of overlapping pixels, the result is always darker than the two inputs.
--
-- 4 Screen: the colors of overlapping pixels are complemented, multiplied, then their product is complimented. the result is always lighter than the two inputs.
--
-- 5 Overlay: multiplies colors if destination pixel level is >= 8, screens colors if destination pixel level is < 8.
--
-- 6 Darken: keeps the darker value of overlapping pixels.
--
-- 7 Lighten: keeps the lighter value of overlapping pixels.
--
-- 8 Color_Dodge: brightens pixels being drawn over.
--
-- 9 Color_Burn: darkens pixels being drawn over.
--
-- 10 Hard_Light: multiplies colors if source pixel level is >= 8, screens colors if source pixel level is < 8.
--
-- 11 Soft_Light: uses Darken or Lighten depending on the color of the source pixel.
--
-- 12 Difference: the result is the absolute value of the difference of the destination and source pixels.
--
-- 13 Exclusion: similar to Difference, but has lower contrast.
-- @usage -- number vs. string input
-- screen.blend_mode(0)
-- screen.blend_mode('over')
-- @usage -- case-insensitivity
-- screen.blend_mode('hard_light')
-- screen.blend_mode('hArD_lIgHt')
-- screen.blend_mode('HARD_LIGHT')
Screen.blend_mode = function(index) end

--- @param i number|boolean
--
-- if number:
-- i == 0 -> normal mode
-- i < 0 -> inverted mode
-- i > 0 -> inverted mode
--
-- if boolean:
-- false -> normal mode
-- true -> inverted mode
Screen.invert = function(i) end
  
Screen.sleep = function() end

return Screen