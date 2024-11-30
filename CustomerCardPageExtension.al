// this extension is used to add fields to the customer card page
pageextension 50100 CustomerCardPageExtension extends "Customer Card"
{
    layout
    {
        addlast(General)
        {
            field("Favorite Book No"; Rec."Favorite Book No")
            {
                ApplicationArea = All;
            }
        }
    }
}