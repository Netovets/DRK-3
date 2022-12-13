function f1(x: real) : real;
  begin
    f1 := 2 * x ** 3 + (-1) * x ** 2 + 12;
  end;
function f2(x: real) : real;
  begin
    f2 :=(x ** 4/2) + 12 * x;
  end;
procedure vvod;
  begin
    writeln('Какое значение или погрешность хотите узнать?');
    writeln('1 - точное, 2 - приблизительное, 3 - относительная погрешность, 4 - абсолюьная погрешность ');
    writeln('Чтобы завершить программу введите 0');
  end;
var
  levo, pravo, s, d: real;
  c, otr, v: integer;
    begin
        writeln('Введите левый интервал от -3 до 0 = ');
        readln(levo);
        writeln('Введите правый интервал от 0 до 3 = ');
        readln(pravo);
        write('Введите количество отрезков от 0 до 1000 = ');
        readln(otr);  
        s := (f1(levo) + f1(pravo)) / 2;
  for c := 1 to otr - 1 do
    begin
      s := s + f1(levo + c * ((pravo - levo) / otr));
    end;
    s := s * (pravo - levo) / otr;
    d := f2(pravo) - f2(levo);
      begin
        repeat vvod;
          read(v);
          case v of 
            1: begin
                  writeln('точное значение = ', abs(d):0:3);
               end;
            2: begin
                  writeln('приблизительное значение = ', abs(s):0:3);
               end;
            3: begin
                  writeln('относительная погрешность = ', abs(d - s) / d:0:3);
               end;
            4: begin
                  writeln('абсолютная погрешность = ', (d - s):0:3);
               end;
          end;
        until 
        v = 0;
      end;
    end.