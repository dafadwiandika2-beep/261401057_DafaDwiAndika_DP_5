program Soal1;
uses crt;

var 
    i, n : integer;
    hargabarang, totalsebelumdiskon, diskon, besardiskon, totalakhir : real;

begin
    clrscr;
    write('Masukkan jumlah barang yang dibeli : ');
    readln(n);

    totalsebelumdiskon := 0;

    for i := 1 to n do 
    begin
        write('harga barang ke-', i, ' : Rp. ');
        readln(hargabarang);
        totalsebelumdiskon := totalsebelumdiskon + hargabarang;
    end;

    if (totalsebelumdiskon < 100000) then
    begin
        diskon := 0;
    end
    else if (totalsebelumdiskon <= 500000) and (totalsebelumdiskon >= 100000) then
    begin
        diskon := 0.1;
    end
    else 
    begin
        diskon := 0.2;
    end;

    besardiskon := totalsebelumdiskon * diskon;
    totalakhir := totalsebelumdiskon - besardiskon;

    writeln;
    writeln('===RINCIAN BELANJA===');
    writeln('Total Sebelum Diskon : Rp.', totalsebelumdiskon:0:2);
    writeln('Besar Diskon         : Rp.', besardiskon:0:2);
    writeln('Total Biaya Akhir    : Rp.', totalakhir:0:2);

    readln; 
end.