namespace AardvarkLabs.PackageMonitorMain;

page 50002 ARD_PackageOutAPI
{
    APIGroup = 'aardvarkLabs';
    APIPublisher = 'aardvarkLabs';
    APIVersion = 'v1.0';
    ApplicationArea = All;
    Caption = 'ardPackageOutAPI';
    DelayedInsert = true;
    EntityName = 'packageOut';
    EntitySetName = 'packagesOut';
    PageType = API;
    SourceTable = ARD_Package;
    
    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(jsonText;JSONText)
                {
                    Caption = 'JSON Text';
                    ToolTip = 'JSON representation of the package data.';
                    ApplicationArea = All;
                    Editable = false;

                    trigger OnValidate()
                    var
                        PackageHandler: Codeunit ARD_PackageJSONHandler;
                    begin
                        PackageHandler.ParsePackageOutJSON(JSONText);
                    end;
                }
            }
        }
    }

    var
        JSONText: Text;
}
