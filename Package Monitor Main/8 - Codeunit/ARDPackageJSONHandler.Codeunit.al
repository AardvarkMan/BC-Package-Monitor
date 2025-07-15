namespace AardvarkLabs.PackageMonitorMain;

codeunit 50000 ARD_PackageJSONHandler
{
    // Create an Outbound Package tracking from JSON
    procedure ParsePackageOutJSON(JSONText: Text): Record "ARD_Package"
    var
        Package: Record ARD_Package;
    begin
        Package := ParsePackageJSON(JSONText);
        Package."ARD_No." := 0; // Reset ARD_No. to 0
        Package.ARD_ScanOutDateTime := CurrentDateTime();
        Package.ARD_ScanInDateTime := 0DT; // Set ARD_ScanInDateTime to 0D for new packages
        Package.ARD_HumidityMax := 0; // Initialize to 0
        Package.ARD_HumidityMin := 0; // Initialize to 0
        Package.ARD_PressureMax := 0; // Initialize to 0
        Package.ARD_PressureMin := 0; // Initialize to 0
        Package.ARD_TemperatureMax := 0; // Initialize to 0
        Package.ARD_TemperatureMin := 0; // Initialize to 0
        Package.Insert();
        
        exit(Package);
    end;

    // Record the data from an inbound package
    procedure ParsePackageInJSON(JSONText: Text): Record "ARD_Package"
    var
        Package: Record ARD_Package;
        FoundPackage: Record ARD_Package;
    begin
        Package := ParsePackageJSON(JSONText);
        FoundPackage.SetRange(ARD_TrackerID, Package.ARD_TrackerID);
        FoundPackage.SetRange(ARD_ScanInDateTime, 0DT); // Ensure we only update packages that have not been scanned in
        if FoundPackage.FindFirst() then begin
            FoundPackage.ARD_HumidityMax := Package.ARD_HumidityMax;
            FoundPackage.ARD_HumidityMin := Package.ARD_HumidityMin;
            FoundPackage.ARD_PressureMax := Package.ARD_PressureMax;
            FoundPackage.ARD_PressureMin := Package.ARD_PressureMin;
            FoundPackage.ARD_TemperatureMax := Package.ARD_TemperatureMax;
            FoundPackage.ARD_TemperatureMin := Package.ARD_TemperatureMin;
            FoundPackage.ARD_ScanInDateTime := CurrentDateTime();
            FoundPackage.Modify();
        end;

        exit(FoundPackage);
    end;

    Local procedure ParsePackageJSON(JSONText: Text): Record "ARD_Package"
    var
        Package: Record "ARD_Package";
        JsonObject: JsonObject;
    begin
        // Initialize the JSON object
        JsonObject.ReadFrom(JSONText);

        // Parse the JSON fields into the ARD_Package record
        Package."ARD_No." := 0;
        Package.ARD_TrackerID := CopyStr(JsonObject.GetText('id'), 1, 15);
        Package.ARD_HumidityMax := JsonObject.GetDecimal('hMax', true);
        Package.ARD_HumidityMin := JsonObject.GetDecimal('hMin', true);
        Package.ARD_PressureMax := JsonObject.GetDecimal('pMax', true);
        Package.ARD_PressureMin := JsonObject.GetDecimal('pMin', true);
        Package.ARD_TemperatureMax := JsonObject.GetDecimal('tMax', true);
        Package.ARD_TemperatureMin := JsonObject.GetDecimal('tMin', true);

        exit(Package);
    end;
}
