#!/bin/sh
pictures=$(xdg-user-dir PICTURES)
cd ${pictures}
scrot "$@"
exit 0
