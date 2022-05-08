@echo off
color D
title Pinger
                        
echo ===== Pinger By Andrei920#2180 =====
set /p IP="Host: "
:top
PING -n 1 %IP% | FIND "TTL="
IF ERRORLEVEL 1 (SET in=0b & echo Downed.)
color %in%
ping -t 2 0 10 127.0.0.1 >nul
GoTo top