if($hyperv.State -eq "Enabled")
{

    #some point we'll need to check for virtual switch
    if(Get-VM -isnot null)
    {
        #check perameters of machine
        #OS, isDomain, isFW-Enabled
    }
    else
    {
        $NIC = Get-VMSwitch | Select-Object -First 1
        $GetVMSwitchName = $NIC.Name
        New-VM -Name TestWin10VM -MemoryStartupBytes 4GB -BootDevice VHD -NewVHDPath .\VMs\Win10.vhdx -Path .\VMData -NewVHDSizeBytes 20GB -Generation 2 -Switch $GetVMSwitchName
        #create new VM
        #need to determin what to create
        #a DC with domain? a simple win 10 os? remember babysteps over leaps and bounds
    }

}
Else
{
    Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V -All
}




if(1 -eq 2)
{
#This section is to add bits of code that may be helpfull later

#Comparrison opperators (-eq -ne  -gt  -ge  -lt  -le)
#Comparrison Matching (-like  -notlike  -match  -notmatch (match and not match use regex pattern))
#Containment           (-contains  -notcontains  -in  -notin)
#replacement          (-replace (replaces a string pattern))
#type                 ( -is  -isnot (checks if object are same type))



#Commands
#Get-WindowsFeatures (returns all availalbe features for machine as well as their PS name and if they are installed or not)

#Install-WindowsFeature -Name AD-Domain-Services -IncludeManagementTools  (install AD Domain services, good idea to check for admin account prior to this)

#Get-VMSwitch  * | Format-Table Name (gets list of virt switches)

#Below command to create new VM, with name Win10Vm, that allocates 4GB to memeory and creates a new VirtHD and a path to where the HD exists on parent machine.
#New-VM -Name Win10VM -MemoryStartupBytes 4GB -BootDevice VHD -NewVHDPath .\VMs\Win10.vhdx -Path .\VMData -NewVHDSizeBytes 20GB -Generation 2 -Switch ExternalSwitch  
}
