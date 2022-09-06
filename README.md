# SurrealDB Example 1

```bash
surreal start --log info --user root --pass root memory
surreal sql --conn http://localhost:8000 --user root --pass root --ns carltonj2000 --db db1
surreal export --conn http://localhost:8000 --user root --pass root --ns carltonj2000 --db db1 export.sql
```

SurrealDB commands

```
INFO FOR DB;
select * from db1;
create company:100 set name='carlton company', initialShares=100;
select * from company;
create company:102 set name='jeffrey company', initialShares=1000;
update company:102 set initialShares=2000;
delete from company:102;
select name from company;
select * from company where name="carlton company";
select * from company where initialShares > 200;
select * from company:100;
create company:108 set name='cheryl company', initialShares=102, office.address1 = "123 some street", office.city = "big city", office.postcode="new1 v2l";
select * from company where office.city="big city";
update company:108 set shareholders = ['cyril', 'joyce'];
create person:cyril set firstName="cyril", lastName="joseph";
create person:joyce set firstName="joyce", lastName="dsouze";
select * from person;
update company:102 set shareholders = [person:cyril, person:joyce];
select shareholders.*.lastName from company:102;
select name, shareholders.*.lastName from company:102;
```

## Code History

The code in this repository is based on the
[Getting started with SurrealDB](https://youtu.be/D41jb4DDIdA)
video.
