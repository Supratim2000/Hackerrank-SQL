set serveroutput on;
declare
    R number(20);
begin
    R:=20;
    for i in 1..R loop
        for j in 1..i loop
            dbms_output.put('* ');
        end loop;
        dbms_output.put_line('');
    end loop;
end;
/
