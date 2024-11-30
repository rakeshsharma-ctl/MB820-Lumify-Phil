table 50100 NewBookTable
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; No; Integer)
        {
            Caption = 'No';
            DataClassification = ToBeClassified;
        }
        field(2; BookName; Text[100])
        {
            Caption = 'Book Name';
            DataClassification = ToBeClassified;
        }
        field(3; Author; Text[50])
        {
            Caption = 'Author';
            DataClassification = ToBeClassified;
        }
        field(4; TotalPage; Integer)
        {
            Caption = 'Total Pages';
            DataClassification = ToBeClassified;
        }
        field(5; IsSellable; Boolean)
        {
            Caption = 'Is Sellable';
            DataClassification = ToBeClassified;
        }
        field(6; Instagram; Text[50])
        {
            Caption = 'Instagram ID';
            DataClassification = ToBeClassified;
        }
        field(7; BookRating; Enum "BookRating")
        {
            Caption = 'Book Rating';
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(Key1; No)
        {
            Clustered = true;
        }
    }

}