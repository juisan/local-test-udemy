unit uResponse;

interface

uses system.Generics.Collections;

type


 Tresponse = record

   success   : boolean;
   ErrorCode : integer;
   Message   : string;
   Data      : TObjectlist<TObject> ;

 end;

implementation

end.
