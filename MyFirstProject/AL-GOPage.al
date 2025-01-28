/// <summary>
/// PageExtension ApprovalUserSetupExt (ID 50101) extends Record Approval User Setup.
/// </summary>
pageextension 50101 ApprovalUserSetupExt extends "Approval User Setup"
{
    layout
    {
        addafter("Request Amount Approval Limit")
        {
            field("Unlimited Custom Approval"; Rec."Unlimited Custom Approval")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Unlimited Custom Approval field.';
            }
            field("Custom Request Amt Apprv Limit"; Rec."Custom Request Amt Apprv Limit")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Custom Request Amount Approval Limit field.';
            }
        }
    }
    
}
