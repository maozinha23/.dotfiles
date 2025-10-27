conky.text = [[
${template0 @T.SYSTEM.LABEL.POS@ @T.SYSTEM.LABEL@}${template0 @T.PROCESS.LABEL.POS@ @T.PROCESS.LABEL@}
${template3 Chassis: @T.SYSTEM.CHASSIS@ Vendor: @T.SYSTEM.VENDOR@ Model: @T.SYSTEM.MODEL@}${template0 @T.PROCESS.HEADER.POS@ @T.PROCESS.HEADER@}
${template0 @T.CPU.LABEL.POS@ @T.CPU.LABEL@}${template7 1}
${template3 Vendor: @T.CPU.VENDOR@ Model: @T.CPU.MODEL@ Cores/Threads: @T.CPU.CORES.THREADS@}${template7 2}
${template8 Usage: @T.CPU.USAGE@ @T.CPU.USAGE.BAR@ @T.CPU.USAGE.PERC@}${template7 3}
${template0 @T.MEMORY.LABEL.POS@ @T.MEMORY.LABEL@}${template7 4}
${template3 Type: @T.MEMORY.TYPE@ Size: @T.MEMORY.SIZE@ Speed: @T.MEMORY.SPEED@}${template7 5}
${template8 In\ use: @T.MEMORY.IN_USE@ @T.MEMORY.IN_USE.BAR@ @T.MEMORY.IN_USE.PERC@}${template7 6}
${template0 @T.GRAPHICS.LABEL.POS@ @T.GRAPHICS.LABEL@}${template7 7}
${template3 Vendor: @T.GRAPHICS.VENDOR@ Model: @T.GRAPHICS.MODEL@ Memory: @T.GRAPHICS.MEMORY@}${template7 8}
${template0 @T.DISK.LABEL.POS@ @T.DISK.LABEL@}${template7 9}
${template3 Device: @T.DISK.DEVICE@ Disk\ size: @T.DISK.SIZE@ FS\ size: @T.DISK.FS.SIZE@}${template7 10}
${template8 FS\ used: @T.DISK.FS.USED@ @T.DISK.FS.USED.BAR@ @T.DISK.FS.USED.PERC@}
${template0 @T.NETWORK.LABEL.POS@ @T.NETWORK.LABEL@}
${template3 Type: @T.NETWORK.WIFI.TYPE@ Interface: @T.NETWORK.WIFI.INTERFACE@ IP: @T.NETWORK.WIFI.IP@}
${template8 SSID: @T.NETWORK.WIFI.SSID@ @T.NETWORK.WIFI.SIGNAL.BAR@ @T.NETWORK.WIFI.SIGNAL.PERC@}
${template2 Download\ speed: @T.NETWORK.WIFI.DOWNLOAD.SPEED@ Download\ total: @T.NETWORK.WIFI.DOWNLOAD.TOTAL@}
${template2 Upload\ speed: @T.NETWORK.WIFI.UPLOAD.SPEED@ Upload\ total: @T.NETWORK.WIFI.UPLOAD.TOTAL@}
${template0 @T.DISPLAY.LABEL.POS@ @T.DISPLAY.LABEL@}
${template1 Connection: @T.DISPLAY.CONNECTION@}
${template3 Size: @T.DISPLAY.SIZE@ Resolution: @T.DISPLAY.RESOLUTION@ Refresh\ rate: @T.DISPLAY.REFRESH_RATE@}
${template0 @T.THERMAL.LABEL.POS@ @T.THERMAL.LABEL@}
${template3 ACPI\ temp: @T.THERMAL.ACPI.TEMP@ Core\ temp: @T.THERMAL.CPU.TEMP@ CPU\ fan: @T.THERMAL.CPU.FAN.SPEED@\ -\ @T.THERMAL.CPU.FAN.PERCENT@}
${template0 @T.POWER.LABEL.POS@ @T.POWER.LABEL@}
${template1 AC\ adapter: @T.POWER.AC.CONNECTED@}
${template3 Battery: @T.POWER.BAT.CONNECTED@ Status: @T.POWER.BAT.STATUS@ Health: @T.POWER.BAT.HEALTH@}
${template8 Capacity: @T.POWER.BAT.CAPACITY@ @T.POWER.BAT.CAPACITY.BAR@ @T.POWER.BAT.CAPACITY.PERC@}
${template0 @T.OS.LABEL.POS@ @T.OS.LABEL@}
${template3 Name: @T.OS.NAME@ Kernel: @T.OS.KERNEL@ Update: @T.OS.UPDATE@}
${template3 Host: @T.OS.HOST@ User: @T.OS.USER@ Uptime: @T.OS.UPTIME@}
${template2 Shell: @T.OS.SHELL@ Terminal: @T.OS.TERM@}
${template3 Editor: @T.OS.EDITOR@ Pager: @T.OS.PAGER@ Visual: @T.OS.VISUAL@}
${template2 Window\ system: @T.OS.WIN_SYSTEM@ Window\ manager: @T.OS.WIN_MANAGER@}
${image @T.BG@ -p 0,0}
]]
