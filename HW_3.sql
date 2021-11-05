-- 1. ������� ���� ���������� ��� �������� ���� � ����, ������ � ����������.

select employee_name, monthly_salary 
from employees 
join employee_salary 
on employee_salary.employee_id = employees.id
join salary
on employee_salary.salary_id =salary.id 

-- 2. ������� ���� ���������� � ������� �� ������ 2000.

select employee_name, monthly_salary 
from employees 
join employee_salary 
on employee_salary.employee_id = employees.id
join salary
on employee_salary.salary_id =salary.id
where monthly_salary < 2000;

-- 3. ������� ��� ���������� �������, �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)

select employee_name, monthly_salary
from employees
right join employee_salary
on employee_salary.employee_id = employees.id
join salary
on employee_salary.salary_id =salary.id
where employee_name is null;

-- 4. ������� ��� ���������� �������  ������ 2000 �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)

select employee_name, monthly_salary
from employees
right join employee_salary
on employee_salary.employee_id = employees.id
join salary
on employee_salary.salary_id =salary.id
where employee_name is null
and monthly_salary < 2000;

-- 5. ����� ���� ���������� ���� �� ��������� ��.

select employee_name, monthly_salary
from employees
left join employee_salary
on employee_salary.employee_id = employees.id
left join salary
on employee_salary.salary_id =salary.id
where monthly_salary is null;

-- 6. ������� ���� ���������� � ���������� �� ���������.

select employee_name, role_name
from employees
join roles_employee
on employees.id = roles_employee.employee_id 
join roles
on roles_employee.role_id = roles.id;

-- 7. ������� ����� � ��������� ������ Java �������������.

select employee_name, role_name
from employees
join roles_employee
on employees.id = roles_employee.employee_id 
join roles
on roles_employee.role_id = roles.id
where role_name like '%Java developer%';

-- 8. ������� ����� � ��������� ������ Python �������������.

select employee_name, role_name
from employees
join roles_employee
on employees.id = roles_employee.employee_id 
join roles
on roles_employee.role_id = roles.id
where role_name like '%Python%';

-- 9. ������� ����� � ��������� ���� QA ���������.

select employee_name, role_name
from employees
join roles_employee
on employees.id = roles_employee.employee_id 
join roles
on roles_employee.role_id = roles.id
where role_name like '%QA%';

-- 10. ������� ����� � ��������� ������ QA ���������.

select employee_name, role_name
from employees
join roles_employee
on employees.id = roles_employee.employee_id 
join roles
on roles_employee.role_id = roles.id
where role_name like '%Manual QA%';

-- 11. ������� ����� � ��������� ��������������� QA

select employee_name, role_name
from employees
join roles_employee
on employees.id = roles_employee.employee_id 
join roles
on roles_employee.role_id = roles.id
where role_name like '%Automation QA%';

-- 12. ������� ����� � �������� Junior ������������

select employee_name, monthly_salary, role_name
from employees
join employee_salary
on employees.id = employee_salary.employee_id
join roles_employee
on employees.id = roles_employee.employee_id 
join roles r 
on roles_employee.role_id = r.id
join salary s 
on employee_salary.salary_id = s.id 
where r.role_name like '%Junior%';

-- 13. ������� ����� � �������� Middle ������������

select employee_name, monthly_salary, role_name
from employees
join employee_salary
on employees.id = employee_salary.employee_id
join roles_employee
on employees.id = roles_employee.employee_id 
join roles r 
on roles_employee.role_id = r.id
join salary s 
on employee_salary.salary_id = s.id 
where r.role_name like '%Middle%';

-- 14. ������� ����� � �������� Senior ������������

select employee_name, monthly_salary, role_name
from employees
join employee_salary
on employees.id = employee_salary.employee_id
join roles_employee
on employees.id = roles_employee.employee_id 
join roles r 
on roles_employee.role_id = r.id
join salary s 
on employee_salary.salary_id = s.id 
where r.role_name like '%Senior%';

-- 15. ������� �������� Java �������������

select employee_name, monthly_salary, role_name
from employees
join employee_salary
on employees.id = employee_salary.employee_id
join roles_employee
on employees.id = roles_employee.employee_id 
join roles r 
on roles_employee.role_id = r.id
join salary s 
on employee_salary.salary_id = s.id 
where r.role_name like '%Java developer%';

-- 16. ������� �������� Python �������������

select employee_name, monthly_salary, role_name
from employees
join employee_salary
on employees.id = employee_salary.employee_id
join roles_employee
on employees.id = roles_employee.employee_id 
join roles r 
on roles_employee.role_id = r.id
join salary s 
on employee_salary.salary_id = s.id 
where r.role_name like '%Python%';

-- 17. ������� ����� � �������� Junior Python �������������

select employee_name, monthly_salary, role_name
from employees
join employee_salary
on employees.id = employee_salary.employee_id
join roles_employee
on employees.id = roles_employee.employee_id 
join roles r 
on roles_employee.role_id = r.id
join salary s 
on employee_salary.salary_id = s.id 
where r.role_name like '%Junior Python%';

-- 18. ������� ����� � �������� Middle JS �������������

select employee_name, monthly_salary, role_name
from employees
join employee_salary
on employees.id = employee_salary.employee_id
join roles_employee
on employees.id = roles_employee.employee_id 
join roles r 
on roles_employee.role_id = r.id
join salary s 
on employee_salary.salary_id = s.id 
where r.role_name like '%Middle JavaScript%';

-- 19. ������� ����� � �������� Senior Java �������������

select employee_name, monthly_salary, role_name
from employees
join employee_salary
on employees.id = employee_salary.employee_id
join roles_employee
on employees.id = roles_employee.employee_id 
join roles r 
on roles_employee.role_id = r.id
join salary s 
on employee_salary.salary_id = s.id 
where r.role_name like '%Senior Java%';

-- 20. ������� �������� Junior QA ���������

select employee_name, monthly_salary, role_name
from employees
join employee_salary
on employees.id = employee_salary.employee_id
join roles_employee
on employees.id = roles_employee.employee_id 
join roles r 
on roles_employee.role_id = r.id
join salary s 
on employee_salary.salary_id = s.id 
where r.role_name like '%Junior%QA%';

-- 21. ������� ������� �������� ���� Junior ������������

select avg(s.monthly_salary)
from employees
join employee_salary
on employees.id = employee_salary.employee_id
join roles_employee
on employees.id = roles_employee.employee_id 
join roles r 
on roles_employee.role_id = r.id
join salary s 
on employee_salary.salary_id = s.id 
where r.role_name like '%Junior%';

-- 22. ������� ����� ������� JS �������������

select sum(s.monthly_salary)
from employees
join employee_salary
on employees.id = employee_salary.employee_id
join roles_employee
on employees.id = roles_employee.employee_id 
join roles r 
on roles_employee.role_id = r.id
join salary s 
on employee_salary.salary_id = s.id 
where r.role_name like '%JavaScript%';

-- 23. ������� ����������� �� QA ���������

select min(s.monthly_salary)
from employees
join employee_salary
on employees.id = employee_salary.employee_id
join roles_employee
on employees.id = roles_employee.employee_id 
join roles r 
on roles_employee.role_id = r.id
join salary s 
on employee_salary.salary_id = s.id 
where r.role_name like '%QA%';

-- 24. ������� ������������ �� QA ���������

select max(s.monthly_salary)
from employees
join employee_salary
on employees.id = employee_salary.employee_id
join roles_employee
on employees.id = roles_employee.employee_id 
join roles r 
on roles_employee.role_id = r.id
join salary s 
on employee_salary.salary_id = s.id 
where r.role_name like '%QA%';

-- 25. ������� ���������� QA ���������

select count(r.role_name) 
from roles r
join roles_employee re 
on r.id = re.role_id 
join employees e 
on e.id = re.employee_id 
where r.role_name like '%QA%';

-- 26. ������� ���������� Middle ������������.

select count(r.role_name) 
from roles r
join roles_employee re 
on r.id = re.role_id 
join employees e 
on e.id = re.employee_id 
where r.role_name like '%Middle%';

-- 27. ������� ���������� �������������

select count(r.role_name) 
from roles r
join roles_employee re 
on r.id = re.role_id 
join employees e 
on e.id = re.employee_id 
where r.role_name like '%developer%';

-- 28. ������� ���� (�����) �������� �������������.

select sum(monthly_salary) 
from roles r
join roles_employee re 
on r.id = re.role_id 
join employees e 
on e.id = re.employee_id 
join employee_salary es 
on es.employee_id = re.employee_id 
join salary s 
on s.id = es.salary_id 
where r.role_name like '%developer%';

-- 29. ������� �����, ��������� � �� ���� ������������ �� �����������

select employee_name, monthly_salary, role_name
from employees
join employee_salary
on employees.id = employee_salary.employee_id
join roles_employee
on employees.id = roles_employee.employee_id 
join roles r 
on roles_employee.role_id = r.id
join salary s 
on employee_salary.salary_id = s.id 
order by monthly_salary ASC;

-- 30. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� �� 1700 �� 2300

select employee_name, monthly_salary, role_name
from employees
join employee_salary
on employees.id = employee_salary.employee_id
join roles_employee
on employees.id = roles_employee.employee_id 
join roles r 
on roles_employee.role_id = r.id
join salary s 
on employee_salary.salary_id = s.id 
where monthly_salary > 1700 and monthly_salary < 2300
order by monthly_salary ASC;

-- 31. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ������ 2300

select employee_name, monthly_salary, role_name
from employees
join employee_salary
on employees.id = employee_salary.employee_id
join roles_employee
on employees.id = roles_employee.employee_id 
join roles r 
on roles_employee.role_id = r.id
join salary s 
on employee_salary.salary_id = s.id 
where s.monthly_salary < 2300
order by monthly_salary ASC;

-- 32. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ����� 1100, 1500,2000

select employee_name, monthly_salary, role_name
from employees
join employee_salary
on employees.id = employee_salary.employee_id
join roles_employee
on employees.id = roles_employee.employee_id 
join roles r 
on roles_employee.role_id = r.id
join salary s 
on employee_salary.salary_id = s.id 
where s.monthly_salary in (1100,1500,2000)
order by monthly_salary ASC;
