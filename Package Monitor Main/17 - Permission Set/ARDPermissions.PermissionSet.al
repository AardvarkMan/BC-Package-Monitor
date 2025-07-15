namespace AardvarkLabs;

using AardvarkLabs;
using AardvarkLabs.PackageMonitorMain;

permissionset 50000 ARD_Permissions
{
    Assignable = true;
    Caption = 'AardvarkLabs Permissions', MaxLength = 30;
    Permissions = 
        tabledata ARD_Package=RIMD,
        table ARD_Package=X,
        page ARD_Package=X,
        page ARD_Packages=X;
}