program Soal2;
uses crt;

const
    pwrahasia = 'pascal123'; // 

var
    pw : string;
    percobaan  : integer;

begin
    clrscr;
    percobaan := 0;

    repeat
        percobaan := percobaan + 1;
        write('Masukkan kata sandi (Percobaan ke-', percobaan, '): ');
        readln(pw);

        if (pw = pwrahasia) then
        begin
            writeln('Login berhasil! Selamat datang');
            break;
        end
        else
        begin
            if (percobaan < 3) then
            begin
                writeln('Kata sandi salah. Silakan coba lagi.');
                writeln;
            end
            else
            begin
                writeln('Akses ditolak! Akun terkunci');
            end;
        end;

    until (percobaan = 3);

    readln;
end.
