tableextension 50100 ApprovalUserSetupExt extends "User Setup"
{
    fields
    {
        field(80100; "Unlimited Custom Approval"; Boolean)
        {
            Caption = 'Unlimited Custom Approval';

            trigger OnValidate()
            begin
                if "Unlimited Custom Approval" then
                    "Custom Request Amt Apprv Limit" := 0;
            end;
        }
        field(80101; "Custom Request Amt Apprv Limit"; Integer)
        {
            BlankZero = true;
            Caption = 'Custom Request Amount Approval Limit';

            trigger OnValidate()
            begin
                if "Unlimited Custom Approval" and ("Custom Request Amt Apprv Limit" <> 0) then
                    Error(Text003, FieldCaption("Custom Request Amt Apprv Limit"), FieldCaption("Unlimited Custom Approval"));
                if "Custom Request Amt Apprv Limit" < 0 then
                    Error(Text005);
            end;
        }
    }

    var
        Text003: Label 'You cannot have both a %1 and %2. ';
        Text005: Label 'You cannot have approval limits less than zero.';
}
