configuration AddDSCLogging{
    param(
            [string]$NodeName = 'localhost'
        )
    Import-DSCResource -ModuleName xWinEventLog

    Node $NodeName{
        xWinEventLog DSCLogs{
            LogName             = "Microsoft-Windows-DSC/Analytic"
            IsEnabled           = $true
        }

        xWinEventLog DSCOperational{
            LogName = 'Microsoft-Windows-DSC/Operational'
            IsEnabled = $true
            LogMode = 'AutoBackup'
        }    
    }
}
