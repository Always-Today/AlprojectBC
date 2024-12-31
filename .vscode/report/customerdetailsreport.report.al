report 50101 CustomerReport
{
    ApplicationArea = All;
    Caption = 'Customer Report';

    DataItem
    {
        dataitem(Customer; CustomerTable)
        {
            columns
            {
                column(CustomerID; CustomerID)
                {
                    Caption = 'Customer ID';
                }

                column(Name; Name)
                {
                    Caption = 'Name';
                }

                column(Address; Address)
                {
                    Caption = 'Address';
                }

                column(PhoneNumber; PhoneNumber)
                {
                    Caption = 'Phone Number';
                }

                column(Email; Email)
                {
                    Caption = 'Email';
                }
            }
        }
    }

    layout
    {
        layout
        {
            rdlc = './Layouts/CustomerReport.rdlc'; 
            area(header)
            {
                label(Title)
                {
                    Caption = 'Customer Report';
                    Style = Title;
                }
            }

            area(content)
            {
                repeater(Group)
                {
                    field(CustomerID; CustomerID)
                    {
                        ApplicationArea = All;
                    }

                    field(Name; Name)
                    {
                        ApplicationArea = All;
                    }

                    field(Address; Address)
                    {
                        ApplicationArea = All;
                    }

                    field(PhoneNumber; PhoneNumber)
                    {
                        ApplicationArea = All;
                    }

                    field(Email; Email)
                    {
                        ApplicationArea = All;
                    }
                }
            }
        }
    }
}
