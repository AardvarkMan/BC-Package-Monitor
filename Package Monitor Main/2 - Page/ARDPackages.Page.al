namespace AardvarkLabs.PackageMonitorMain;

page 50000 ARD_Packages
{
    ApplicationArea = All;
    Caption = 'Packages';
    PageType = List;
    SourceTable = ARD_Package;
    UsageCategory = Lists;
    CardPageId = ARD_Package;
    
    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("ARD_No."; Rec."ARD_No.")
                {
                }
                field(ARD_TrackerID; Rec.ARD_TrackerID)
                {
                }
                field(ARD_ScanInDateTime; Rec.ARD_ScanInDateTime)
                {
                }
                field(ARD_ScanOutDateTime; Rec.ARD_ScanOutDateTime)
                {
                }
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
