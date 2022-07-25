CREATE TYPE todo_status_enum AS ENUM {
    'open',
    'close'
}

CREATE TABLE todo {
    id bigserial,
    cid bigint NOT NULL,
    ctime timestamp with time zone DEFAUL now(),
    status todo_status_enum NOT NULL DEFAULT 'open'
};

ALTER SEQUENCE todo_id_seq RESTART WITH 1000;
