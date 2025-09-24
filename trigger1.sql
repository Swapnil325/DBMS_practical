CREATE OR REPLACE TRIGGER t3
AFTER UPDATE ON clientmaster
FOR EACH ROW
BEGIN
    INSERT INTO client_audit (EmpNo, Lname, changedat, action)
    VALUES (:OLD.EmpNo, :OLD.Lname, SYSDATE, 'update');
END;
/
