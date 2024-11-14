#!/usr/bin/bash
pictures=$(xdg-user-dir PICTURES)
cd ${pictures}
scrot "$@"
exit 0
