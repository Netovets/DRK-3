uses crt;
procedure p;
begin
 writeln('Вывод точного значение - 1');
 writeln('Приблизительное значение - 2');
 writeln('Погрешность - 3 ');
 writeln('Относительная погрешность - 4');
 writeln('Выход - 5');
 end;
function f1(x: real): real;
begin
 f1 := 2 * x ** 3 + 12;
 end;
function f2(x: real): real;
begin
f2 :=(x ** 12/2) + 12 * x;
 end;
var
 q, w, s, d: real;
 c,n, v: integer;
begin
 repeat
 writeln('Введите левую границу интервала от -3 до 0 = ');
 readln(q);
 until
(q >= -3) and (q <= 0);
 repeat 
 writeln('Введите правую границу интервала от 0 до 3 = ');
 readln(w);
 until 
(w >= 0) and (w > q) and (w <= 3);
 repeat 
 write('Введите число промежутков от 20 до 1000 = ');
 readln(n);
 until 
(n >= 20) and (n <= 1000);
 s := (f1(q) + f1(w)) / 2;
 for c := 1 to n - 1 do
    begin
    s := s + f1(q + c * ((w - q) / n));
    end;
    s*=(w - q) / n;
    d := f2(w) - f2(q);
    begin
    repeat p;
    read(v);
    case v of 
    1: begin writeln('Точное значение = ', abs(d):0:3) end;
    2: begin writeln('Приблизительное значение = ', abs(s):0:3) end;
    3: begin writeln('Погрешность = ', (d - s):0:3) end;
    4: begin writeln('Относительная погрешность = ', abs(d - s) / d) end;
    5: begin ClrScr end;
    end;
    until 
    v >= 5;
    end;
end.