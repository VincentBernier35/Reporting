report 50103 DatasetJoin
{
    UsageCategory = Administration;
    ApplicationArea = All;
    RDLCLayout = './src/DatasetExamples/DatasetJoin.rdl';

    dataset
    {
        dataitem(Vendor; Vendor)
        {
            // PrintOnlyIfDetail = true;
            column(Name_Vendor; Name)
            {
            }
            column(No_Vendor; "No.")
            {
            }
            dataitem(VendorLedgerEntry; "Vendor Ledger Entry")
            {
                DataItemLink = "Vendor No." = field("No.");

                column(VendorNo_VendorLedgerEntry; "Vendor No.")
                {
                }
                column(PostingDate_VendorLedgerEntry; "Posting Date")
                {
                }
                column(Amount_VendorLedgerEntry; Amount)
                {
                }
            }
        }
    }
}