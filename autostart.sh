#!/bin/bash
# Check if the QuickRide server port is already in use
netstat.exe -aon | grep -q ":4000 "
if [ $? -ne 0 ]; then
    echo "🚀 Starting QuickRide frontend and backend..."
    # Run the Windows node and concurrently command in the background
    cmd.exe /c "set PATH=%PATH%;C:\\Program Files\\nodejs\\ && cd /d C:\\Users\\Admin\\Desktop\\QuickRide && npm run dev" > /dev/null 2>&1 &
    
    # Wait a few seconds for servers to initialize
    sleep 4
    
    # Launch the browser in Windows
    echo "🌐 Opening QuickRide in the browser..."
    cmd.exe /c start "http://localhost:5173"
fi
