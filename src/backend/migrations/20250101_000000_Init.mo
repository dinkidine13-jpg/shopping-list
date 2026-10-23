import Array "mo:core/Array";
import Principal "mo:core/Principal";
import Runtime "mo:core/Runtime";
import Text "mo:core/Text";
import Map "mo:core/Map";
import Iter "mo:core/Iter";
import Nat "mo:core/Nat";
import Char "mo:core/Char";

// Generated initial migration: seeds all stable actor state on a fresh
// install. Actor type definitions are inlined so this frozen chain entry
// does not drift if the actor's types change in a later version.
module {
  type Pact = {
    name : Text;
    currency : Text;
    createdAt : Int;
    createdBy : Principal;
    isActive : Bool;
  };

  type ImageData = {
    data : Blob;
    contentType : Text;
  };

  type ShoppingList = {
    id : Nat;
    name : Text;
    items : [ShoppingListItem];
  };

  type ShoppingListItem = {
    id : Nat;
    amount : Nat;
    completed : Bool;
  };

  type ListItem = {
    id : Nat;
    name : Text;
  };

  type ShoppingListItemResponse = {
    id : Nat;
    name : Text;
    amount : Nat;
    completed : Bool;
  };

  type ShoppingListResponse = {
    id : Nat;
    name : Text;
    items : [ShoppingListItemResponse];
  };

  type SortOrder = {
    asc : Bool;
  };

  type ListItemPaginationRequest = {
    page : Nat;
    pageSize : Nat;
    sortOrder : SortOrder;
    search : ?Text;
  };

  type ListItemPaginatedResponse = {
    items : [ListItem];
    total : Nat;
    page : Nat;
    pageSize : Nat;
  };

  public func migration(_ : {}) : {
    var index : Nat;
    var isInitialised : Bool;
    var shoppingListIndex : Nat;
    shoppingLists : Map.Map<Nat, ShoppingList>;
    listItems : Map.Map<Nat, ListItem>;
  } {
    {
      var index = 0;
      var isInitialised = false;
      var shoppingListIndex = 0;
      shoppingLists = Map.empty();
      listItems = Map.empty();
    };
  };
};
