report 50102 DatasetUnion
{
    UsageCategory = Administration;
    ApplicationArea = All;

    RDLCLayout = './src/DatasetExamples/DatastUnion.rdl';


    dataset
    {
        dataitem(Vendor; Vendor)
        {
            column(No_Vendor; "No.")
            {
            }
            column(Name_Vendor; Name)
            {
            }
        }
        dataitem(Customer; Customer)
        {
            column(No_Customer; "No.")
            {
            }
            column(Name_Customer; Name)
            {
            }
        }
    }
}