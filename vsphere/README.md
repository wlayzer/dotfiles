# Powershell for linux install
## ubuntu 18.04
./install_powershell

## ubuntu 20.04
snap install powershell --classic

How to activate PowerCLI module
pwsh
Install-Module -Name VMware.PowerCLI
Set-PowerCLIConfiguration -InvalidCertificateAction Ignore
To test is module works
Get-VICommand
