Connect-VIServer -Server vsphere.noname.com

Get-Content servers.txt | %{
    $vm = Get-VM -Name $_
    Get-Snapshot -VM $vm | Remove-Snapshot -Confirm:$false
    New-Snapshot -VM $vm -Name "$($vm.Name)_BEFOREPATCH" -description 'Patching' -RunAsync
}

Disconnect-VIServer -Confirm:$false 
