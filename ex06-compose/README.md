show variables like '%character%';

use root;

create table person(
id int primary key,
name varchar(100)
);

insert into person(id, name) values(1, 'ssar1');

select \* from person;
