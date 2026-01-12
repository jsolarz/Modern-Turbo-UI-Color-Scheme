// Pascal Reference File for Theme Testing

program ThemeTest;

uses SysUtils, Math;

const
  PI_VALUE = 3.14159;

type
  TPoint = record
    X, Y: Double;
  end;

function Distance(A, B: TPoint): Double;
begin
  Result := Sqrt(Sqr(A.X - B.X) + Sqr(A.Y - B.Y));
end;

var
  P1, P2: TPoint;

begin
  P1.X := 0; P1.Y := 0;
  P2.X := 3; P2.Y := 4;

  Writeln('Distance: ', Distance(P1, P2):0:2);
end.
