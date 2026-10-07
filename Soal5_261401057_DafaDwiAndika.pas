program Soal5;
uses crt;

var
  m, n, i, j: integer;
  nilai, totalnilai, ratarata: real;
  lulus, tidakLulus: integer;

begin
  clrscr;
  write('Masukkan jumlah mahasiswa (M): '); 
  readln(m);
  write('Masukkan jumlah tugas (N)    : '); 
  readln(n);
  writeln;

  lulus := 0;
  tidakLulus := 0;

  for i := 1 to m do
  begin
    writeln('--- Mahasiswa ke-', i, ' ---');
    totalnilai := 0;

    for j := 1 to n do
    begin
      write('  Nilai tugas ke-', j, ': '); readln(nilai);
      totalnilai := totalnilai + nilai;
    end;

    ratarata := totalnilai / n;
    write('  Rata-rata: ', ratarata:0:2, ' -> Status: ');

    if ratarata >= 65 then
    begin
      writeln('LULUS');
      lulus := lulus + 1;
    end
    else
    begin
      writeln('TIDAK LULUS');
      tidakLulus := tidakLulus + 1;
    end;
    writeln;
  end;

  writeln('=== REKAPITULASI AKHIR ===');
  writeln('Total Mahasiswa LULUS      : ', lulus);
  writeln('Total Mahasiswa TIDAK LULUS: ', tidakLulus);
  readln;
end.