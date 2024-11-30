// put the id 50101 in launch json file to run this page
// this page is used to list all the books

page 50101 BookList
{
    Caption = 'List of Books';
    PageType = List;
    SourceTable = NewBookTable;
    CardPageId = BookCard;
    Editable = false;

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field(No; 'No')
                {
                    ApplicationArea = All;
                }
                field(BookName; Rec.BookName)
                {
                    ApplicationArea = All;
                }
                field(Author; Rec.Author)
                {
                    ApplicationArea = All;
                }
                field(TotalPage; Rec.TotalPage)
                {
                    ApplicationArea = All;
                }
                field(IsSellable; Rec.IsSellable)
                {
                    ApplicationArea = All;
                }
                field(BookRating; Rec.BookRating)
                {
                    ApplicationArea = All;
                }
            }
        }

    }
}