
create table A 
(
dimension_1 varchar(100),
dimension_2 varchar(100),
dimension_3 varchar (100),
measure_1 int
)
insert into A(dimension_1, dimension_2, dimension_3, measure_1) VALUES('a', 'I', 'K', 1)
insert into A(dimension_1, dimension_2, dimension_3, measure_1) VALUES('a', 'J', 'L', 7)
insert into A(dimension_1, dimension_2, dimension_3, measure_1) VALUES('b', 'I', 'M', 2)
insert into A(dimension_1, dimension_2, dimension_3, measure_1) VALUES('c', 'J', 'N', 5)

select * from A; 
create table B
(
dimension_1 varchar(100),
dimension_2 varchar(100),
measure_2 int
)

insert into B(dimension_1, dimension_2, measure_2) VALUES('a', 'J', 7)
insert into B(dimension_1, dimension_2, measure_2) VALUES('b', 'J', 10)
insert into B(dimension_1, dimension_2, measure_2) VALUES('d', 'J', 4)

select * from B;

create table map
(
dimension_1 varchar(100),
correct_dimension_2 varchar(100)
)


insert into map values('a', 'W')
insert into map values('a', 'W')
insert into map values('b', 'X')
insert into map values('c', 'Y')
insert into map values('b', 'X')
insert into map values('d', 'Z')


with distinct_map as
(
select distinct dimension_1, correct_dimension_2 from map
),
table_a_fix as
(select
a.dimension_1,
map.correct_dimension_2 as dimension_2,
a.dimension_3,
a.measure_1

from a join distinct_map map on a.dimension_1=map.dimension_1),

table_b_fix as
(select
b.dimension_1,
map.correct_dimension_2 as dimension_2,
b.measure_2

from b join distinct_map map on b.dimension_1=map.dimension_1)

select  coalesce(a.dimension_1,b.dimension_1) as dimension_1, coalesce(a.dimension_2, b.dimension_2) as dimension_2,sum(coalesce(a.measure_1,0)) as sum_measure_1, sum(coalesce(b.measure_2,0)) as sum_measure_2
from table_a_fix a
full join table_b_fix b on a.dimension_1=b.dimension_1 and a.dimension_2=b.dimension_2
group by coalesce(a.dimension_1,b.dimension_1), coalesce(a.dimension_2, b.dimension_2)





