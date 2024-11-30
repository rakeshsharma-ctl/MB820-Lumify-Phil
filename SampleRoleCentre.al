//put the id 50112 in launch json file to run this page

// Role Centers in Business Central serve as personalized home pages for different user roles.
// They provide:
// - A dashboard-like interface tailored to specific job functions
// - Quick access to frequently used data and tasks
// - Role-specific activities, notifications, and reports
// - Customizable layouts to improve user productivity
// - Integration of different page types like List Parts, Activity Groups, and Charts
// This Role Center focuses on book management functionality while including standard
// accounting activities for a combined view of books and financial data.

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
            part(Accountant; "Accountant Activities")
            {
                ApplicationArea = All;
                Visible = true;
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
                field("Sl no"; Rec.No) { ApplicationArea = All; }
                field("Book Name"; Rec."BookName") { ApplicationArea = All; }
                field("Author"; Rec."Author") { ApplicationArea = All; }
            }
        }
    }
}