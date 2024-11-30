page 50100 BookCard
{
    PageType = Card;
    SourceTable = NewBookTable;

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';
                field(No; Rec.No)
                {
                    ApplicationArea = All;
                }
                field(BookName; Rec.BookName)
                {
                    ApplicationArea = All;
                }
            }
            group(Details)
            {
                Caption = 'Details';
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
                field(InstagramID; Rec.Instagram)
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