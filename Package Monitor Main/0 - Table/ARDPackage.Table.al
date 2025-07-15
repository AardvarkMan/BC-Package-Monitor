namespace AardvarkLabs.PackageMonitorMain;

table 50000 ARD_Package
{
    Caption = 'Package';
    DataClassification = ToBeClassified;
    LookupPageId = ARD_Package;
    
    fields
    {
        field(1; "ARD_No."; Integer)
        {
            Caption = 'No.';
            ToolTip = 'Unique identifier for the package.';
            DataClassification = CustomerContent;
            AutoIncrement = true;
        }
        field(2; ARD_TrackerID; Text[15])
        {
            Caption = 'Tracker ID';
            ToolTip = 'Tracking ID for the package.';
            DataClassification = CustomerContent;
        }
        field(3; ARD_ScanOutDateTime; DateTime)
        {
            Caption = 'Scan Out Date Time';
            ToolTip = 'Date and time when the package was scanned out.';
            DataClassification = CustomerContent;
        }
        field(4; ARD_ScanInDateTime; DateTime)
        {
            Caption = 'Scan In Date Time';
            ToolTip = 'Date and time when the package was scanned in.';
            DataClassification = CustomerContent;
        }
        field(5; ARD_HumidityMax; Decimal)
        {
            Caption = 'Humidity Max';
            ToolTip = 'Maximum humidity recorded for the package.';
            DataClassification = CustomerContent;
        }
        field(6; ARD_HumidityMin; Decimal)
        {
            Caption = 'Humidity Min';
            ToolTip = 'Minimum humidity recorded for the package.';
            DataClassification = CustomerContent;
        }
        field(7; ARD_PressureMax; Decimal)
        {
            Caption = 'Pressure Max';
            ToolTip = 'Maximum pressure recorded for the package.';
            DataClassification = CustomerContent;
        }
        field(8; ARD_PressureMin; Decimal)
        {
            Caption = 'Pressure Min';
            ToolTip = 'Minimum pressure recorded for the package.';
            DataClassification = CustomerContent;
        }
        field(9; ARD_TemperatureMax; Decimal)
        {
            Caption = 'Temperature Max';
            ToolTip = 'Maximum temperature recorded for the package.';
            DataClassification = CustomerContent;
        }
        field(10; ARD_TemperatureMin; Decimal)
        {
            Caption = 'Temperature Min';
            ToolTip = 'Minimum temperature recorded for the package.';
            DataClassification = CustomerContent;
        }
    }
    keys
    {
        key(PK; "ARD_No.")
        {
            Clustered = true;
        }
    }
}
