set serveroutput on;
declare
    isPrime number(1);
    sqVal number(5);
    res varchar(2000);
begin
    res:='';
    for i in 2..1000 loop
        isPrime:=1;
        sqVal:=sqrt(i);
        for j in 2..sqVal loop
            if(mod(i,j)=0) then
                isPrime:=0;
                exit;
            end if;
        end loop;
        if(isPrime=1) then
            res:=res||i||'&';
        end if;
    end loop;
    dbms_output.put_line(substr(res,0,length(res)-1));
end;
/
