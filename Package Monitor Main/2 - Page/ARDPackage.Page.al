namespace AardvarkLabs.PackageMonitorMain;

page 50001 ARD_Package
{
    ApplicationArea = All;
    Caption = 'Package';
    PageType = Card;
    SourceTable = ARD_Package;
    UsageCategory = None;
    
    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';
                
                field("ARD_No."; Rec."ARD_No.")
                {
                }
                field(ARD_TrackerID; Rec.ARD_TrackerID)
                {
                }
                field(ARD_ScanOutDateTime; Rec.ARD_ScanOutDateTime)
                {
                }
                field(ARD_ScanInDateTime; Rec.ARD_ScanInDateTime)
                {
                }
            }
            group(Conditions)
            {
                Caption = 'Conditions';
                field(ARD_HumidityMax; Rec.ARD_HumidityMax)
                {
                }
                field(ARD_HumidityMin; Rec.ARD_HumidityMin)
                {
                }
                field(ARD_PressureMax; Rec.ARD_PressureMax)
                {
                }
                field(ARD_PressureMin; Rec.ARD_PressureMin)
                {
                }
                field(ARD_TemperatureMax; Rec.ARD_TemperatureMax)
                {
                }
                field(ARD_TemperatureMin; Rec.ARD_TemperatureMin)
                {
                }
            }
        }
    }
}
