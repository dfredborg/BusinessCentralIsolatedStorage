table 50700 SecretSetup
{
    Caption = 'Secret Setup';
    DataClassification = SystemMetadata;

    fields
    {
        field(1; "Code"; Code[10])
        {
            Caption = 'Code';
        }
        field(2; Secret; Guid)
        {
            Caption = 'Secret';
        }
    }
    keys
    {
        key(PK; "Code")
        {
            Clustered = true;
        }
    }
}
