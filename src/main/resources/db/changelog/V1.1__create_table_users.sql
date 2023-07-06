create table users
(
    id        bigserial primary key,
    email     varchar(255),
    firstname varchar(255),
    lastname  varchar(255),
    password  varchar(255),
    role      varchar(255)
        constraint users_role_check
            check ((role)::text = ANY ((ARRAY ['USER'::character varying, 'ADMIN'::character varying])::text[]))
    );
