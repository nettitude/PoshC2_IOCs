# CarbonBlack Searches

This page contains some queries for CarbonBlack that can be used to hunt for PoshC2.

##### List all processes that have System.Management.Automation.dll or System.Management.Automation.ni.dll (loaded by the PowerShell implant, and potentially the C# implant if executing PowerShell) loaded that are *not* expected to (e.g. PowerShell.exe)

```
modload:System.Management.Automation* AND -process_name:powershell.exe AND –process_name:powershell_ise.exe
```
This query should be extended to remove any other legitimate process in your environment.

It can also be extended to only query processes that have the DLL loaded and have at least one network connection:

```
modload:system.management.automation* AND -process_name:powershell.exe AND -process_name:powershell_ise.exe  AND netconn_count:[1 TO *]
```

##### List some common unmanaged code processes that have MSCoreEE.dll (used by both the PowerShell and C# implants) loaded, and have at least one network connection 

```
modload:mscoree* AND (process_name:svchost.exe OR process_name:netsh.exe OR process_name:connhost.exe) AND netconn_count:[1 TO *]
```
