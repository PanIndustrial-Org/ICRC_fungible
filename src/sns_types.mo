import ICRC1 "mo:icrc1-mo/ICRC1";
module{



  public type SNSLedgerArgument = { #Upgrade : ?SNSUpgradeArgs; #Init : SNSInitArgs };

 public type Account = ICRC1.Account;

 public type SNSInitArgs = {
    decimals : ?Nat8;
    token_symbol : Text;
    transfer_fee : Nat;
    metadata : [(Text, MetadataValue)];
    minting_account : Account;
    initial_balances : [(Account, Nat)];
    fee_collector_account : ?Account;
    archive_options : ArchiveOptions;
    max_memo_length : ?Nat16;
    index_principal : ?Principal;
    token_name : Text;
    feature_flags : ?FeatureFlags;
  };

 public type ArchiveOptions = {
    num_blocks_to_archive : Nat64;
    max_transactions_per_response : ?Nat64;
    trigger_threshold : Nat64;
    more_controller_ids : ?[Principal];
    max_message_size_bytes : ?Nat64;
    cycles_for_archive_creation : ?Nat64;
    node_max_memory_size_bytes : ?Nat64;
    controller_id : Principal;
  };

 public type SNSUpgradeArgs = {
    change_archive_options : ?ChangeArchiveOptions;
    token_symbol : ?Text;
    transfer_fee : ?Nat;
    metadata : ?[(Text, MetadataValue)];
    change_fee_collector : ?ChangeFeeCollector;
    max_memo_length : ?Nat16;
    index_principal : ?Principal;
    token_name : ?Text;
    feature_flags : ?FeatureFlags;
  };

 public type ChangeArchiveOptions = {
    num_blocks_to_archive : ?Nat64;
    max_transactions_per_response : ?Nat64;
    trigger_threshold : ?Nat64;
    more_controller_ids : ?[Principal];
    max_message_size_bytes : ?Nat64;
    cycles_for_archive_creation : ?Nat64;
    node_max_memory_size_bytes : ?Nat64;
    controller_id : ?Principal;
  };

   public type MetadataValue = {
    #Int : Int;
    #Nat : Nat;
    #Blob : Blob;
    #Text : Text;
  };

   public type FeatureFlags = { icrc2 : Bool };

   public type ChangeFeeCollector = { #SetTo : Account; #Unset };

}