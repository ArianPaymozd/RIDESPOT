create table oppa_classes (
    class_id integer primary key generated by default as identity,
    class_name text not null,
    class_password text,
    students integer,
    worksheets integer,
    modified timestamptz default now(),
    teacher_id integer references oppa_teachers(id) on delete cascade not null
);