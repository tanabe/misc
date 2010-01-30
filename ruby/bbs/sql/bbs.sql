use rubybbs;
create table posts (
  id int not null primary key auto_increment,
  name varchar(50) not null ,
  content text not null,
  date datetime
)

