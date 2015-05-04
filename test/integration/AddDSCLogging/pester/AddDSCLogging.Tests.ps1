Describe "Windows Event Log Microsoft-Windows-DSC/Analytic" {
    It "Should be Enabled"{
        $AnalyticsLog = Get-WinEvent 'Microsoft-Windows-DSC/Analytic'
        $AnalyticsLog.IsEnabled | Should Be $true
    }
}