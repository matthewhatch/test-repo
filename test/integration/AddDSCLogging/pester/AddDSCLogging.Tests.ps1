Describe "Windows Event Log Microsoft-Windows-DSC/Analytic" {
    
    $AnalyticLog = Get-WinEvent -ListLog 'Microsoft-Windows-DSC/Analytic'
    $OperationLog = Get-WinEvent -ListLog 'Microsoft-Windows-DSC/Operational'

    It "DSC Analytics Should be Enabled"{
        $AnalyticLog.IsEnabled | Should Be $true
    }

    It 'DSC Operational Log Should be Enabled'{
        $OperationLog.IsEnabled | Should Be $true
    }

    It 'DSC Operational Log Should have log mode set to AutoBackUp'{
        $OperationLog.LogMode | Should Be 'AutoBackUp'
    }

    It 'DSC Analytic Log Should not be empty'{
        (Get-WinEvent -LogName 'Microsoft-Windows-DSC/Analytic' -Oldest -ErrorAction SilentlyContinue) | Should Not Be $null
    }
}