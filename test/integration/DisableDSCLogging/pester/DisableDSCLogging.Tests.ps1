Describe "Windows Event Log Microsoft-Windows-DSC/Analytic" {
    
    $AnalyticLog = Get-WinEvent -ListLog 'Microsoft-Windows-DSC/Analytic'
    $OperationLog = Get-WinEvent -ListLog 'Microsoft-Windows-DSC/Operational'

    It "DSC Analytics Should be Enabled"{
        $AnalyticLog.IsEnabled | Should Be $false
    }

    It 'DSC Operational Log Should be Enabled'{
        $OperationLog.IsEnabled | Should Be $false
    }
}