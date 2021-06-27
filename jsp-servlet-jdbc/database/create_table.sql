CREATE TABLE role (
  id bigint NOT NULL PRIMARY KEY auto_increment,
  name varchar(255) NOT NULL,
  code varchar(255) NOT NULL,
  createddate timestamp null,
  modifieddate timestamp null,
  createdby varchar(255) null,
  modifiedby varchar(255) null
);

CREATE TABLE user (
  id bigint NOT NULL PRIMARY KEY auto_increment,
  username varchar(150) NOT NULL,
  password varchar(150) NOT NULL,
  fullname varchar(150) NULL,
  status int not null,
  roleid bigint not null,
  createddate timestamp null,
  modifieddate timestamp null,
  createdby varchar(255) null,
  modifiedby varchar(255) null
);

alter table user add constraint fk_user_role foreign key (roleid) references role(id);

CREATE TABLE news (
  id bigint NOT NULL PRIMARY KEY auto_increment,
  title varchar(255) NULL,
  thumbnail varchar(255) NULL,
  shortdescription text NULL,
  content text NULL,
  categoryid bigint not null,
  createddate timestamp null,
  modifieddate timestamp null,
  createdby varchar(255) null,
  modifiedby varchar(255) null
);

CREATE TABLE category (
  id bigint NOT NULL PRIMARY KEY auto_increment,
  name varchar(255) NOT NULL,
  code varchar(255) NOT NULL,
  createddate timestamp null,
  modifieddate timestamp null,
  createdby varchar(255) null,
  modifiedby varchar(255) null
);

alter table news add constraint fk_news_category foreign key (categoryid) references category(id);

CREATE TABLE comment (
  id bigint NOT NULL PRIMARY KEY auto_increment,
  content text NULL,
  user_id bigint NOT NULL,
  new_id bigint NOT NULL,
  createddate timestamp null,
  modifieddate timestamp null,
  createdby varchar(255) null,
  modifiedby varchar(255) null
);

alter table comment add constraint fk_comment_user foreign key (user_id) references user(id);
alter table comment add constraint fk_comment_news foreign key (new_id) references news(id);