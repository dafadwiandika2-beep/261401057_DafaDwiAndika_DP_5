program Soal3;
uses crt;

var 
    n, i, kategori: integer;

begin
    clrscr;
    write('Masukkan nilai N: '); readln(n);
    writeln('Pilih kategori deret:');
    writeln('1. Ganjil');
    writeln('2. Genap');
    write('Pilihan (1/2): ');
    readln(kategori);

    writeln;
    write('Hasil penyaringan deret: ');
  
    i := 0;
    while i < n do
    begin
        i := i + 1;

        if (kategori = 1) and (i mod 2 = 0) then continue;
        if (kategori = 2) and (i mod 2 <> 0) then continue;

        if i mod 5 = 0 then continue;

        write(i, ' ');
    end;

    writeln;
    readln;
end.