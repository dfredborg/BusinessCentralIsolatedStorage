codeunit 50700 ClientSecret
{
    [NonDebuggable]
    procedure WriteClientSecret(secret: Text[1024]; clientId: guid)
    var
        SecretSetup: Record SecretSetup;
        SecretValue: SecretText;
    begin
        if not SecretSetup.Get() then begin
            SecretSetup.Secret := clientId;
            SecretSetup.Insert();
        end;

        SecretValue := secret;
        IsolatedStorage.Set(SecretSetup.Secret, secret);
    end;

    [NonDebuggable]
    procedure ReadClientSecret(): Text[1024]
    var
        SecretSetup: Record SecretSetup;
        SecretValue: SecretText;
        ClientSecret: Text[1024];
    begin
        SecretSetup.Get();
        IsolatedStorage.Get(SecretSetup.Secret, ClientSecret);
        exit(ClientSecret);
    end;

}
