// Welcome to your new AL extension.
// Remember that object names and IDs should be unique across all extensions.
// AL snippets start with t*, like tpageext - give them a try and happy coding!

namespace DefaultPublisher.MyProject;

using Microsoft.Sales.Customer;

pageextension 50100 CustomerListExt extends "Customer List"
{
    trigger OnOpenPage();
    var
        FavoriteColor: Enum Color;
    begin
        FavoriteColor := Color::Yellow;
        Message('App published: Hello world %1', FavoriteColor);
    end;
}

enum 50101 Color
{
    Extensible = true;

    value(0; Green)
    {
        Caption = 'Green';
    }
    value(1; Yellow)
    {
        Caption = 'Yellow';
    }
}

enumextension 50102 colorExtension extends "Color"
{
    value(2; Red)
    {
        Caption = 'Red';
    }
}


tableextension 50117 "Social Media" extends Customer
{
    fields
    {
        field(50100; Instagram; Text[50])
        {
            Caption = 'Instagram';
            DataClassification = ToBeClassified;
        }
        field(50101; MyCustomField; Text[50])
        {
            Caption = 'MyCustomField';
            DataClassification = ToBeClassified;
        }
    }
}

pageextension 50117 "Social Media Card" extends "Customer Card"
{
    layout
    {
        addfirst(General)
        {
            field(Instagram; Rec.Instagram)
            {
                ApplicationArea = All;
            }
            field(MyCustomField; Rec.MyCustomField)
            {
                ApplicationArea = All;
            }
        }
    }
    actions
    {
        // leave it for time being
    }

}