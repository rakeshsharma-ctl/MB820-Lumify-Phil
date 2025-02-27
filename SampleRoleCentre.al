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

    // ApplicationArea specifies which application areas this page is available in
    // Setting it to 'All' means this page will be visible and accessible in all application areas
    // Application areas help control feature visibility based on user permissions and licensing
    // Other common values include Basic, Suite, Advanced etc.
    ApplicationArea = All;

    layout
    {
        area(RoleCenter)
        {
            // The FavoriteBookPart below provides:
            // - A list view of favorite books from the NewBookTable
            // - Quick access to book details like title and author
            // - Ability to view and manage favorite book entries
            // - Real-time updates when book data changes
            // - Integration with the main role center dashboard
            // This part helps users track and manage their preferred books efficiently
            part(FavoriteBookPart; FavoriteBookList)
            {
                ApplicationArea = All;
            }
            // The Accountant Activities part below provides:
            // - Quick access to key financial tasks and reports
            // - Overview of pending accounting activities
            // - Financial KPIs and metrics
            // - Links to commonly used accounting documents
            // - Notifications about approvals and workflows
            // - Access to financial period closing activities

            // This part is already created by default in Business Central
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
    PageType = ListPart;    // This is a list part page
    SourceTable = "NewBookTable";
    ApplicationArea = All;

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                // The repeater below displays the following fields for each book entry:
                // - "Sl no": The unique identifier for the book
                // - "Book Name": The name of the book
                // - "Author": The author of the book
                // This layout helps users quickly identify and access book details and manage their favorite books.

                // You can add more fields to this repeater to display additional information about the book.
                field("Sl no"; Rec.No) { ApplicationArea = All; }
                field("Book Name"; Rec."BookName") { ApplicationArea = All; }
                field("Author"; Rec."Author") { ApplicationArea = All; }
            }
        }
    }
}