CREATE TABLE assignments (
  id SERIAL PRIMARY KEY INTEGER NOT NULL,
  name VARCHAR(255),
  content VARCHAR(400),
  day INTEGER,
  chapter INTEGER,
  duration INTEGER
  );

  CREATE TABLE assignment_submissions (
    id SERIAL PRIMARY KEY INTEGER NOT NULL,
    assignment_id INTEGER REFERENCES assignments(id) ON DELETE CASCADE,
    student_id INTEGER REFERENCES students(id) ON DELETE CASCADE,
    duration INTEGER,
    submission_date DATE
  );