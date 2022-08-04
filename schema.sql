DROP TABLE IF EXISTS apartment;
DROP TABLE IF EXISTS user;
DROP TABLE IF EXISTS car;
DROP TABLE IF EXISTS guard;

create table apartment (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT NOT NULL
);

create table user (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT NOT NULL,
  aid INTEGER NOT NULL,
  address TEXT,
  phone TEXT NOT NULL,
  permit TEXT default 'N',
  updated TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  UNIQUE (name, phone),
  FOREIGN KEY (aid) REFERENCES apartment (id)
);


create table guard (
  id TEXT PRIMARY KEY,
  password TEXT NOT NULL,
  name TEXT NOT NULL,
  phone TEXT NOT NULL,
  aid INTEGER NOT NULL,
  updated TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (aid) REFERENCES apartment (id)
);

create table car (
  plate TEXT PRIMARY KEY,
  uid INTEGER NOT NULL,
  permit TEXT default 'N',
  updated TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);


insert into apartment (name) values ("테스트 아파트");
insert into apartment (name) values ("둘리 아파트");

insert into user (name, aid, address, phone) values ("홍길동", 1, "101동 303호", "010-1234-2345");
insert into user (name, aid, address, phone) values ("김철수", 2, "102동 103호", "010-1123-0101");
insert into user (name, aid, address, phone) values ("고길동", 1, "101동 101호", "010-1223-0201");
insert into user (name, aid, address, phone) values ("마이콜", 2, "104동 206호", "010-1323-0301");
insert into user (name, aid, address, phone) values ("박신혜", 1, "102동 307호", "010-1423-0401");
insert into user (name, aid, address, phone) values ("로이킴", 2, "101동 409호", "010-1523-0501");

insert into car (plate, uid) values ("12가3456", 1);
insert into car (plate, uid) values ("122나1156", 1);
insert into car (plate, uid) values ("52다2256", 2);
insert into car (plate, uid) values ("23마4456", 4);
insert into car (plate, uid) values ("75바5556", 5);
insert into car (plate, uid) values ("261사6656", 6);

insert into guard (id, password, name, phone, aid) values ("guard1", "1234", "김경비", "010-5555-4444", 1);
insert into guard (id, password, name, phone, aid) values ("guard2", "1234", "박경비", "010-5555-4444", 2);
insert into guard (id, password, name, phone, aid) values ("guard3", "1234", "최경비", "010-5555-4444", 3);
insert into guard (id, password, name, phone, aid) values ("guard4", "1234", "이경비", "010-5555-4444", 4);
insert into guard (id, password, name, phone, aid) values ("guard5", "1234", "정경비", "010-5555-4444", 5);
insert into guard (id, password, name, phone, aid) values ("guard6", "1234", "오경비", "010-5555-4444", 6);
insert into guard (id, password, name, phone, aid) values ("guard7", "1234", "추경비", "010-5555-4444", 1);