configuration AddDSCLogging{
    param(
            [string]$NodeName = 'localhost'
        )
    Import-DSCResource -ModuleName xWinEventLog

    Node $NodeName{
        xWinEventLog DSCLogs{
            LogName             = "Microsoft-Windows-DSC/Analytic"
            IsEnabled           = $true
            MaximumSizeInBytes  = '5111800'
            LogMode             = 'AutoBackup'
        }    
    }
}
