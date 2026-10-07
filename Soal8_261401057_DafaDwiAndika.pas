program Soal8;
uses crt;

var
  golongan: char;
  jamkerja, jamlembur: integer;
  gajipokok, lembur, bonus, totalgaji: longint;

begin
  clrscr;
  write('Masukkan Golongan Karyawan (A/B/C): '); 
  readln(golongan);
  write('Masukkan Total Jam Kerja/Minggu   : '); 
  readln(jamkerja);

  golongan := upcase(golongan);
  gajipokok := 0;
  lembur := 0;
  bonus := 0;

  case golongan of
    'A': gajipokok := 1500000;
    'B': gajipokok := 2000000;
    'C': gajipokok := 2500000;
  else
    writeln('Golongan tidak valid!');
  end;

  if (golongan = 'A') or (golongan = 'B') or (golongan = 'C') then
  begin
    { Hitung Lembur }
    if jamkerja > 40 then
    begin
      jamlembur := jamkerja - 40;
      lembur := jamlembur * 20000;
    end;

    { Bonus Khusus Golongan C }
    if (golongan = 'C') and (jamkerja > 50) then
      bonus := 100000;

    totalgaji := gajipokok + lembur + bonus;

    writeln;
    writeln('=== RINCIAN GAJI KARYAWAN ===');
    writeln('Gaji Pokok : Rp', gajipokok);
    writeln('Uang Lembur: Rp', lembur);
    writeln('Bonus      : Rp', bonus);
    writeln('---------------------------');
    writeln('Total Gaji : Rp', totalgaji);
  end;

  readln;
end.