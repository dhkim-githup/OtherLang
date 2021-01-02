unit uDrawClass;

interface

  uses
    Vcl.Graphics, System.Classes;

  type
    tEntType = (etLine, etRectangle, etCircle);
    TDrawClass = class(TObject)
    private
      FList : TList;
    public
      constructor Create;
      destructor Destroy; override;
      procedure Add(AEntType:tEntType);
      procedure Draw;
    end;

implementation

{ TDrawClass }

procedure TDrawClass.Add(AEntType: tEntType);
  var
    ent : TEntity;
begin
   case AEntType of
      etLine : ent := TLine.Create();
      etRectangle :  TRectangle.Create();
      etCircle :  TCircle.Create();
   end;

   FList.Add(ent)

end;

constructor TDrawClass.Create;
begin
    FList := TList.Create;
end;

destructor TDrawClass.Destroy;
begin
  FList.Free;
  inherited;
end;

end.
