pageextension 50700 CustExt extends "Customer List"
{
    actions
    {
        addafter(General)
        {


            action(ReadClientSecret)
            {
                ApplicationArea = All;
                Caption = 'Read Client Secret';
                Image = SelectChart;

                trigger OnAction()
                var
                    ClientSecret: Codeunit ClientSecret;
                    Secret: text;
                begin
                    Secret := ClientSecret.ReadClientSecret();
                    Message('Client Secret: %1', Secret);
                end;
            }
        }
    }
}
