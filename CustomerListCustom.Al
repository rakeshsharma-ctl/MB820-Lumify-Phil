// this profile is used to add fields to the customer list page
profile BookProfile
{
    Description = 'Book Profile';
    Caption = 'Book Profile';
    RoleCenter = "Order Processor Role Center";
    Customizations = MyCustomization;
}

pagecustomization MyCustomization customizes "Customer List"
{
    layout
    {
        modify("Responsibility Center")
        {
            Visible = false;
        }
    }
}