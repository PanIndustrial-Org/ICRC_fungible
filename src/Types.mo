import ICPTypes "ICPTypes";

module {
  public type MintFromICPArgs = {
    source_subaccount: ?[Nat8];
    target: ?ICPTypes.Account;
    amount : Nat;
  };
}