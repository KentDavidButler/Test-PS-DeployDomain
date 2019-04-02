if($hyperv.State -eq "Enabled")
{
    if(



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


}
