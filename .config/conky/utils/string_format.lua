#!/usr/bin/lua

function conky_format(format, number)
  return string.format(format, conky_parse(number))
end
