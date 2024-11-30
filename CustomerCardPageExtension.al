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