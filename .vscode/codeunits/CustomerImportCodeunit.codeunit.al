codeunit 50101 CustomerImportCodeunit
{
    Caption = 'Customer Import Codeunit';

    procedure ImportCustomers(FilePath: Text)
    var
        CustomerImportXmlport: Xmlport CustomerImportXmlport;
        InStream: InStream;
        FileManagement: Codeunit "File Management";
    begin
        // Check if the file exists
        if not FileManagement.FileExists(FilePath) then
            Error('The specified file does not exist.');

        // Open the file as an input stream
        FileManagement.BLOBImportFromServerFile(FilePath, '', InStream);

        // Import the records using the XMLport
        CustomerImportXmlport.SetSource(InStream);
        CustomerImportXmlport.IMPORT;

        Message('Customers imported successfully!');
    end;
}
