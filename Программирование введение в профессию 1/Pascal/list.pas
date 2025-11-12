program LinkedListExample;

type
  PNode = ^TNode;     { PNode is a pointer type that points to a TNode }
  TNode = record      { TNode is a "record type" (like a struct in C) }
    data: Integer;    { This field stores the actual integer value in the node }
    next: PNode;      { This is a pointer to the *next* node in the list }
  end;

var
  first: PNode;

begin
  { Create first node }
  New(first);
  first^.data := 25;

  { Create second node }
  New(first^.next);
  first^.next^.data := 36;

  { Create third node }
  New(first^.next^.next);
  first^.next^.next^.data := 49;

  { End of list }
  first^.next^.next^.next := nil;

  { Print the linked list }
  Writeln('Linked List contents:');
  Writeln(first^.data);
  Writeln(first^.next^.data);
  Writeln(first^.next^.next^.data);
end.
