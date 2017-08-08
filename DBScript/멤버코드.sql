CREATE OR REPLACE FUNCTION MemberCode(CODE CHAR)
RETURN VARCHAR2
IS
    MEMBER VARCHAR2(11); 
    n NUMBER:=0;--사용자 숫자
    max1 NUMBER(13);--최대값 숫자 멤버 테이블
    max2 NUMBER(13);--최대값 숫자 삭제 테이블
BEGIN
    IF CODE='H' 
    THEN 
        EXECUTE IMMEDIATE 'SELECT MAX(TO_NUMBER(SUBSTR(MHCODE,2))) FROM HONEYBEE' INTO max1;
        EXECUTE IMMEDIATE 'SELECT MAX(TO_NUMBER(SUBSTR(MCODE,2))) FROM LEAVEMEMBER WHERE FLAG=''H'' ' INTO max2;
        MEMBER:='H';
        
    ELSIF CODE='B'
    THEN
         EXECUTE IMMEDIATE 'SELECT MAX(TO_NUMBER(SUBSTR(MBCODE,2))) FROM BLOOMER' INTO max1;
         EXECUTE IMMEDIATE 'SELECT MAX(TO_NUMBER(SUBSTR(MCODE,2))) FROM LEAVEMEMBER WHERE FLAG=''B'' ' INTO max2;
         MEMBER:='B';
    END IF;    
    
    IF max1 IS NULL    THEN max1:=0;
    END IF;
    
    IF max2 IS NULL    THEN max2:=0;
    END IF; 
    
    IF max1>max2 THEN n:=max1+1;
    ELSE n:=max2+1;
    END IF;
       
    RETURN MEMBER||N;
END;
/
