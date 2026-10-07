program Soal6;
uses crt;

var
  tugas, uts, uas, kehadiran, nilaiakhir: real;
  indeks: char;

begin
  clrscr;
  write('Masukkan Nilai Tugas (0-100) : '); 
  readln(tugas);
  write('Masukkan Nilai UTS (0-100)   : '); 
  readln(uts);
  write('Masukkan Nilai UAS (0-100)   : '); 
  readln(uas);
  write('Masukkan Persentase Kehadiran (%): '); 
  readln(kehadiran);

  { Perhitungan Nilai Akhir }
  nilaiakhir := (0.3 * tugas) + (0.3 * uts) + (0.4 * uas);

  { Penentuan Indeks Huruf }
  if nilaiakhir >= 85 then indeks := 'A'
  else if nilaiakhir >= 75 then indeks := 'B'
  else if nilaiakhir >= 60 then indeks := 'C'
  else if nilaiakhir >= 50 then indeks := 'D'
  else indeks := 'E';

  writeln;
  writeln('=== HASIL PENILAIAN ===');
  writeln('Nilai Akhir : ', nilaiakhir:0:2);
  writeln('Indeks Huruf: ', indeks);

  { Penentuan Status Kelulusan }
  if (nilaiakhir >= 60) and (kehadiran >= 80) then
    writeln('Status      : LULUS')
  else
    writeln('Status      : TIDAK LULUS');

  readln;
end.