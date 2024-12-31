pageextension 50102 CustomerListExt extends "Customer List"
{
    actions
    {
        addlast(Processing)
        {
            action(ImportCustomers)
            {
                Caption = 'Import Customers';
                Image = Import;

                trigger OnAction()
                var
                    CustomerImportCodeunit: Codeunit 50101 "CustomerImportCodeunit";
                    FileDialog: Dialog;
                    SelectedFilePath: Text;
                begin
                    // Open file dialog to select an Excel file
                    if FileDialog.OpenFile('Select Excel File', '', 'Excel Files|*.xlsx', SelectedFilePath) then begin
                        CustomerImportCodeunit.ImportCustomers(SelectedFilePath);
                    end else
                        Message('No file selected.');
                end;
            }
        }
    }
}
