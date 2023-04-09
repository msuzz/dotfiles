#!/usr/bin/env bash
#Run game or given command in environment

cd "/home/michael/ironwolf/games/Steam/steamapps/common/ARMA Cold War Assault"
DEF_CMD=("/home/michael/ironwolf/games/Steam/steamapps/common/ARMA Cold War Assault/ColdWarAssault.exe")
PATH="/home/michael/.local/share/Steam/steamapps/common/Proton - Experimental/:/home/michael/.local/share/Steam/steamapps/common/Proton - Experimental/files/bin/:/run/current-system/sw/bin" \
	TERM="xterm" \
	WINEDEBUG="-all" \
	WINEDLLPATH="/home/michael/.local/share/Steam/steamapps/common/Proton - Experimental/files/lib64//wine:/home/michael/.local/share/Steam/steamapps/common/Proton - Experimental/files/lib//wine" \
	LD_LIBRARY_PATH="/home/michael/.local/share/Steam/ubuntu12_64/video/:/home/michael/.local/share/Steam/ubuntu12_32/video/:/home/michael/.local/share/Steam/steamapps/common/Proton - Experimental/files/lib64/:/home/michael/.local/share/Steam/steamapps/common/Proton - Experimental/files/lib/:/usr/lib/pressure-vessel/overrides/lib/x86_64-linux-gnu/aliases:/usr/lib/pressure-vessel/overrides/lib/i386-linux-gnu/aliases" \
	WINEPREFIX="/home/michael/ironwolf/games/Steam/steamapps/compatdata/65790/pfx/" \
	STEAM_COMPAT_DATA_PATH="/home/michael/ironwolf/games/Steam/steamapps/compatdata/65790" \
	WINEESYNC="1" \
	WINEFSYNC="1" \
	SteamGameId="65790" \
	SteamAppId="65790" \
	WINEDLLOVERRIDES="steam.exe=b;dotnetfx35.exe=b;dotnetfx35setup.exe=b;beclient.dll=b,n;beclient_x64.dll=b,n;d3d11=n;d3d10core=n;d3d9=n;dxgi=n;d3d12=n" \
	STEAM_COMPAT_CLIENT_INSTALL_PATH="/home/michael/.local/share/Steam" \
	WINE_LARGE_ADDRESS_AWARE="1" \
	GST_PLUGIN_SYSTEM_PATH_1_0="/home/michael/.local/share/Steam/steamapps/common/Proton - Experimental/files/lib64/gstreamer-1.0:/home/michael/.local/share/Steam/steamapps/common/Proton - Experimental/files/lib/gstreamer-1.0" \
	WINE_GST_REGISTRY_DIR="/home/michael/ironwolf/games/Steam/steamapps/compatdata/65790/gstreamer-1.0/" \
	steam-run proton run fwatch.exe -nomap -nosplash -mod=@ECP
