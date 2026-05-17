-- -----------------------------------------------------------------------------
-- Constants
-- -----------------------------------------------------------------------------
local COLOR_BACKGROUND = 0xff000000
local COLOR_CHESSBOARD1 = 0xff555555
local COLOR_CHESSBOARD2 = 0xffaaaaaa
local COLOR_FOREGROUND = 0xffaaaaaa
local COLOR_MARK = 0xff00aa00
local COLOR_SHADOW = 0x00000000

local GALLERY_CACHE = 100
local GALLERY_THUMB_BORDER = 5
local GALLERY_THUMB_PADDING = 5
local GALLERY_THUMB_SCALE = 1.15
local GALLERY_THUMB_SIZE = 200
local GALLERY_THUMB_SIZE_STEP = 20

local IMG_MOVE_STEP = 10
local IMG_ROTATE_CLOCKWISE = 90
local IMG_ROTATE_COUNTERCLOCKWISE = 270
local IMG_ZOOM_STEP = 0.10

local SLIDE_HISTORY = 0

local TEXT_FONT_FACE = "IBM VGA Nerd Font Mono"
local TEXT_FONT_SIZE = 18
local TEXT_PADDING = 10
local TEXT_SPACING = 0
local TEXT_STATUS_TIMEOUT = 3
local TEXT_TIMEOUT = 0

local VIEW_HISTORY = 0
local VIEW_PRELOAD = 1
-- -----------------------------------------------------------------------------
-- General config
-- -----------------------------------------------------------------------------
-- mode at startup
swayimg.set_mode("viewer")
-- anti-aliasing
-- TODO: toggle antialiasing key: 'a'
swayimg.enable_antialiasing(true)
-- window title/buttons/borders
swayimg.enable_decoration(false)
-- window overlay mode
swayimg.enable_overlay(false)
-- -----------------------------------------------------------------------------
-- Image list configuration
-- -----------------------------------------------------------------------------
-- list order
swayimg.imagelist.set_order("alpha")
-- reverse order
swayimg.imagelist.enable_reverse(false)
-- recursive directory reading
swayimg.imagelist.enable_recursive(false)
-- add adjacent files from same dir
swayimg.imagelist.enable_adjacent(true)
-- -----------------------------------------------------------------------------
-- Text overlay configuration
-- -----------------------------------------------------------------------------
-- font name
swayimg.text.set_font(TEXT_FONT_FACE)
-- font size in pixels
swayimg.text.set_size(TEXT_FONT_SIZE)
-- line spacing
swayimg.text.set_spacing(TEXT_SPACING)
-- padding from window edge
swayimg.text.set_padding(TEXT_PADDING)
-- foreground text color
swayimg.text.set_foreground(COLOR_FOREGROUND)
-- text background color
swayimg.text.set_background(COLOR_BACKGROUND)
-- text shadow color
swayimg.text.set_shadow(COLOR_SHADOW)
-- layer hide timeout
swayimg.text.set_timeout(TEXT_TIMEOUT)
-- status message hide timeout
swayimg.text.set_status_timeout(TEXT_STATUS_TIMEOUT)
-- -----------------------------------------------------------------------------
-- Image viewer mode
-- -----------------------------------------------------------------------------
-- default image scale
swayimg.viewer.set_default_scale("fit")
-- default image position
swayimg.viewer.set_default_position("center")
-- mouse button to drag image
swayimg.viewer.set_drag_button("MouseMiddle")
-- window background color
swayimg.viewer.set_window_background(COLOR_BACKGROUND)
-- chessboard (cell size, first color, second color)
swayimg.viewer.set_image_chessboard(20, COLOR_CHESSBOARD1, COLOR_CHESSBOARD2)
-- enable automatic centering
swayimg.viewer.enable_centering(true)
-- enable image list loop mode
swayimg.viewer.enable_loop(true)
-- number of images to preload
swayimg.viewer.limit_preload(VIEW_PRELOAD)
-- number of the history cache
swayimg.viewer.limit_history(VIEW_HISTORY)
-- mark icon color
swayimg.viewer.set_mark_color(COLOR_MARK)
-- top left text block scheme
swayimg.viewer.set_text("topleft", { "" })
-- top right text block scheme
swayimg.viewer.set_text("topright", { "" })
-- bottom left text block scheme
swayimg.viewer.set_text("bottomleft", { "" })
-- bottom right text block scheme
swayimg.viewer.set_text("bottomright", { "" })

-- Key and mouse bindings
-- remove bindings
swayimg.viewer.bind_reset()

-- animation: toggle
swayimg.viewer.on_key("Space", function()
  swayimg.viewer.set_animation(not swayimg.viewer.get_animation())
end)

-- animation: previous frame
swayimg.viewer.on_key("Alt-Left", function()
  swayimg.viewer.prev_frame()
end)

-- animation: next frame
swayimg.viewer.on_key("Alt-Right", function()
  swayimg.viewer.next_frame()
end)

-- exit
swayimg.viewer.on_key("Escape", function()
  swayimg.exit()
end)

swayimg.viewer.on_key("q", function()
  swayimg.exit()
end)

-- flip: horizontal
swayimg.viewer.on_key("Shift-h", function()
  swayimg.viewer.flip_horizontal()
end)

-- flip: vertical
swayimg.viewer.on_key("Shift-v", function()
  swayimg.viewer.flip_vertical()
end)

-- fullscreen: toggle
swayimg.viewer.on_key("f", function()
  swayimg.toggle_fullscreen()
end)

-- info: show
swayimg.viewer.on_key("i", function()
  -- top left text block scheme
  swayimg.viewer.set_text("topleft", {
    "File: {name}",
    "Format: {format}",
    "Size: {sizehr}",
    "Resolution: {frame.width}x{frame.height}",
    "Frame: {frame.index}/{frame.total}",
    "Scale: {scale}"
  })
  -- bottom right text block scheme
  swayimg.viewer.set_text("bottomright", { "{list.index}/{list.total}" })
  swayimg.text.show()
end)

-- info: hide
swayimg.viewer.on_key("Shift-i", function()
  swayimg.text.hide()
end)

-- mark: add
swayimg.viewer.on_key("m", function()
  swayimg.viewer.mark_image(true)
end)

-- mark: remove
swayimg.viewer.on_key("Shift-m", function()
  swayimg.viewer.mark_image(false)
end)

-- mode: gallery
swayimg.viewer.on_key("Return", function()
  swayimg.set_mode("gallery")
end)

-- mode: slideshow
swayimg.viewer.on_key("s", function()
  swayimg.set_mode("slideshow")
end)

-- move: left
swayimg.viewer.on_key("Shift-Left", function()
  local wnd = swayimg.get_window_size()
  local pos = swayimg.viewer.get_position()
  swayimg.viewer.set_abs_position(math.floor(pos.x - wnd.width / IMG_MOVE_STEP), pos.y);
end)

-- move: right
swayimg.viewer.on_key("Shift-Right", function()
  local wnd = swayimg.get_window_size()
  local pos = swayimg.viewer.get_position()
  swayimg.viewer.set_abs_position(math.floor(pos.x + wnd.width / IMG_MOVE_STEP), pos.y);
end)

-- move: up
swayimg.viewer.on_key("Shift-Up", function()
  local wnd = swayimg.get_window_size()
  local pos = swayimg.viewer.get_position()
  swayimg.viewer.set_abs_position(pos.x, math.floor(pos.y - wnd.height / IMG_MOVE_STEP));
end)

-- move: down
swayimg.viewer.on_key("Shift-Down", function()
  local wnd = swayimg.get_window_size()
  local pos = swayimg.viewer.get_position()
  swayimg.viewer.set_abs_position(pos.x, math.floor(pos.y + wnd.height / IMG_MOVE_STEP));
end)

-- reload
swayimg.viewer.on_key("r", function()
  swayimg.viewer.reload()
end)

-- reset
swayimg.viewer.on_key("Shift-R", function()
  swayimg.viewer.reset()
end)

-- rotate: clockwise
swayimg.viewer.on_key("bracketright", function()
  swayimg.viewer.rotate(IMG_ROTATE_CLOCKWISE)
end)

-- rotate: counterclockwise
swayimg.viewer.on_key("bracketleft", function()
  swayimg.viewer.rotate(IMG_ROTATE_COUNTERCLOCKWISE)
end)

-- switch: previous
swayimg.viewer.on_key("Left", function()
  swayimg.viewer.switch_image("prev")
end)

swayimg.viewer.on_mouse("MouseRight", function()
  swayimg.viewer.switch_image("prev")
end)

-- switch: next
swayimg.viewer.on_key("Right", function()
  swayimg.viewer.switch_image("next")
end)

swayimg.viewer.on_mouse("MouseLeft", function()
  swayimg.viewer.switch_image("next")
end)

-- switch: first
swayimg.viewer.on_key("Home", function()
  swayimg.viewer.switch_image("first")
end)

-- switch: last
swayimg.viewer.on_key("End", function()
  swayimg.viewer.switch_image("last")
end)

-- zoom: real
swayimg.viewer.on_key("0", function()
  swayimg.viewer.set_fix_scale("real")
end)

-- zoom: fit
swayimg.viewer.on_key("z", function()
  swayimg.viewer.set_fix_scale("fit")
end)

-- zoom: increase
swayimg.viewer.on_key("Equal", function()
  local scale = swayimg.viewer.get_scale()
  swayimg.viewer.set_abs_scale(scale + IMG_ZOOM_STEP)
end)

swayimg.viewer.on_key("Plus", function()
  local scale = swayimg.viewer.get_scale()
  swayimg.viewer.set_abs_scale(scale + IMG_ZOOM_STEP)
end)

swayimg.viewer.on_key("Shift-Plus", function()
  local scale = swayimg.viewer.get_scale()
  swayimg.viewer.set_abs_scale(scale + IMG_ZOOM_STEP)
end)

swayimg.viewer.on_key("Ctrl-Up", function()
  local scale = swayimg.viewer.get_scale()
  swayimg.viewer.set_abs_scale(scale + IMG_ZOOM_STEP)
end)

swayimg.viewer.on_mouse("Ctrl-ScrollUp", function()
  local scale = swayimg.viewer.get_scale()
  swayimg.viewer.set_abs_scale(scale + IMG_ZOOM_STEP)
end)

-- zoom: decrease
swayimg.viewer.on_key("Minus", function()
  local scale = swayimg.viewer.get_scale()
  swayimg.viewer.set_abs_scale(scale - IMG_ZOOM_STEP)
end)

swayimg.viewer.on_key("Ctrl-Down", function()
  local scale = swayimg.viewer.get_scale()
  swayimg.viewer.set_abs_scale(scale - IMG_ZOOM_STEP)
end)

swayimg.viewer.on_mouse("Ctrl-ScrollDown", function()
  local scale = swayimg.viewer.get_scale()
  swayimg.viewer.set_abs_scale(scale - IMG_ZOOM_STEP)
end)
-- -----------------------------------------------------------------------------
-- Slide show mode
-- -----------------------------------------------------------------------------
-- timeout to switch image
swayimg.slideshow.set_timeout(3)
-- default image scale
swayimg.slideshow.set_default_scale("fit")
-- window background mode
swayimg.slideshow.set_window_background(0xff000000)
-- number of the history cache
swayimg.slideshow.limit_history(SLIDE_HISTORY)
-- mark icon color
swayimg.slideshow.set_mark_color(COLOR_MARK)
-- top left text block scheme
swayimg.slideshow.set_text("topleft", { "" })
-- top right text block scheme
swayimg.slideshow.set_text("topright", { "" })
-- bottom left text block scheme
swayimg.slideshow.set_text("bottomleft", { "" })
-- bottom right text block scheme
swayimg.slideshow.set_text("bottomright", { "" })

-- Key and mouse bindings
-- remove bindings
swayimg.slideshow.bind_reset()

-- exit
swayimg.slideshow.on_key("q", function()
  swayimg.exit()
end)

-- fullscreen: toggle
swayimg.slideshow.on_key("f", function()
  swayimg.toggle_fullscreen()
end)

-- info: show
swayimg.slideshow.on_key("i", function()
  -- top left text block scheme
  swayimg.slideshow.set_text("topleft", {
    "File: {name}",
    "Format: {format}",
    "Size: {sizehr}",
    "Resolution: {frame.width}x{frame.height}",
    "Frame: {frame.index}/{frame.total}",
    "Scale: {scale}"
  })
  -- bottom right text block scheme
  swayimg.slideshow.set_text("bottomright", { "{list.index}/{list.total}" })
  swayimg.text.show()
end)

-- info: hide
swayimg.slideshow.on_key("Shift-i", function()
  swayimg.text.hide()
end)

-- mark: add
swayimg.slideshow.on_key("m", function()
  swayimg.slideshow.mark_image(true)
end)

-- mark: remove
swayimg.slideshow.on_key("Shift-m", function()
  swayimg.slideshow.mark_image(false)
end)

-- mode: viewer
swayimg.slideshow.on_key("Escape", function()
  swayimg.set_mode("viewer")
end)

swayimg.slideshow.on_key("Return", function()
  swayimg.set_mode("viewer")
end)

swayimg.slideshow.on_key("Space", function()
  swayimg.set_mode("viewer")
end)

swayimg.slideshow.on_mouse("MouseLeft", function()
  swayimg.set_mode("viewer")
end)

-- reload
swayimg.slideshow.on_key("r", function()
  swayimg.slideshow.reload()
end)

-- switch: previous
swayimg.slideshow.on_key("Left", function()
  swayimg.slideshow.switch_image("prev")
end)

-- switch: next
swayimg.slideshow.on_key("Right", function()
  swayimg.slideshow.switch_image("next")
end)

-- switch: first
swayimg.slideshow.on_key("Home", function()
  swayimg.slideshow.switch_image("first")
end)

-- switch: last
swayimg.slideshow.on_key("End", function()
  swayimg.slideshow.switch_image("last")
end)
-- -----------------------------------------------------------------------------
-- Gallery mode
-- -----------------------------------------------------------------------------
-- thumbnail aspect ratio
swayimg.gallery.set_aspect("fill")
-- thumbnail size in pixels
swayimg.gallery.set_thumb_size(GALLERY_THUMB_SIZE)
-- padding between thumbnails
swayimg.gallery.set_padding_size(GALLERY_THUMB_PADDING)
-- border size for selected thumbnail
swayimg.gallery.set_border_size(GALLERY_THUMB_BORDER)
-- border color for selected thumbnail
swayimg.gallery.set_border_color(COLOR_FOREGROUND)
-- scale for selected thumbnail
swayimg.gallery.set_selected_scale(GALLERY_THUMB_SCALE)
-- background color for selected thumbnail
swayimg.gallery.set_selected_color(COLOR_CHESSBOARD1)
-- background color for unselected thumbnail
swayimg.gallery.set_unselected_color(COLOR_CHESSBOARD1)
-- window background color
swayimg.gallery.set_window_color(COLOR_BACKGROUND)
-- number of thumbnails stored in memory
swayimg.gallery.limit_cache(GALLERY_CACHE)
-- preloading invisible thumbnails
swayimg.gallery.enable_preload(false)
-- enable persistent storage for thumbnails
swayimg.gallery.enable_pstore(false)
-- mark icon color
swayimg.gallery.set_mark_color(COLOR_MARK)
-- top left text block scheme
swayimg.gallery.set_text("topleft", { "File: {name}" })
-- top right text block scheme
swayimg.gallery.set_text("topright", { "" })
-- bottom left text block scheme
swayimg.gallery.set_text("bottomleft", { "" })
-- bottom right text block scheme
swayimg.gallery.set_text("bottomright", { "{list.index}/{list.total}" })

-- Key and mouse bindings
-- remove bindings
swayimg.gallery.bind_reset()

-- exit
swayimg.gallery.on_key("Escape", function()
  swayimg.exit()
end)

swayimg.gallery.on_key("q", function()
  swayimg.exit()
end)

-- fullscreen: toggle
swayimg.gallery.on_key("f", function()
  swayimg.toggle_fullscreen()
end)

-- mark: add
swayimg.gallery.on_key("m", function()
  swayimg.gallery.mark_image(true)
end)

-- mark: remove
swayimg.gallery.on_key("Shift-m", function()
  swayimg.gallery.mark_image(false)
end)

-- mode: viewer
swayimg.gallery.on_key("Return", function()
  swayimg.set_mode("viewer")
end)

swayimg.gallery.on_mouse("MouseLeft", function()
  swayimg.set_mode("viewer")
end)

-- size: default
swayimg.gallery.on_key("0", function()
  swayimg.gallery.set_thumb_size(GALLERY_THUMB_SIZE)
end)

-- size: increase
swayimg.gallery.on_key("Equal", function()
  local thumb = swayimg.gallery.get_thumb_size()
  swayimg.gallery.set_thumb_size(thumb + GALLERY_THUMB_SIZE_STEP)
end)

swayimg.gallery.on_key("Plus", function()
  local thumb = swayimg.gallery.get_thumb_size()
  swayimg.gallery.set_thumb_size(thumb + GALLERY_THUMB_SIZE_STEP)
end)

swayimg.gallery.on_key("Shift-Plus", function()
  local thumb = swayimg.gallery.get_thumb_size()
  swayimg.gallery.set_thumb_size(thumb + GALLERY_THUMB_SIZE_STEP)
end)

swayimg.gallery.on_key("Ctrl-Up", function()
  local thumb = swayimg.gallery.get_thumb_size()
  swayimg.gallery.set_thumb_size(thumb + GALLERY_THUMB_SIZE_STEP)
end)

swayimg.gallery.on_mouse("Ctrl-ScrollUp", function()
  local thumb = swayimg.gallery.get_thumb_size()
  swayimg.gallery.set_thumb_size(thumb + GALLERY_THUMB_SIZE_STEP)
end)

-- size: decrease
swayimg.gallery.on_key("Minus", function()
  local thumb = swayimg.gallery.get_thumb_size()
  swayimg.gallery.set_thumb_size(thumb - GALLERY_THUMB_SIZE_STEP)
end)

swayimg.gallery.on_key("Ctrl-Down", function()
  local thumb = swayimg.gallery.get_thumb_size()
  swayimg.gallery.set_thumb_size(thumb - GALLERY_THUMB_SIZE_STEP)
end)

swayimg.gallery.on_mouse("Ctrl-ScrollDown", function()
  local thumb = swayimg.gallery.get_thumb_size()
  swayimg.gallery.set_thumb_size(thumb - GALLERY_THUMB_SIZE_STEP)
end)

-- switch: left
swayimg.gallery.on_key("Left", function()
  swayimg.gallery.switch_image("left")
end)

-- switch: right
swayimg.gallery.on_key("Right", function()
  swayimg.gallery.switch_image("right")
end)

-- switch: up
swayimg.gallery.on_key("Up", function()
  swayimg.gallery.switch_image("up")
end)

-- switch: down
swayimg.gallery.on_key("Down", function()
  swayimg.gallery.switch_image("down")
end)

-- switch: first
swayimg.gallery.on_key("Home", function()
  swayimg.gallery.switch_image("first")
end)

-- switch: last
swayimg.gallery.on_key("End", function()
  swayimg.gallery.switch_image("last")
end)

-- switch: page up
swayimg.gallery.on_key("Prior", function()
  swayimg.gallery.switch_image("pgup")
end)

swayimg.gallery.on_mouse("ScrollUp", function()
  swayimg.gallery.switch_image("pgup")
end)

-- switch: page down
swayimg.gallery.on_key("Next", function()
  swayimg.gallery.switch_image("pgdown")
end)

swayimg.gallery.on_mouse("ScrollDown", function()
  swayimg.gallery.switch_image("pgdown")
end)
