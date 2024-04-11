report 50101 "Inventory and Availability"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    Caption = 'Inventory And Availability by Items Category';
    RDLCLayout = './src/InventoryAndAvailability.rdl';
    WordLayout = './src/InventoryAndAvailability.docx';
    ExcelLayout = './src/InventoryAndAvailability.xlsx';
    DefaultLayout = Excel;
    dataset
    {
        dataitem(Item; Item)
        {
            CalcFields = Inventory, "Qty. on Purch. Order", "Qty. on Sales Order";
            column(ItemCategoryCode_Item; "Item Category Code")
            {
                IncludeCaption = true;
            }
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
            column(Availability; Inventory - "Qty. on Sales Order" + "Qty. on Purch. Order")
            {
            }

            dataitem(ItemCategory; "Item Category")
            {
                DataItemLink = code = field("Item Category Code");
                column(ItemCategoryDescription; Description)
                {
                    IncludeCaption = true;
                }
            }
        }

    }
    labels
    {
        ItemInventoryAvailability = 'Inventory and Availability, by Item Category';
        AvailabilityLbl = 'Availabimity';
    }

}