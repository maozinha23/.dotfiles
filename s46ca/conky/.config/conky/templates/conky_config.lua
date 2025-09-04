-- Conky, a system monitor https://github.com/brndnmtthws/conky

conky.config = {
  -- Aligned position on screen, may be none or one of:
  -- top_left (or tl)   	  top_middle (or tm)	      top_right (or tr)
  -- middle_left (or ml)	  middle_middle (or mm)	    middle_right (or mr)
  -- bottom_left (or bl)	  bottom_middle (or bm)	    bottom_right (or br)
  -- In case of panel and dock windows, it might make more sense to use one of
  -- the following aliases:
  -- Alias	    Value
  -- top	      top_middle
  -- left	      middle_left
  -- right	    middle_right
  -- bottom	    bottom_middle
  -- center	    middle_middle
  -- See also gap_x and gap_y settings.
  alignment = @C.ALIGNMENT@,

  -- Boolean value, if true, Conky will be forked to background when started.
  background = @C.BACKGROUND@,

  -- Inner border margin in pixels (the margin between the border and text).
  border_inner_margin = @C.BORDER_INNER_MARGIN@,

  -- Border width in pixels.
  border_width = @C.BORDER_WIDTH@,

  -- Predefine a color for use inside conky.text segments. Substitute N by a
  -- digit between 0 and 9, inclusively. When specifying the color value in hex,
  -- omit the leading hash (#).
  color0 = @C.COLOR0@,
  color1 = @C.COLOR1@,

  -- The number of samples to average for CPU monitoring.
  cpu_avg_samples = @C.CPU_AVG_SAMPLES@,

  -- Specify a default height for bars.
  -- Default: 6
  default_bar_height = @C.DEFAULT.BAR_HEIGHT@,

  -- Specify a default width for bars. If not specified, the default value is 0,
  -- which causes the bar to expand to fit the width of your Conky window. If
  -- you set out_to_console = true, the default value will be 10 for the text
  -- version of the bar.
  -- Default: 0
  default_bar_width = @C.DEFAULT_BAR_WIDTH@,

  -- Default color and border color.
  default_color = @C.DEFAULT_COLOR@,

  -- Use the Xdbe extension? (eliminates flicker) It is highly recommended to
  -- use own window with this one so double buffer won't be so big.
  double_buffer = @C.DOUBLE_BUFFER@,

  -- Draw borders around text.
  draw_borders = @C.DRAW_BORDERS@,

  -- Font name in X, xfontsel can be used to get a nice font.
  font = @C.FONT@,

  -- Gap, in pixels, between right or left border of screen, same as passing -x
  -- at command line, e.g. gap_x 10. For other position related stuff, see
  -- 'alignment'.
  gap_x = @C.GAP_X@,

  -- Gap, in pixels, between top or bottom border of screen, same as passing
  -- -y at command line, e.g. gap_y 10. For other position related stuff, see
  -- 'alignment'.
  gap_y = @C.GAP_Y@,

  -- Loads the Lua scripts separated by spaces.
  lua_load = @C.LUA_LOAD@,

  -- Minimum height of the window.
  minimum_height = @C.MINIMUM_HEIGHT@,

  -- Minimum width of window.
  minimum_width = @C.MINIMUM_WIDTH@,

  -- The number of samples to average for net data.
  net_avg_samples = @C.NET_AVG_SAMPLES@,

  -- Subtract (file system) buffers from used memory.
  no_buffers = @C.NO_BUFFERS@,

  -- When set to no, there will be no output in X (useful when you also use
  -- things like out_to_console). If you set it to no, make sure that it's
  -- placed before all other X-related setting (take the first line of your
  -- configfile to be sure). Default: yes
  out_to_x = @C.OUT_TO_X@,

  -- Boolean, draw conky in own window instead of drawing on root window.
  own_window = @C.OWN_WINDOW@,

  -- If own_window is set, under X11 you can specify type of window conky
  -- displayed as:
  -- normal       mode makes conky show as normal window. This mode can be
  --              configured with use of own_window_hints setting.
  -- desktop      windows are special windows that have no window decorations,
  --              are always visible on the desktop, do not appear in pager or
  --              taskbar, and are sticky across all workspaces. Many DEs
  --              include desktop windows for background, icons and desktop
  --              menu, in those cases it might be better to use normal or one
  --              of the below options, as those will cover conky when they're
  --              clicked on.
  -- dock         windows reserve space on the desktop, i.e. WMs will try their
  --              best to not place windows on top of them. They're the same
  --              as desktop in other respects, but render on top of desktop
  --              windows.
  -- panel        windows are similar to dock windows, but they also reserve
  --              space along a desktop edge (like taskbars), preventing
  --              maximized windows from overlapping them. The edge is chosen
  --              based on the alignment setting.
  -- utility      windows are persistent utility windows (e.g. a palette or
  --              toolbox). They appear on top of other windows (in the same
  --              group), but otherwise behave much like normal windows.
  -- override     windows are drawn directly on root window (desktop background)
  --              and are not under the control of the window manager. These
  --              will not work with DEs which draw desktop icons via custom
  --              panels/windows as those will cover conky. own_window_hints are
  --              ignored for override windows.
  -- To make conky mount on root window, set own_window to false.
  -- Default: normal
  -- own_window_type = (normal|desktop|dock|panel|utility|override)
  own_window_type = @C.OWN_WINDOW_TYPE@,

  -- Define a template for later use inside conky.text segments. Substitute N
  -- by a digit between 0 and 9, inclusively. The value of the variable is
  -- being inserted into the stuff inside conky.text at the corresponding
  -- position, but before some substitutions are applied:
  -- \\n -> newline
  -- \\ -> backslash
  -- \\ -> space
  -- \\N -> template argument N (starting from 1)
  template0 = @C.TEMPLATE0@,
  template1 = @C.TEMPLATE1@,
  template2 = @C.TEMPLATE2@,
  template3 = @C.TEMPLATE3@,
  template4 = @C.TEMPLATE4@,
  template5 = @C.TEMPLATE5@,
  template6 = @C.TEMPLATE6@,
  template7 = @C.TEMPLATE7@,
  template8 = @C.TEMPLATE8@,

  -- Width for $top name value (defaults to 15 characters).
  top_name_width = @TOP_NAME_WIDTH@,

  -- Update interval.
  update_interval = @C.UPDATE_INTERVAL@,

  -- Use Xft (anti-aliased font and stuff).
  use_xft = @C.USE_XFT@,
}
