program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

 uses
  System.SysUtils;

const sz=100;
 var
  A: array[1..sz] of integer;
  B: array[1..sz] of integer;
  N,TEMP,cod :integer;
  i,j :byte;
  str: string;

begin
 writeln('Введите кол-во элементов массива');
 readln(N);
  for i := 1 to N do                  //Ввод эл-тов массива
   begin
   write('Введите ',i,' элемент массива: ');
     repeat
        readln(str);
        val(str,TEMP,cod);
         if (cod<>0) or (temp<0) then            //Проверка корректности ввода
           writeln('Введите положительное число');
     until (cod=0) and (temp>0) ;
     a[i]:=TEMP;
   end;
   for I := 1 to N do
     begin
       b[i]:=a[i];            //создание вспомогательного массива
     end;
 writeln('Введенный массив:');
 for i := 1 to N do                   //Вывод эл-тов массива
   begin
   write(a[i], ' ');
   end;
 writeln('');
 writeln('Преобразованный массив:');

   for I := 1 to N-1 do         //бегаем по основному массиву
     begin
      for j :=i+1 to N do       //бегаем по вспомогательному массиву
       begin
         if a[i]<b[j] then
          begin
            a[i]:=b[j];
            break;
          end;
          if j=n then
           a[i]:=0;
       end;
        write(a[i],' ');
     end;

a[n]:=0;
write(a[n]);
writeln;
writeln('Press enter to finish programm');
readln;
end.
