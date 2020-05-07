/*
   YARA Rule Set
   Author: @m0rv4i
   Date: 2020-05-06
   Identifier: PoshC2 
   Reference: https://www.PoshC2.co.uk
*/

/* Rule Set ----------------------------------------------------------------- */

import "pe"

rule PoshC2 {
   meta:
      description = "PoshC2 binary"
      author = "@m0rv4i"
      reference = "https://www.PoshC2.co.uk"
      date = "2020-05-06"
   strings:
      $x1 = "dropper_cs.exe" fullword wide
      $x2 = "dropper_cs.dll" fullword wide
      $x3 = "dropper_cs_ps_v2.exe" fullword wide
      $x4 = "dropper_cs_ps_v2" fullword wide
      $x5 = "dropper_cs_ps_v4.exe" fullword wide
      $x6 = "dropper_cs_ps_v4" fullword wide
      $x7 = "C:\\Temp\\PowershellDll\\x64\\Release\\PowershellDll.pdb" fullword ascii
      $x8 = "Z:\\OPT\\PoshC2_DLLs\\SharpDLL_Public\\Release\\SharpDll.pdb" fullword ascii
      $x9 = "Z:\\OPT\\PoshC2_DLLs\\SharpRunner\\SharpRunner\\obj\\Release\\Microsoft.pdb" fullword ascii
      $x10 = "SharpDll.dll" fullword ascii
      $x11 = "NEWKEY8839394(.*)4939388YEKWEN" fullword wide
      $x12 = "KILLDATE1665(.*)5661ETADLLIK" fullword wide
      $x13 = "dropper_cs" fullword wide


      $s1 = "ImplantCore" fullword ascii
      $s2 = "[-] Error running assembly, unrecognised command: " fullword wide
      $s3 = "cmdoutput" fullword ascii
      $s4 = "multicmd" fullword wide
      $s5 = "[-] Error running assembly: " fullword wide
      $s6 = "run-exe Core.Program Core {0}" fullword wide
      $s7 = "C:\\Windows\\system32\\netsh.exe" fullword ascii
      $s8 = "GetImgData" fullword ascii
      $s9 = "run-dll" fullword wide
      $s10 = "[X] Invalid time \"{0}\"" fullword wide
      $s11 = "loadmodule" fullword wide
      $s12 = "Error: {0} {1}" fullword wide
      $s13 = "SessionID={0}" fullword wide
      $s14 = "SharpRunner" fullword wide
      $s15 = "TVqQAAMAAAAEAAAA//8AALgAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgAAAAA4fug4AtAnNIbgBTM0hVGhpcyBwcm9ncmFtIGNhbm5v" wide
      $s16 = "System.Management.Automation.Tracing.PSEtwLogProvider" fullword wide
      $s17 = "C:\\Users\\admin\\source\\repos\\PowershellRunner\\PowershellRunner\\obj\\Release\\Microsoft.pdb" fullword ascii
      $s18 = "System.Management.Automation.AmsiUtils" fullword ascii
      $s19 = "PowershellDll.dll" fullword ascii
      $s20 = "amsiInitFailed" fullword wide 
      $s21 = "$o = IEX $c | Out-String" fullword wide
      $s22 = "PowershellRunner" fullword ascii

   condition:
      uint16(0) == 0x5a4d and
      filesize < 1000KB and 
      pe.characteristics and
      (
         (1 of ($x*) and 2 of them) or
         (pe.exports("VoidFunc") and 2 of them) or 
         6 of them
      )

}