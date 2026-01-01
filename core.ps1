$rule = "{7F3A9C21-4D8B-4C11-AE92-9A14F2C6B901}"

$status = (Get-NetFirewallRule -DisplayName $rule).Enabled

if ($status -eq "True") {
    Disable-NetFirewallRule -DisplayName $rule
} else {
    Enable-NetFirewallRule -DisplayName $rule
}
