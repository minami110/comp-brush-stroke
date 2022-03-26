@ECHO off

@REM RME Licenses
set "foundry_LICENSE=5060@localhost"
set "solidangle_LICENSE=5061@localhost"

@REM Katana Specific
set "KATANA_ROOT=%ProgramFiles%/Katana4.5v2/"
set "KATANA_USD_ROOT=%KATANA_ROOT%plugins/Resources/Usd/"
set "PATH=%KATANA_USD_ROOT%lib;%KATANA_USD_ROOT%plugin/Libs;%PATH%"

@REM for live rendering
set "KATANA_CATALOG_RECT_UPDATE_BUFFER_SIZE=1"

@REM arnold
set "DEFAULT_RENDERER=arnold"
set "KTOA_ROOT=%userprofile%/ktoa/ktoa-4.0.0.3-kat4.5-windows"
set "PATH=%KTOA_ROOT%/bin;%PATH%"
set "KATANA_RESOURCES=%KTOA_ROOT%;%KTOA_USD_ROOT%/plugin;%KTOA_ROOT%/USD/KatanaUsdArnold;%KATANA_RESOURCES%"
set "FNPXR_PLUGINPATH=%KTOA_ROOT%/USD/Viewport;%FNPXR_PLUGINPATH%"
set "PYTHONPATH=%KTOA_USD_ROOT%/lib/python;%PYTHONPATH%"

@REM my osl library for arnold
set "ARNOLD_PLUGIN_PATH=%userprofile%/osl;%ARNOLD_PLUGIN_PATH%"

@REM OCIO
set "OCIO=%userprofile%/Documents/ocio/aces_1.2/config.ocio"

@REM Nuke path for Nuke Bridge
set "KATANA_NUKE_EXECUTABLE=%ProgramFiles%/Nuke13.1v3/Nuke13.1.exe"

@REM start katana or open project if found .katana file in same directory.
"%KATANA_ROOT%bin/katanaBin.exe" --batch --katana-file="%~dp0stroke-challenge.katana" -t 1-180
