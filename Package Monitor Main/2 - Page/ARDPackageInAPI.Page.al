namespace AardvarkLabs.PackageMonitorMain;

page 50003 ARD_PackageInAPI
{
    APIGroup = 'aardvarkLabs';
    APIPublisher = 'aardvarkLabs';
    APIVersion = 'v1.0';
    ApplicationArea = All;
    Caption = 'ardPackageInAPI';
    DelayedInsert = true;
    EntityName = 'packageIn';
    EntitySetName = 'packagesIn';
    PageType = API;
    SourceTable = ARD_Package;
    
    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(ardNo; Rec."ARD_No.")
                {
                }
                field(ardTrackerID; Rec.ARD_TrackerID)
                {
                }
                field(ardScanOutDateTime; Rec.ARD_ScanOutDateTime)
                {
                }
                field(ardScanInDateTime; Rec.ARD_ScanInDateTime)
                {
                }
                field(ardHumidityMax; Rec.ARD_HumidityMax)
                {
                }
                field(ardHumidityMin; Rec.ARD_HumidityMin)
                {
                }
                field(ardPressureMax; Rec.ARD_PressureMax)
                {
                }
                field(ardPressureMin; Rec.ARD_PressureMin)
                {
                }
                field(ardTemperatureMax; Rec.ARD_TemperatureMax)
                {
                }
                field(ardTemperatureMin; Rec.ARD_TemperatureMin)
                {
                }
                field(jsonText;JSONText)
                {
                    Caption = 'JSON Text';
                    ToolTip = 'JSON representation of the package data.';
                    ApplicationArea = All;
                    Editable = false;

                    trigger OnValidate()
                    var
                        Package: Record ARD_Package;
                        PackageHandler: Codeunit ARD_PackageJSONHandler;
                    begin
                        Package := PackageHandler.ParsePackageInJSON(JSONText);
                        CurrPage.SetRecord(Package);
                    end;
                }
            }
        }
    }

    var
        JSONText: Text;
}
