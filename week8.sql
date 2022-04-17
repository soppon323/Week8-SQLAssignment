/*Question1*/
select t.title,count(t.title)
from employees e
join titles t
on e.emp_no = t.emp_no
where e.birth_date > '1965-01-01'
group by 1
order by 1 asc;

/*question2*/
select count(t.title), t.title as 'job title', avg(salary)
from  salaries s
join titles t
where s.emp_no = t.emp_no
group by 2

/*Question 3*/
Select  d.dept_name, sum(s.salary) as Total_marketng_salary
from departments d
join dept_emp de
on d.dept_no = de.dept_no
join salaries s
on s.emp_no = de.emp_no
where d.dept_name = 'Marketing'
and s.from_date > ' 1990-01-01'
and s.to_date < '1992-12-31';
