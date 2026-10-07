program Soal10;
uses crt;

var
  nomorhari: integer;

begin
  clrscr;
  write('Input: '); 
  readln(nomorhari);

  case nomorhari of
    1: writeln('Output: "Hari Senin"');
    2: writeln('Output: "Hari Selasa"');
    3: writeln('Output: "Hari Rabu"');
    4: writeln('Output: "Hari Kamis"');
    5: writeln('Output: "Hari Jumat"');
    6: writeln('Output: "Hari Sabtu"');
    7: writeln('Output: "Hari Minggu"');
  else
    writeln('Output: Nomor hari tidak valid! (Gunakan angka 1-7)');
  end;

  readln;
end.