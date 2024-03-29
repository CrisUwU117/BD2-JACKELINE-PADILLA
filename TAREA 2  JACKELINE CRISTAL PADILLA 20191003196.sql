DECLARE
 NOMBRE VARCHAR2(20);
 APELLIDO1 VARCHAR2(20);
 APELLIDO2 VARCHAR2(20);
 INICIALES VARCHAR2(6);
BEGIN
 NOMBRE:='jackeline';
 APELLIDO1:='Cristal ';
 APELLIDO2:='Padilla';
 
INICIALES:=SUBSTR(NOMBRE,1,1)||'.'||SUBSTR(APELLIDO1,1,1)||'.'||SUBSTR(APELLIDO2,1,1)||'.';
 DBMS_OUTPUT.PUT_LINE(UPPER(INICIALES));
END;

DECLARE
 VALOR NUMBER;
 RESULTADO NUMBER;
BEGIN
 VALOR :=10;
 RESULTADO := MOD(VALOR, 2);
 IF RESULTADO = 0 THEN
 DBMS_OUTPUT.PUT_LINE(' ES PAR');
 ELSE
 DBMS_OUTPUT.PUT_LINE('ES IMPAR');
 END IF;
END;
  
  
DECLARE
salario_maximo EMPLOYEES.SALARY%TYPE;
BEGIN
SELECT MAX(SALARY) INTO salario_maximo
FROM EMPLOYEES
WHERE DEPARTMENT_ID=100;
DBMS_OUTPUT.PUT_LINE('el salario m�ximo de ese departamento 
es:'||salario_maximo);
END;

DECLARE
 COD_DEPARTAMENTO DEPARTMENTS.DEPARTMENT_ID%TYPE:=10;
 NOM_DEPARTAMENTO DEPARTMENTS.DEPARTMENT_NAME%TYPE;
 NUM_EMPLE NUMBER;
BEGIN
 SELECT DEPARTMENT_NAME INTO NOM_DEPARTAMENTO FROM 
DEPARTMENTS WHERE DEPARTMENT_ID=COD_DEPARTAMENTO;
 SELECT COUNT(*) INTO NUM_EMPLE FROM EMPLOYEES WHERE 
DEPARTMENT_ID=COD_DEPARTAMENTO;
 DBMS_OUTPUT.PUT_LINE('EL DEPARTAMENTO '||NOM_DEPARTAMENTO||' TIENE '||NUM_EMPLE||' EMPLEADOS');
END;

DECLARE
 MAXIMO NUMBER;
 MINIMO NUMBER;
 DIFERENCIA NUMBER;
BEGIN
 SELECT MAX(SALARY),MIN(SALARY) INTO MAXIMO,MINIMO
 FROM EMPLOYEES;
 DBMS_OUTPUT.PUT_LINE('EL SALARIO M�XIMO ES:'||MAXIMO);
 DBMS_OUTPUT.PUT_LINE('EL SALARIO M�NIMO ES:'||MINIMO);
 DIFERENCIA:=MAXIMO-MINIMO;
 DBMS_OUTPUT.PUT_LINE('LA DIFERENCIA ES:'||DIFERENCIA);
END;