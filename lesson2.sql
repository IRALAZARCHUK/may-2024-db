use userdb999;
# select * from client where length(FirstName)<6;
# select * from client where City ='Lviv';
# select * from client where  Education ='high' order by LastName;
# select * from application order by idApplication desc limit 5 offset 10;
# select * from client where LastName like '%iv' or LastName like '%iva';
# select * from client where City ='Kyiv';
# select distinct client.FirstName from client;
# select * from application where Sum>5000;
# select count(*) from client;
# select count(*),City from client where City = 'Lviv';
# select max(sum),Client_idClient as maxSum from application group by Client_idClient;
# select count(*), Client_idClient from application group by Client_idClient;
# select max(sum) as maxSum from application group by Sum order by Sum desc limit 1;
# select min(sum) as minSum from application group by Sum order by Sum limit 1;
# select count(*) from application
                           # join userdb999.client c on c.idClient = application.Client_idClient
    # where Education = 'high';
# select client.LastName, client.FirstName, avg(a.Sum) as avgSum from client
                                                                          # join userdb999.application a on client.idClient = a.Client_idClient
    # group by client.idClient
      # order by avgSum desc
      # limit 1;
# select department.DepartmentCity, count(a.Sum)  from department
                                                           # join userdb999.client c on department.idDepartment = c.Department_idDepartment
    # join userdb999.application a on c.idClient = a.Client_idClient
      # group by Client_idClient
      # order by count(a.Sum) desc
      # limit 1;
# select department.DepartmentCity, max(a.Sum) as maxSum from department
                                                                  # join userdb999.client c on department.idDepartment = c.Department_idDepartment
    # join userdb999.application a on c.idClient = a.Client_idClient
      # group by Client_idClient
      # order by maxSum desc
      # limit 1;
# UPDATE application
    # JOIN client c ON application.Client_idClient = c.idClient
      # SET Sum = 6000
        # WHERE c.Education = 'high';
# update client
    # join userdb999.department d on d.idDepartment = client.Department_idDepartment
      # set City = 'Kyiv'
        # where d.DepartmentCity = 'Kyiv';
# delete from application
                  # where CreditState = 'Returned';
# delete application from application
# join userdb999.client c on c.idClient = application.Client_idClient
# where c.LastName like '_a' or c.LastName like '_o' or c.LastName = '_e' or c.LastName = '_u' or c.LastName = '_i'; /*- не працює-*/
# select department.DepartmentCity, SUM from department
                                                          # join userdb999.client c on department.idDepartment = c.Department_idDepartment
    # join userdb999.application a on c.idClient = a.Client_idClient
               # where  DepartmentCity = 'Lviv' and sum>5000;
# select FirstName, LastName from client
                                      # join userdb999.application a on client.idClient = a.Client_idClient
    # where a.CreditState = 'returned' and sum>5000;
# select max(sum) as maxSum from application
                                     # where CreditState = 'not returned';
select min(sum) as minSum, client.FirstName,client.LastName from client
                                                                     join userdb999.application a on client.idClient = a.Client_idClient
group by Client_idClient
order by min(sum)
    limit 1;
select * from application
where Sum>(select avg(sum) as avgSum from application);


