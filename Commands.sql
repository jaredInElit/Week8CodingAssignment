select t.title, count(*) 
from titles as t join employees as e on e.emp_no = t.emp_no 
where e.birth_date > '1965-01-01' 
group by t.title;


select t.title, avg(salary)
from titles t
inner join salaries s on t.emp_no = s.emp_no
group by t.title;


select d.dept_name, sum(s.salary)
from departments d
inner join dept_emp de on de.dept_no = d.dept_no
inner join salaries s on s.emp_no = de.emp_no
where de.from_date >= '1990-01-01' and de.to_date <= '1992-12-31'
and d.dept_name = 'Marketing'
group by d.dept_name;