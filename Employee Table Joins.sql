SELECT COUNT(DISTINCT e.BusinessEntityID)
FROM EMPLOYEE e
JOIN Person p
ON e.BusinessEntityID= p.BusinessEntityID

;

SELECT COUNT(DISTINCT e.BusinessEntityID)
FROM EMPLOYEE e
JOIN employeedepartmenthistory edh
ON e.BusinessEntityID= edh.BusinessEntityID
JOIN department d
ON edh.departmentID= d.departmentID

;

SELECT COUNT(DISTINCT e.BusinessEntityID)
FROM EMPLOYEE e
JOIN employeedepartmenthistory edh
ON e.BusinessEntityID= edh.BusinessEntityID
JOIN department d
ON edh.departmentID= d.departmentID
JOIN employeepayhistory
ON e.BusinessEntityID= eph.BusinessEntityID
;

SELECT COUNT(DISTINCT e.BusinessEntityID)
FROM EMPLOYEE e
JOIN employeedepartmenthistory edh
ON e.BusinessEntityID= edh.BusinessEntityID
JOIN department d
ON edh.departmentID= d.departmentID
JOIN employeepayhistory
ON e.BusinessEntityID= eph.BusinessEntityID
JOIN Person p
ON e.BusinessEntityID= p.BusinessEntityID

;

SELECT e.BusinessEntityID, COUNT(*)
FROM employee e
JOIN employeedepartmenthistory edh
ON e.BusinessEntityID= edh.BusinessEntityID
JOIN department d
ON edh.departmentID= d.departmentID
JOIN employeepayhistory
ON e.BusinessEntityID= eph.BusinessEntityID
JOIN Person p
ON e.BusinessEntityID= p.BusinessEntityID
GROUP BY e.BusinessEntityID