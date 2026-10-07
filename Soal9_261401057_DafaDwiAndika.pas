program Soal9;
uses crt;

var
  tahun, bulan, jumlahhari: integer;
  kabisat: boolean;

begin
  clrscr;
  write('Masukkan Tahun      : '); 
  readln(tahun);
  write('Masukkan Bulan (1-12): '); 
  readln(bulan);

  { Cek Tahun Kabisat }
  if (tahun mod 400 = 0) or ((tahun mod 4 = 0) and (tahun mod 100 <> 0)) then
    kabisat := true
  else
    kabisat := false;

  { Tentukan Jumlah Hari }
  case bulan of
    1, 3, 5, 7, 8, 10, 12: jumlahhari := 31;
    4, 6, 9, 11: jumlahhari := 30;
    2: begin
         if kabisat then
           jumlahhari := 29
         else
           jumlahhari := 28;
       end;
  else
    jumlahhari := 0;
  end;

  writeln;
  if jumlahhari <> 0 then
  begin
    write('Status Tahun: ');
    if kabisat then writeln('Kabisat') else writeln('Bukan Kabisat');
    writeln('Jumlah Hari : ', jumlahhari, ' hari');
  end
  else
    writeln('Nomor bulan tidak valid!');

  readln;
end.