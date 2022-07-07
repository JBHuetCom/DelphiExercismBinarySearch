unit uBinarySearch;

interface

  type
    BinarySearch = class
      class function Search(const AValues : TArray<integer>; const AKey : integer) : integer; static;
    end;

implementation

  class function BinarySearch.Search(const AValues : TArray<integer>;
    const AKey: integer) : integer;
    var
      LowerBound, UpperBound, Median : integer;
    begin
      Result := -1;
      if 0 < length(AValues) then
        begin
          LowerBound := Low(AValues);
          UpperBound := High(AValues);
          while (Result = -1) AND (LowerBound <= UpperBound) do
            begin
              Median := (LowerBound + UpperBound) div 2;
              if AKey = AValues[Median] then
                Result := Median
              else
                if AKey > AValues[Median] then
                  LowerBound := Median +1
                else
                  UpperBound := Median -1;
            end;
        end;
    end;

end.
