conky.text = [[
${template0 @T.SYSTEM.LABEL.POS@ @T.SYSTEM.LABEL@}${template0 @T.OS.LABEL.POS@ @T.OS.LABEL@}
${template3 Chassis: @T.SYSTEM.CHASSIS@ Vendor: @T.SYSTEM.VENDOR@ Model: @T.SYSTEM.MODEL@}${template6 Name: @T.OS.NAME@ Kernel: @T.OS.KERNEL@ Update: @T.OS.UPDATE@}
${template0 @T.CPU.LABEL.POS@ @T.CPU.LABEL@}${template6 Host: @T.OS.HOST@ User: @T.OS.USER@ Uptime: @T.OS.UPTIME@}
${template2 Vendor: @T.CPU.VENDOR@ Model: @T.CPU.MODEL@}${template5 SHELL: @T.OS.SHELL@ TERM: @T.OS.TERM@}
${template3 Cores: @T.CPU.CORES@ Threads: @T.CPU.THREADS@ Cache: @T.CPU.CACHE@}${template6 EDITOR: @T.OS.EDITOR@ PAGER: @T.OS.PAGER@ VISUAL: @T.OS.VISUAL@}
${template3 Frequency: @T.CPU.FREQUENCY@ Base: @T.CPU.FREQUENCY.BASE@ Turbo: @T.CPU.FREQUENCY.TURBO@}${template5 Window\ System: @T.OS.WIN_SYSTEM@ Window\ Manager: @T.OS.WIN_MANAGER@}
${template1 Usage: @T.CPU.USAGE@}
${template0 @T.MEMORY.LABEL.POS@ @T.MEMORY.LABEL@}
${template3 0)\ Vendor: @T.MEMORY0.VENDOR@ Size: @T.MEMORY0.SIZE@ Type: @T.MEMORY0.TYPE@}
${template1 Speed: @T.MEMORY0.SPEED@}
${template3 2)\ Vendor: @T.MEMORY2.VENDOR@ Size: @T.MEMORY2.SIZE@ Type: @T.MEMORY2.TYPE@}
${template1 Speed: @T.MEMORY2.SPEED@}
${template3 **\ Size: @T.MEMORY.SIZE@ In\ use: @T.MEMORY.IN_USE@ Free: @T.MEMORY.FREE@}
${template0 @T.GRAPHICS.LABEL.POS@ @T.GRAPHICS.LABEL@}
${template3 Vendor: @T.GRAPHICS.VENDOR@ Model: @T.GRAPHICS.MODEL@ Memory: @T.GRAPHICS.MEMORY@}
${template0 @T.DISK.LABEL.POS@ @T.DISK.LABEL@}
${template3 0)\ Type: @T.DISK0.TYPE@ Vendor: @T.DISK0.VENDOR@ Model: @T.DISK0.MODEL@}
${template3 Interface: @T.DISK0.INTERFACE@ Size: @T.DISK0.SIZE@ Mount: @T.DISK0.MOUNT@}
${template3 FS\ size: @T.DISK0.FS.SIZE@ FS\ used: @T.DISK0.FS.USED@ FS\ free: @T.DISK0.FS.FREE@}
${template3 1)\ Type: @T.DISK1.TYPE@ Vendor: @T.DISK1.VENDOR@ Model: @T.DISK1.MODEL@}
${template3 Interface: @T.DISK1.INTERFACE@ Size: @T.DISK1.SIZE@ Mount: @T.DISK1.MOUNT@}
${template3 FS\ size: @T.DISK1.FS.SIZE@ FS\ used: @T.DISK1.FS.USED@ FS\ free: @T.DISK1.FS.FREE@}
${template0 @T.NETWORK.LABEL.POS@ @T.NETWORK.LABEL@}
${template3 Type: @T.NETWORK.TYPE@ Vendor: @T.NETWORK.VENDOR@ Model: @T.NETWORK.MODEL@}
${template2 SSID: @T.NETWORK.SSID@ Signal: @T.NETWORK.SIGNAL@}
${template3 Interface: @T.NETWORK.INTERFACE@ IP: @T.NETWORK.IP@ Gateway: @T.NETWORK.GATEWAY@}${template0 @T.PROCESS.LABEL.POS@ @T.PROCESS.LABEL@}
${template2 Download\ speed: @T.NETWORK.DOWNLOAD.SPEED@ Download\ total: @T.NETWORK.DOWNLOAD.TOTAL@}${template0 @T.PROCESS.HEADER.POS@ @T.PROCESS.HEADER@}
${template2 Upload\ speed: @T.NETWORK.UPLOAD.SPEED@ Upload\ total: @T.NETWORK.UPLOAD.TOTAL@}${template7 1}
${template0 @T.DISPLAY.LABEL.POS@ @T.DISPLAY.LABEL@}${template7 2}
${template1 Connection: @T.DISPLAY.CONNECTION@}${template7 3}
${template3 Size: @T.DISPLAY.SIZE@ Resolution: @T.DISPLAY.RESOLUTION@ Refresh\ rate: @T.DISPLAY.REFRESH_RATE@}${template7 4}
${template0 @T.THERMAL.LABEL.POS@ @T.THERMAL.LABEL@}${template7 5}
${template3 ACPI\ temp: @T.THERMAL.ACPI.TEMP@ Core\ temp: @T.THERMAL.CPU.TEMP@ CPU\ fan: @T.THERMAL.CPU.FAN.SPEED@\ -\ @T.THERMAL.CPU.FAN.PERCENT@}${template7 6}
${template0 @T.POWER.LABEL.POS@ @T.POWER.LABEL@}${template7 7}
${template1 AC\ adapter: @T.POWER.AC.CONNECTED@}${template7 8}
${template3 Battery: @T.POWER.BAT.CONNECTED@ Status: @T.POWER.BAT.STATUS@ Health: @T.POWER.BAT.HEALTH@}${template7 9}
${template1 Capacity: @T.POWER.BAT.CAPACITY@}${template7 10}
${image @T.BG@ -p 0,0}
]]
