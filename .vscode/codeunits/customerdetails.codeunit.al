codeunit 50102 CustomerXMLImport
{
    Caption = 'Customer XML Import';
    Subtype = Normal;

    trigger OnRun()
    var
        XMLDoc: XmlDocument;
        NodeList: XmlNodeList;
        Node: XmlNode;
        Customer: Record CustomerTable;
    begin
        XMLDoc.Load('CustomerImport.xml'); // Specify the file path
        NodeList := XMLDoc.DocumentElement.SelectNodes('Customers/Customer');

        foreach Node in NodeList do begin
            Customer.Init();
            Customer."CustomerID" := Node.SelectSingleNode('CustomerID').InnerText;
            Customer.Name := Node.SelectSingleNode('Name').InnerText;
            Customer.Address := Node.SelectSingleNode('Address').InnerText;
            Customer."PhoneNumber" := Node.SelectSingleNode('PhoneNumber').InnerText;
            Customer.Email := Node.SelectSingleNode('Email').InnerText;
            Customer.Insert();
        end;
    end;
}
