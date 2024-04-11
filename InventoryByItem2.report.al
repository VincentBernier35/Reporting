report 50100 InventoryByReport2
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    Caption = 'InventoryByReport2';
    RDLCLayout = './src/InventoryByReport2.rdl';
    WordLayout = './src/InventoryByReport2.docx';
    DefaultLayout = word;

    dataset
    {
        dataitem(Item; Item)
        {
            column(No_Item; "No.")
            {
                IncludeCaption = true;
            }
            column(Description_Item; Description)
            {
                IncludeCaption = true;
            }
            column(Inventory_Item; Inventory)
            {
                IncludeCaption = true;
            }
        }
    }
}