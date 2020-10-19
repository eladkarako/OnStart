@echo off
echo. >information_screen_gpu.txt

wmic DesktopMonitor >>information_screen_gpu.txt
echo. >>information_screen_gpu.txt
echo.------------------------------------------------ >>information_screen_gpu.txt
echo. >>information_screen_gpu.txt
wmic PATH Win32_videocontroller >>information_screen_gpu.txt