program Soal7;
uses crt;

var
  kode: char;
  lama: integer;
  totaltarif: longint;

begin
  clrscr;
  writeln('=== SISTEM TARIF PARKIR ===');
  write('Masukkan Kode Kendaraan (M/K/B): '); 
  readln(kode);
  write('Masukkan Lama Parkir (Jam)     : '); 
  readln(lama);

  kode := upcase(kode);
  totaltarif := 0;

  case kode of
    'M': { Mobil }
      begin
        if lama > 10 then
          totaltarif := 30000
        else if lama >= 1 then
          totaltarif := 5000 + (lama - 1) * 3000;
      end;
    'K': { Motor }
      begin
        if lama > 10 then
          totaltarif := 10000
        else if lama >= 1 then
          totaltarif := 2000 + (lama - 1) * 1000;
      end;
    'B': { Bus }
      begin
        if lama > 10 then
          totaltarif := 50000
        else if lama >= 1 then
          totaltarif := 10000 + (lama - 1) * 5000;
      end;
  else
    writeln('Kode kendaraan tidak valid!');
  end;

  if (kode = 'M') or (kode = 'K') or (kode = 'B') then
  begin
    writeln;
    writeln('Total Tarif Parkir: Rp', totaltarif);
  end;

  readln;
end.