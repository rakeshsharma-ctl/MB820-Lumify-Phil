tableextension 50100 CustomerBookExtention extends Customer
{
    fields
    {
        field(50100; "Favorite Book No"; Code[20])
        {
            Caption = 'Favorite Book No';
            DataClassification = ToBeClassified;
        }
        field(50101; "Instagram"; Text[50])
        {
            Caption = 'Instagram ID';
            DataClassification = ToBeClassified;
        }
        field(50102; "MyCustomField"; Text[50])
        {
            Caption = 'MyCustomField';
            DataClassification = ToBeClassified;
        }
    }
}