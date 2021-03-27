CREATE TABLE oppa_worksheets (
  worksheet_id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
  worksheet_name TEXT NOT NULL,
  class_id integer references oppa_classes(class_id) on delete cascade not null,
  questions INTEGER,
  reading TEXT NOT NULL,
  students INTEGER,
  animation_scroll TEXT,
  animation_questions TEXT,
  date_created TIMESTAMP DEFAULT now() NOT NULL,
  date_modified TIMESTAMP
);