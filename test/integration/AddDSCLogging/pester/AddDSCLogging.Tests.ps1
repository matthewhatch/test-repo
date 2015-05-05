Describe "Windows Event Log Microsoft-Windows-DSC/Analytic" {
    
    $AnalyticsLog = Get-WinEvent -ListLog 'Microsoft-Windows-DSC/Analytic'

    It "Should be Enabled"{
        $AnalyticsLog.IsEnabled | Should Be $true
    }

    It 'Should have log size of 5111800' {
        $AnalyticsLog.MaximumSizeInBytes | Should Be '5111800'
    }

    It 'Should have log mode set to AutoBackUp'{
        $AnalyticsLog.LogMode = 'AutoBackUp'
    }
}