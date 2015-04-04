create table  if not exists `switches` (
		`id` int(11) NOT NULL AUTO_INCREMENT primary key,
		`name` text not null,
		`switch` int not null
);

insert into `switches` (`id`, `name`, `switch`) values
(1, 'led1', 0),
(2, 'curtain', 0),
(3, 'screen', 0),
(4, 'tap_water', 0),
(5, 'projector', 0),
(6, 'camara', 0);

create table  if not exists stepdevices
	(
		`id` int unsigned not null auto_increment primary key,
		`name` text not null,
		`switch` int not null,
		controller text not null
	);

insert into `stepdevices` (`id`, `name`, `switch`, `controller`) values
(1, 'led2', 0, 0 ),
(2, 'led3', 0, 0 ),
(3, 'sound', 0, 0 );

/* 
create table  if not exists genericdevices
	(
		`id` int unsigned not null auto_increment primary key,
		timestamp   not null,
		`switch` int not null,
		sound_value not null,
		channel_value 

	);

insert into `genericdevices` (`id`, `name`, ``switch``, `controller`) values
*/
create table  if not exists userlists
	(
		`userid` int(255) not null  auto_increment primary key,
		`username` char(255) not null,
		`password` char(255) not null
	);
insert into `userlists` (`userid`, `username`, `password`) values
(1, 'admin', 'admin');

create table  if not exists feedBackCode
(
	`id` int(255) not null  auto_increment primary key,
	`name` char(255) not null,
	`code` int not null
);
insert into `feedBackCode` (`id`, `name`, `code`) values
(1, 'led1', 1),
(2, 'curtain', 1),
(3, 'screen', 1),
(4, 'tap_water', 1),
(5, 'projector', 1),
(6, 'camara', 1);
