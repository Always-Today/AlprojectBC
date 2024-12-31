xmlport 50100 CustomerImportXmlport
{
    Caption = 'Customer Import XMLport';
    Format = XmlFormat::Excel;
    Direction = Import;
    TableSeparator = FileFormat::Excel;

    schema
    {
        // Root element
        node(Customer; Table 50100 "CustomerTable")
        {
            field(CustomerID; CustomerID);
            field(Name; Name);
            field(Address; Address);
            field(PhoneNumber; PhoneNumber);
            field(Email; Email);
        }
    }
}
