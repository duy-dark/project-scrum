DROP DATABASE IF EXISTS scrumdb;

CREATE DATABASE scrumdb COLLATE utf8_unicode_ci;

drop table if exists `users` cascade;

create table `users` (
  `id` INT not null PRIMARY KEY AUTO_INCREMENT comment 'userId'
  , `name` VARCHAR(50) null comment 'name'
  , `email` VARCHAR(255) not null comment 'email'
  , `password` VARCHAR(255) null comment 'password'
  , `address` VARCHAR(100) not null comment 'address'
  , `phone_number` INT not null comment 'phoneNumber'
  , `gender` VARCHAR(7) not null comment 'gender'
  , `is_deleted` BOOLEAN null comment 'deleted'
  , `created_at` DATETIME(6) default CURRENT_TIMESTAMP(6) not null comment 'createdAt'
  , `updated_at` DATETIME(6) default CURRENT_TIMESTAMP(6) not null comment 'updatedAt'
) comment 'users' ;

drop table if exists `boards` cascade;

create table `boards` (
  `id` INT not null PRIMARY KEY AUTO_INCREMENT comment 'id'
  , `name` VARCHAR(50) null comment 'name'
  , `user_id` INT not null comment 'userCreatedId'
  , `is_deleted` BOOLEAN null comment 'deleted'
  , `created_at` DATETIME(6) default CURRENT_TIMESTAMP(6) not null comment 'createdAt'
  , `updated_at` DATETIME(6) default CURRENT_TIMESTAMP(6) not null comment 'updatedAt'
) comment 'boards' ;

drop table if exists `user_share_boards` cascade;

create table `user_share_boards` (
  `id` INT not null PRIMARY KEY AUTO_INCREMENT comment 'id'
  , `board_id` INT null comment 'boardId'
  , `user_id` INT not null comment 'userId'
  , `is_deleted` BOOLEAN null comment 'deleted'
  , `created_at` DATETIME(6) default CURRENT_TIMESTAMP(6) not null comment 'createdAt'
  , `updated_at` DATETIME(6) default CURRENT_TIMESTAMP(6) not null comment 'updatedAt'
) comment 'user_share_boards' ;

drop table if exists `boards_column_ww` cascade;

create table `boards_column_ww` (
  `id` INT not null PRIMARY KEY AUTO_INCREMENT comment 'id'
  , `board_id` INT null comment 'boardId'
  , `name` VARCHAR(255) not null comment 'name'
  , `is_deleted` BOOLEAN null comment 'deleted'
  , `created_at` DATETIME(6) default CURRENT_TIMESTAMP(6) not null comment 'createdAt'
  , `updated_at` DATETIME(6) default CURRENT_TIMESTAMP(6) not null comment 'updatedAt'
) comment 'boards_column_ww' ;

drop table if exists `boards_column_ti` cascade;

create table `boards_column_ti` (
  `id` INT not null PRIMARY KEY AUTO_INCREMENT comment 'id'
  , `board_id` INT null comment 'boardId'
  , `name` VARCHAR(255) not null comment 'name'
  , `is_deleted` BOOLEAN null comment 'deleted'
  , `created_at` DATETIME(6) default CURRENT_TIMESTAMP(6) not null comment 'createdAt'
  , `updated_at` DATETIME(6) default CURRENT_TIMESTAMP(6) not null comment 'updatedAt'
) comment 'boards_column_ti' ;

drop table if exists `boards_column_ai` cascade;

create table `boards_column_ai` (
  `id` INT not null PRIMARY KEY AUTO_INCREMENT comment 'id'
  , `board_id` INT null comment 'boardId'
  , `name` VARCHAR(255) not null comment 'name'
  , `is_deleted` BOOLEAN null comment 'deleted'
  , `created_at` DATETIME(6) default CURRENT_TIMESTAMP(6) not null comment 'createdAt'
  , `updated_at` DATETIME(6) default CURRENT_TIMESTAMP(6) not null comment 'updatedAt'
) comment 'boards_column_ai' ;

drop table if exists `tags` cascade;

create table `tags` (
  `id` INT not null PRIMARY KEY AUTO_INCREMENT comment 'id'
  , `ww_id` INT null comment 'columnWw'
  , `ti_id` INT null comment 'columnTI'
  , `ac_id` INT null comment 'columnAI'
  , `user_id` INT null comment 'userId'
  , `name` VARCHAR(255) not null comment 'name'
  , `is_deleted` BOOLEAN null comment 'deleted'
  , `created_at` DATETIME(6) default CURRENT_TIMESTAMP(6) not null comment 'createdAt'
  , `updated_at` DATETIME(6) default CURRENT_TIMESTAMP(6) not null comment 'updatedAt'
) comment 'tags' ;

drop table if exists `tokens` cascade;

create table `tokens` (
  `id` INT not null PRIMARY KEY AUTO_INCREMENT comment 'id'
  , `token` VARCHAR(255) not null comment 'name'
  , `expired_at` INT null comment 'columnWw'
  , `user_id` INT null comment 'userId'
  , `is_deleted` BOOLEAN null comment 'deleted'
  , `created_at` DATETIME(6) default CURRENT_TIMESTAMP(6) not null comment 'createdAt'
  , `updated_at` DATETIME(6) default CURRENT_TIMESTAMP(6) not null comment 'updatedAt'
) comment 'tokens' ;

-- foreign key
ALTER TABLE `boards` ADD FOREIGN KEY(`user_id`) REFERENCES `users`(`id`);
ALTER TABLE `user_share_boards` ADD FOREIGN KEY(`user_id`) REFERENCES `users`(`id`);
ALTER TABLE `user_share_boards` ADD FOREIGN KEY(`board_id`) REFERENCES `boards`(`id`);
ALTER TABLE `boards_column_ww` ADD FOREIGN KEY(`board_id`) REFERENCES `boards`(`id`);
ALTER TABLE `boards_column_ti` ADD FOREIGN KEY(`board_id`) REFERENCES `boards`(`id`);
ALTER TABLE `boards_column_ai` ADD FOREIGN KEY(`board_id`) REFERENCES `boards`(`id`);
ALTER TABLE `tags` ADD FOREIGN KEY(`ww_id`) REFERENCES `boards_column_ww`(`id`);
ALTER TABLE `tags` ADD FOREIGN KEY(`ti_id`) REFERENCES `boards_column_ti`(`id`);
ALTER TABLE `tags` ADD FOREIGN KEY(`ac_id`) REFERENCES `boards_column_ai`(`id`);
ALTER TABLE `tags` ADD FOREIGN KEY(`user_id`) REFERENCES `users`(`id`);
ALTER TABLE `tokens` ADD FOREIGN KEY(`user_id`) REFERENCES `users`(`id`);

