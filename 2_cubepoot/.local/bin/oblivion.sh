#!/usr/bin/env bash
#Run game or given command in environment

cd "/home/michael/.local/share/Steam/steamapps/common/Oblivion"
DEF_CMD=("/home/michael/.local/share/Steam/steamapps/common/Oblivion/OblivionLauncher.exe")
PATH="/home/michael/.local/share/Steam/steamapps/common/Proton - Experimental/:/home/michael/.local/share/Steam/steamapps/common/Proton - Experimental/files/bin/:/run/current-system/sw/bin" \
	TERM="xterm" \
	WINEDEBUG="-all" \
	WINEDLLPATH="/home/michael/.local/share/Steam/steamapps/common/Proton - Experimental/files/lib64//wine:/home/michael/.local/share/Steam/steamapps/common/Proton - Experimental/files/lib//wine" \
	LD_LIBRARY_PATH="/home/michael/.local/share/Steam/ubuntu12_64/video/:/home/michael/.local/share/Steam/ubuntu12_32/video/:/home/michael/.local/share/Steam/steamapps/common/Proton - Experimental/files/lib64/:/home/michael/.local/share/Steam/steamapps/common/Proton - Experimental/files/lib/:/usr/lib/pressure-vessel/overrides/lib/x86_64-linux-gnu/aliases:/usr/lib/pressure-vessel/overrides/lib/i386-linux-gnu/aliases" \
	WINEPREFIX="/home/michael/.local/share/Steam/steamapps/compatdata/22330/pfx/" \
        STEAM_COMPAT_DATA_PATH="/home/michael/.local/share/Steam/steamapps/compatdata/22330" \
	WINEESYNC="1" \
	WINEFSYNC="1" \
	SteamGameId="22330" \
	SteamAppId="22330" \
	WINEDLLOVERRIDES="steam.exe=b;dotnetfx35.exe=b;beclient.dll=b,n;beclient_x64.dll=b,n;d3d11=n;d3d10core=n;d3d9=n;dxgi=n" \
	STEAM_COMPAT_CLIENT_INSTALL_PATH="/home/michael/.local/share/Steam" \
	WINE_LARGE_ADDRESS_AWARE="1" \
	GST_PLUGIN_SYSTEM_PATH_1_0="/home/michael/.local/share/Steam/steamapps/common/Proton - Experimental/files/lib64/gstreamer-1.0:/home/michael/.local/share/Steam/steamapps/common/Proton - Experimental/files/lib/gstreamer-1.0" \
	WINE_GST_REGISTRY_DIR="/home/michael/.local/share/Steam/steamapps/compatdata/22330/gstreamer-1.0/" \
        steam-run proton run obse_loader.exe

