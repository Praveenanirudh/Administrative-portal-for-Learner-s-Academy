



--
-- Database: `administrative-portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--
CREATE DATABASE administrative_portal;
USE administrative_portal;
CREATE TABLE classes (
  id int NOT NULL,
  section int NOT NULL,
  teacher int NOT NULL,
  subject int  NOT NULL,
  time varchar(44 ) NOT NULL
);

--
-- Dumping data for table `classes`
--

INSERT INTO classes (id, section, teacher, subject, time) VALUES
(1, 1, 1, 1, '10:00'),
(2, 3, 2, 2, '12:30');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE students (
  id int NOT NULL,
  fname varchar(55) NOT NULL,
  lname varchar(55) NOT NULL,
  age int DEFAULT NULL,
  class int NOT NULL
);

--
-- Dumping data for table `students`
--

INSERT INTO students (id, fname, lname, age, class) VALUES
(1, 'Rahul', 'Raj', 21, 1),
(2, 'Praveen', 'Anirudh', 23, 2),
(4, 'Sunil', 'Ambilker', 21, 1),
(5, 'Ratheesh', 'CH', 18, 2),
(6, 'Navadeep', 'Ramanan', 24, 1),
(7, 'Aslam', 'A', 24, 2),
(8, 'Kiran', 'Soman', 20, 2);
-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE subjects (
  id int NOT NULL,
  name varchar(55) NOT NULL,
  shortcut varchar(50) NOT NULL
);

--
-- Dumping data for table `subjects`
--

INSERT INTO subjects (id, name, shortcut) VALUES
(1, 'Cora Java', 'CJ'),
(2, 'Full Stack Web development', 'FSD');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE teachers (
  id int NOT NULL,
  fname varchar(55) NOT NULL,
  lname varchar(55) NOT NULL,
  age varchar(11) DEFAULT NULL
);

--
-- Dumping data for table `teachers`
--

INSERT INTO teachers (id, fname, lname, age) VALUES
(1, 'Manali', 'Dubal', '32'),
(2, 'Ragavendra', 'Ck', '32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `classes`
--
ALTER TABLE classes
  ADD PRIMARY KEY (id),
  ADD KEY subject_id (subject),
  ADD KEY teacher_id (teacher);

--
-- Indexes for table `students`
--
ALTER TABLE students
  ADD PRIMARY KEY (id),
  ADD KEY class_id (class);

--
-- Indexes for table `subjects`
--
ALTER TABLE subjects
  ADD PRIMARY KEY (id);

--
-- Indexes for table `teachers`
--
ALTER TABLE teachers
  ADD PRIMARY KEY (id);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE classes
  MODIFY id int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE students
  MODIFY id int NOT NULL AUTO_INCREMENT;
 
--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE subjects
  MODIFY id int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE teachers
  MODIFY id int NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `classes`
--
ALTER TABLE classes
  ADD CONSTRAINT subject_id FOREIGN KEY (subject) REFERENCES subjects (id),
  ADD CONSTRAINT teacher_id FOREIGN KEY (teacher) REFERENCES teachers (id);

--
-- Constraints for table `students`
--
ALTER TABLE students
  ADD CONSTRAINT class_id FOREIGN KEY (class) REFERENCES classes (id);
COMMIT;

SELECT * FROM subjects;
UPDATE subjects
SET
name ='Core Java'
WHERE
id=1;


