page 50100 CustomerPage
{
    PageType = Card;
    ApplicationArea = All;
    SourceTable = CustomerTable;
    Caption = 'Customer Card';

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';

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

    actions
    {
        area(processing)
        {
        }

        area(reporting)
        {
        }
    }
}