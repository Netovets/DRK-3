function f1(x: real) : real;
  begin
    f1 := 2 * x ** 3 + 12;
  end;
function f2(x: real) : real;
  begin
    f2 :=(x ** 12/2) + 12 * x;
  end;
procedure vvod;
  begin
    writeln('вывод точного значение - 1');
    writeln('приблизительное значение - 2');
    writeln('относительная погрешность - 3');
    writeln('абсолютная погрешность - 4 ');
    writeln('завершить программу - 0');
  end;
var
  q, w, s, d: real;
  c, n, v: integer;
    begin
      repeat
        writeln('Введите левый интервал от -3 до 0 = ');
        readln(q);
      until
        (q >= -3) and (q <= 0);
      repeat 
        writeln('Введите правый интервал от 0 до 3 = ');
        readln(w);
      until 
        (w >= 0) and (w > q) and (w <= 3);
      repeat 
        write('Введите количество отрезков от 0 до 1000 = ');
        readln(n);
      until 
        (n >= 0) and (n <= 1000);
        s := (f1(q) + f1(w)) / 2;
  for c := 1 to n - 1 do
    begin
      s := s + f1(q + c * ((w - q) / n));
    end;
    s := s * (w - q) / n;
    d := f2(w) - f2(q);
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