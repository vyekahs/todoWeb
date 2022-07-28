SELECT pg_terminate_backend(pg_stat_activity.pid)
FROM pg_stat_activity
WHERE pg_stat_activity.datname = 'app_db' AND pid <> pg_backend_pid();

DROP DATABASE IF EXISTS app_db;
DROP USER IF EXISTS app_user;

CREATE USER app_user PASSWORD 'app_pwd_to_change';
CREATE DATABASE app_db owner app_user ENCODING = 'UTF-8';