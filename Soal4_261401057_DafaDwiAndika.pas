program Soal4;
uses crt;

var
  pilihan: integer;
  bil1, bil2 : real;
  ulang: char;

begin
  repeat
    clrscr;
    writeln('=== KALKULATOR SEDERHANA ===');
    writeln('1. Penjumlahan');
    writeln('2. Pengurangan');
    writeln('3. Perkalian');
    writeln('4. Pembagian Real');
    writeln('5. DIV & MOD');
    write('Pilih operasi (1-5): '); 
    readln(pilihan);

    write('Masukkan angka pertama : '); readln(bil1);
    write('Masukkan angka kedua   : '); readln(bil2);
    writeln;

    case pilihan of
      1: writeln('Hasil Penjumlahan: ', (bil1 + bil2):0:2);
      2: writeln('Hasil Pengurangan: ', (bil1 - bil2):0:2);
      3: writeln('Hasil Perkalian  : ', (bil1 * bil2):0:2);
      4: begin
           if bil2 <> 0 then
             writeln('Hasil Pembagian Real: ', (bil1 / bil2):0:2)
           else
             writeln('Error: Pembagian dengan nol tidak diperbolehkan!');
         end;
      5: begin
           if trunc(bil2) <> 0 then
           begin
             writeln('Hasil DIV (Pembagian Bulat): ', trunc(bil1) div trunc(bil2));
             writeln('Hasil MOD (Sisa Bagi)      : ', trunc(bil1) mod trunc(bil2));
           end
           else
             writeln('Error: Pembagian dengan nol tidak diperbolehkan!');
         end;
    else
      writeln('Pilihan menu tidak valid!');
    end;

    writeln;
    write('Apakah ingin melakukan perhitungan lagi? (Y/T): '); readln(ulang);
  until (ulang = 'T') or (ulang = 't');
end.