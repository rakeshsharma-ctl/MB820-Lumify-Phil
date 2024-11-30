page 50112 FavoriteBookRoleCenter
{
    PageType = RoleCenter;
    ApplicationArea = All;

    layout
    {
        area(RoleCenter)
        {
            part(FavoriteBookPart; FavoriteBookList)
            {
                ApplicationArea = All;
            }
        }
    }
}

page 50102 FavoriteBookList
{
    PageType = ListPart;
    SourceTable = "NewBookTable";
    ApplicationArea = All;

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("Book Name"; Rec."BookName") { ApplicationArea = All; }
                field("Author"; Rec."Author") { ApplicationArea = All; }
            }
        }
    }

}