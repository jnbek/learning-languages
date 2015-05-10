program CalculateRevenue( input, output);
{****
Input service charge, cost per foot of cablem number of installations, and yards of cable used
***}
var
    Installations,
    YardsOfCable,
    FeetOfCable : integer;
    ServiceCharge,
    UnitCost,
    Revenue : real;
begin
    writeln('Enter service charge, cost of one foot of cable,');
    writeln('number of installations, and yards of cable used');
    readln( ServiceCharge, UnitCost, Installations, YardsOfCable );
    FeetOfCable := 3 * YardsOfCable;
    Revenue := ServiceCharge * Installations + UnitCost * FeetOfCable;
    writeln;
    writeln('Revenue generated = $', Revenue:7:2 )
end.
