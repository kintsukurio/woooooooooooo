@ECHO OFF

:: When setting the memory below make sure to include the amount of ram letter. M = MB, G = GB. Don't use 5GB for example, it's 5G ::

:: This is 64-bit memory ::
set mem=4G

:: Don't edit past this point ::

if $SYSTEM_os_arch==x86 (
  echo OS is 32-bit
) else (
  echo OS is 64-bit
      java -server -Xmx%mem% -XX:+UseG1GC -Xms4G -Dsun.rmi.dgc.server.gcInterval=2147483646 -XX:+UnlockExperimentalVMOptions -XX:G1NewSizePercent=20 -XX:G1ReservePercent=20 -XX:MaxGCPauseMillis=50 -XX:G1HeapRegionSize=32M -Dfml.queryResult=confirm -jar forge-1.12.2-14.23.5.2847-universal.jar nogui
)
PAUSE
