USE MonsonUniversity1;

INSERT INTO CourseDeliveryTypes
VALUES(N'F', N'Face-to-Face', N'The course will be taught in a classroom. Consult the schedule to find out how often the class will meet.'),
      (N'L', N'Online', N'The course will de delivered over the Web and other means of remote communications such as video and/or conference call.'),
      (N'H', N'Hybrid', N'The course will be taught face-to-face part-time and online part-time. For example, the teacher and students may meet face-to-face in one session and online for the next section. Consult the course schedule or the teacher communicate how the class will be conducted.');


INSERT INTO TeachersStatus(TeacherStatusCode)
VALUES(N'N/A');

INSERT INTO TeachersStatus
VALUES(N'A', N'Active', N'The teacher is currently available.'),
      (N'N', N'Not Available', N'The teacher is not available to teach in the current semester, for any reason.'),
      (N'S', N'Suspended', N'The teacher''s teaching ability is currently problematic or under question.');


INSERT INTO PassesFailsStatus
VALUES(N'P', N'The student successfully passed the course.'),
      (N'F', N'The student did not satisfy the final requirements of the course.');


INSERT INTO Semesters(Semester, SemesterStart, SemesterEnd, Session1Start, Session1End, Session2Start, Session2End, OnlineStart, OnlineEnd)
VALUES(N'SPRING 2012', N'20120109', N'20120429', N'20120109', N'20120219', N'20120227', N'20120429', N'20120109', N'20120318'),
      (N'SUMMER 2012', N'20120514', N'20120819', N'20120514', N'20120708', N'20120716', N'20120819', N'20120514', N'20120708'),
      (N'FALL 2012',   N'20120917', N'20121216', N'20120917', N'20121114', N'20121022', N'20121216', N'20120920', N'20121014'),		
      (N'SPRING 2013', N'20130107', N'20130428', N'20130107', N'20130217', N'20130225', N'20130428', N'20130107', N'20130317'),
      (N'SUMMER 2013', N'20130513', N'20130818', N'20130513', N'20130707', N'20130715', N'20130818', N'20130513', N'20130707'),
      (N'FALL 2013',   N'20130916', N'20131215', N'20130916', N'20131103', N'20131021', N'20131215', N'20130919', N'20131013'),
      (N'SPRING 2014', N'20140106', N'20140427', N'20140106', N'20140216', N'20140224', N'20140427', N'20140106', N'20140323'),
      (N'SUMMER 2014', N'20140512', N'20140817', N'20140512', N'20140706', N'20140714', N'20140810', N'20140512', N'20140706'),
      (N'FALL 2014',   N'20140915', N'20141221', N'20140925', N'20141013', N'20141020', N'20141221', N'20140925', N'20141013'),
      (N'SPRING 2015', N'20150105', N'20150426', N'20150105', N'20150215', N'20150223', N'20150426', N'20150105', N'20150322'),
      (N'SUMMER 2015', N'20150511', N'20150809', N'20150511', N'20150705', N'20150713', N'20150809', N'20150511', N'20150705'),
      (N'FALL 2015',   N'20150914', N'20151220', N'20150917', N'20151018', N'20151026', N'20151220', N'20150917', N'20151018'),
      (N'SPRING 2016', N'20160104', N'20160424', N'20160104', N'20160214', N'20160229', N'20160424', N'20160104', N'20160320'),
      (N'SUMMER 2016', N'20160516', N'20160814', N'20160516', N'20160710', N'20160718', N'20160807', N'20160516', N'20160710'),
      (N'FALL 2016',   N'20160912', N'20161218', N'20160912', N'20161016', N'20161031', N'20161218', N'20160912', N'20161016'),
      (N'SPRING 2017', N'20170109', N'20170430', N'20170109', N'20170219', N'20170306', N'20170430', N'20170109', N'20170319'),
      (N'SUMMER 2017', N'20170515', N'20170820', N'20170515', N'20170709', N'20170717', N'20170820', N'20170515', N'20170709'),
      (N'FALL 2017',   N'20170911', N'20171217', N'20170911', N'20171022', N'20171030', N'20171217', N'20170911', N'20171022'); 


INSERT INTO GradingScales(LetterGrade, Minimum, Maximum, Mark)
VALUES(N'A', 90, 100, N'Excellent'),
      (N'B', 80,  89, N'Good'),
      (N'C', 70,  79, N'Below standards'),
      (N'D', 60,  69, N'pass'),
      (N'F', 69,   0, N'Failure');

INSERT INTO GradingScales(LetterGrade, Mark)
VALUES(N'FN', N'Failure for nonattendance'),
      (N'G',  N'Grade pending'),
      (N'P',  N'Passing'),
      (N'S',  N'Satisfactory'),
      (N'U',  N'Unsatisfactory'),
      (N'I',  N'Incomplete'),
      (N'AU', N'Audit'),
      (N'W',  N'Withdrew'); 


INSERT INTO Administration.Departments(DepartmentCode, DepartmentName)
VALUES(N'N/A',  NULL),
      (N'ADMN', N'Administration, Admissions, and Students Affairs'),
      (N'HRMN', N'Human Resources and Management'),
      (N'WRTG', N'Wrighting'),
      (N'EDUC', N'Educational Studies'),
      (N'LNGS', N'Languages and Linguistics'),
      (N'PSOP', N'Psychology, Sociology, and Philosophy'),
      (N'ITEC', N'Information Technology'),
      (N'FINA', N'Finances'),
      (N'ACCT', N'Accounting'),
      (N'EBCM', N'Economics, Business, Commerce, and Marketing'),
      (N'CJLE', N'Criminal Justice and Law Enforcement'),
      (N'CHEM', N'Chemistry'),
      (N'CMSC', N'Computer Sciences'),
      (N'ELCE', N'Electrical and Computer Engineering'),
      (N'CMST', N'Computer Studies'),
      (N'HSGE', N'History and Geography'),
      (N'ANTH', N'Anthropology'),
      (N'BIOL', N'Biology and Biotechnology'),
      (N'HLTH', N'Health Care and Gerontology'),
      (N'MATH', N'Mathematics and Statistics'),
      (N'PHYS', N'Physics and Mechanics'),
      (N'GVPS', N'Government and Political Sciences');

INSERT INTO Administration.EmploymentsCategories
VALUES(N'Administrator', N'This category includes high-level management, people in charge of planning, organizing, and managing the various major activities of the university. Another portion of this category includes deans and high-level employees who serve the educational or academic needs of the school.'),
      (N'General', N'This is for regular employees.'),
      (N'Contractor', N'This is for people who are not directly working for the university.'),
      (N'Intern', N'This is for interns and other temporary employees or contractors.'),
      (N'Other', N'Employees and contractors in this category do not clearly fit any of the other categories.');

INSERT INTO Administration.Employees(EmployeeNumber, FirstName, MiddleName, LastName, 
	DepartmentCode, Title, EmploymentCategory, Gender, Anniversary, CommunityCollegeDegrees,
	UndergraduateDegrees, GraduateDegrees, DoctorateDegrees, EmailAddress, YearlySalary, Username)
VALUES(N'279227', N'Donald', N'Henry', N'Leighton', N'ADMN', N'President', N'Administrator', 
       N'M', N'March 15', N'A.A.S', N'BS', N'MS', N'PhD', N'dleighton@monsonuniversity.edu', 274570, N'dleighton');

INSERT INTO Administration.Employees(EmployeeNumber, FirstName, MiddleName, LastName, 
	DepartmentCode, Title, EmploymentCategory, Gender, Anniversary, 
	UndergraduateDegrees, GraduateDegrees, EmailAddress, Username)
VALUES(N'502494', N'Anthony', N'Robert', N'Parrish',  N'ADMN', N'Provost', N'Administrator', 
       N'M', N'September 24', N'BA', N'MBA', N'aparrish@monsonuniversity.edu', N'aparrish');

INSERT INTO Administration.Employees(EmployeeNumber, FirstName, MiddleName, LastName,
	DepartmentCode, Title, EmploymentCategory, Gender, Anniversary, CommunityCollegeDegrees,
	UndergraduateDegrees, [Certificates], YearlySalary)
VALUES(N'394805', N'Claudia', N'Emilie', N'Shockley', N'ADMN', N'Administrative Assistant', N'General',
       N'F', N'December 16', N'A.A.', N'BA', N'MOUS', 48220);

INSERT INTO Administration.Employees(EmployeeNumber, FirstName, MiddleName, LastName, 
	DepartmentCode, Title, EmploymentCategory, Gender, Anniversary,
	DoctorateDegrees, EmailAddress, YearlySalary, Username)
VALUES(N'702048', N'Laurentine', N'Felicité', N'Avrilien', N'EDUC', N'Dean of Educational Studies', 
       N'Administrator', N'F', 'January 10', N'PhD', N'lavrilien@monsonuniversity.edu', 226970, N'lavrilien');

INSERT INTO Administration.Employees(EmployeeNumber, FirstName, MiddleName, LastName, 
	DepartmentCode, Title, EmploymentCategory, Gender, CommunityCollegeDegrees,
	GraduateDegrees, [Certificates], EmailAddress, YearlySalary, Username)
VALUES(N'930248', N'Jeannette', N'Veronica', N'Holms', N'ADMN', N'Vice President for Government Relations',
	   N'Administrator', N'F', N'A.A', N'MA', N'PMP', N'jholms@monsonuniversity.edu', 96920, N'jholms');

INSERT INTO Administration.Employees(EmployeeNumber, FirstName, LastName, 
	DepartmentCode, Title, EmploymentCategory, Anniversary, UndergraduateDegrees, 
	GraduateDegrees, DoctorateDegrees, EmailAddress, YearlySalary, Username)
VALUES(N'920084', N'Trayos', N'Corrighan', N'EDUC', N'Academic Consultant',
       N'Contractor', N'April 21', N'BA', N'MA', N'EdD', N'tcorrighan@gmail.com', 225680, N'tcorrighan');

INSERT INTO Administration.Employees(EmployeeNumber, FirstName, MiddleName, LastName, 
	DepartmentCode, Title, EmploymentCategory, Gender, Anniversary,
	UndergraduateDegrees, GraduateDegrees, DoctorateDegrees, EmailAddress, YearlySalary, Username)
VALUES(N'927486', N'Robert', N'John', N'Preston',  N'CMST', N'Dean of Computer Studies', N'Administrator', 
       N'M', N'May 18', N'BS', N'MS', N'PhD', N'apreston@monsonuniversity.edu', 242600, N'rpreston');

INSERT INTO Administration.Employees(EmployeeNumber, FirstName, MiddleName, LastName, 
	DepartmentCode, Title, EmploymentCategory, Gender, Anniversary, [Certificates], YearlySalary, Username)
VALUES(N'974173', N'Eleanor', N'Virginia', N'Pearlman', N'ITEC', N'Webmaster', N'General', N'F',
       N'March 15', N'Network+, MCSE, MCSA', 55800, N'Epearlman');

INSERT INTO Administration.Employees(EmployeeNumber, FirstName, LastName, 
	DepartmentCode, Title, EmploymentCategory, Gender, Anniversary, 
	GraduateDegrees, YearlySalary, Username)
VALUES(N'204850', N'Simon', N'Lew', N'FINA', N'Vice-President and Chief Financial Officer', 
       N'Administrator', N'M', N'March 31', N'MS', 135820, N'slew');

INSERT INTO Administration.Employees(EmployeeNumber, FirstName, MiddleName, LastName, 
	DepartmentCode, Title, EmploymentCategory, Gender, GraduateDegrees, 
	DoctorateDegrees, EmailAddress, YearlySalary, Username)
VALUES(N'275594', N'Kellie', N'Joan', N'Tierney', N'ADMN', N'Vice-President and Dean of Undergraduate Studies',
       N'Administrator', N'F', N'MA', N'PhD', N'kterney@monsonuniversity.edu', 222650, N'ktierney');

INSERT INTO Administration.Employees(EmployeeNumber, FirstName, MiddleName, LastName, 
	DepartmentCode, Title, EmploymentCategory, Gender, Anniversary, CommunityCollegeDegrees,
	UndergraduateDegrees, EmailAddress, YearlySalary, Username)
VALUES(N'908047', N'Ann', N'Laura', N'Tenney', N'FINA', N'Cashier', N'General', N'F', N'May 20',
       N'A.A.', N'BA', N'atenney@monsonuniversity.edu', 58050, N'atenney');

INSERT INTO Administration.Employees(EmployeeNumber, FirstName, MiddleName, LastName, 
	DepartmentCode, Title, EmploymentCategory, Gender, Anniversary,
	DoctorateDegrees, EmailAddress, YearlySalary, Username)
VALUES(N'483794', N'Jonas', N'Edmond', N'Benninger', N'GVPS', N'Dean of Government and Political Sciences',
       N'Administrator', N'M', N'August 14', N'JD', N'jbenninger@monsonuniversity.edu', 235750, N'jbenninger');

INSERT INTO Administration.Employees(EmployeeNumber, FirstName, LastName, 
	DepartmentCode, Title, EmploymentCategory, UndergraduateDegrees,
	[Certificates], YearlySalary, Username)
VALUES(N'829384', N'Faya', N'Haoun', N'ITEC', N'IT Support Technician', N'Contractor',
       N'BS', N'A+, Network+, MCSA', 66850, N'fhaoun');

INSERT INTO Administration.Employees(EmployeeNumber, FirstName, MiddleName, LastName, 
	DepartmentCode, Title, EmploymentCategory, Gender, UndergraduateDegrees,
	[Certificates], YearlySalary, Username)
VALUES(N'308407', N'Fatima', N'Georgia', N'Williams', N'FINA', N'Accountant', N'General', N'F',
       N'BS', N'CPA', 72450, N'fwilliams');

INSERT INTO Administration.Employees(EmployeeNumber, FirstName, MiddleName, LastName, 
	DepartmentCode, Title, EmploymentCategory, Gender, UndergraduateDegrees, GraduateDegrees, 
	DoctorateDegrees, YearlySalary, Username)
VALUES(N'828347', N'Robert', N'Elie', N'Marsden', N'MATH', N'Dean of Mathematics and statistics',
       N'Administrator', N'M', N'BS', N'MS', N'PhD', 252120, N'rmarsden');

INSERT INTO Administration.Employees(EmployeeNumber, FirstName, MiddleName, LastName, 
	DepartmentCode, Title, EmploymentCategory, Gender, [Certificates], Username)
VALUES(N'113958', N'Richard', N'Matthew', N'Little', N'ITEC', N'IT Support Technician', N'Contractor', N'M', N'MCSE', N'rlittle');

INSERT INTO Administration.Employees(EmployeeNumber, FirstName, MiddleName, LastName, 
	DepartmentCode, Title, EmploymentCategory, Gender, Anniversary, GraduateDegrees,
	DoctorateDegrees, EmailAddress, YearlySalary, Username)
VALUES(N'249579', N'Julius', N'Samuel', N'Pancolly', N'PHYS', N'Dean of Physics Studies', 
       N'Administrator', N'M', N'March 27', N'MS', N'PhD', N'jpancolly@monsonuniversity.edu', 248240, N'jpancolly');

INSERT INTO Administration.Employees(EmployeeNumber, FirstName, LastName, 
	DepartmentCode, Title, EmploymentCategory, Gender, CommunityCollegeDegrees,
	UndergraduateDegrees, GraduateDegrees, [Certificates], EmailAddress, YearlySalary, Username)
VALUES(N'381882', N'Charles', N'McAhan', N'ITEC', N'Vice-President and Chief Technology Officer', 
       N'Administrator', N'M', N'A.A.S.', N'BS', N'MS', N'MCSE, PMP', 
       N'cmcahany@monsonuniversity.edu', 122400, N'cmcahan');

INSERT INTO Administration.Employees(EmployeeNumber, FirstName, LastName, DepartmentCode, Title,
	EmploymentCategory, Gender, UndergraduateDegrees, DoctorateDegrees, EmailAddress, Username)
VALUES(N'263805', N'Sharon', N'Stinson', N'HLTH', N'Dean of Health Care and Gerontology Studies',
       N'Administrator', N'F', N'BA, BSN', N'OD', N'sstinson@monsonuniversity.edu', N'sstinson');

INSERT INTO Administration.Employees(EmployeeNumber, FirstName, MiddleName, LastName, DepartmentCode, Title, 
	EmploymentCategory, Gender, Anniversary, UndergraduateDegrees, GraduateDegrees,	YearlySalary, Username)
VALUES(N'624858', N'Melissa', N'Aimee', N'Gaussian', N'ADMN', N'Public Relations Representative',
       N'General', N'F', N'October 20', N'BA', N'MA', 68860, N'mgaussian');

INSERT INTO Administration.Employees(EmployeeNumber, FirstName, MiddleName, LastName, 
	DepartmentCode, Title, EmploymentCategory, Gender, Anniversary, UndergraduateDegrees,
	GraduateDegrees, DoctorateDegrees, EmailAddress, YearlySalary, Username)
VALUES(N'248842', N'Judith', N'Suzie', N'London', N'EBCM',
       N'Dean of Commercial, Business, and Economic Studies', N'Administrator', N'F', N'December 22',
	   N'BA', N'MBA', N'PhD', N'jlondon@monsonuniversity.edu', 207750, N'jlondon');

INSERT INTO Administration.Employees(EmployeeNumber, FirstName, MiddleName, LastName, DepartmentCode,
	Title, EmploymentCategory, Gender, Anniversary, UndergraduateDegrees, YearlySalary, Username)
VALUES(N'942249', N'Martin', N'Andrew', N'Schweinstenman', N'FINA', N'Cashier', N'General', N'M',
       N'June 29', N'BS', 46205, N'mschweinstenman');

INSERT INTO Administration.Employees(EmployeeNumber, FirstName, MiddleName, LastName, DepartmentCode,
    Title, EmploymentCategory, Gender, Anniversary, GraduateDegrees, DoctorateDegrees, YearlySalary, Username)
VALUES(N'161138', N'Laura', N'Fannie', N'Joansen', N'WRTG', N'Dean of Litterary Studies',
       N'Administrator', N'F', N'June 12', N'MA', N'ThD', 181690, N'ljoansen');

INSERT INTO Administration.Employees(EmployeeNumber, FirstName, LastName, DepartmentCode, 
	Title, EmploymentCategory, CommunityCollegeDegrees, UndergraduateDegrees, 
	GraduateDegrees, [Certificates], EmailAddress, YearlySalary, Username)
VALUES(N'482834', N'Claude', N'Riehle', N'ADMN', N'Program Manager',
	   N'Administrator', N'A.A.A', N'BA', N'MA', N'PMP', N'criehle@monsonuniversity.edu', 84840, N'criehle');

INSERT INTO Administration.Employees(EmployeeNumber, FirstName, LastName, 
	DepartmentCode, Title, EmploymentCategory, Gender, Anniversary, GraduateDegrees,
	DoctorateDegrees, EmailAddress, YearlySalary, Username)
VALUES(N'697300', N'Albert', N'Harney', N'FINA', N'Dean of Financial and Accounting Studies',
       N'Administrator', N'M', N'May 31', N'MS', N'PhD', N'aharney@monsonuniversity.edu', 244122, N'aharney');

INSERT INTO Administration.Employees(EmployeeNumber, FirstName, MiddleName, LastName,
	DepartmentCode, Title, EmploymentCategory, Gender, Anniversary,
	UndergraduateDegrees, YearlySalary)
VALUES(N'837057', N'Sidonie', N'Lucy', N'Charles', N'ADMN', N'Administrative Assistant', N'General',
       N'F', N'August 18', N'BA', 44315);

INSERT INTO Administration.Employees(EmployeeNumber, FirstName, MiddleName, LastName, 
	DepartmentCode, Title, EmploymentCategory, Gender, Anniversary, DoctorateDegrees, EmailAddress, YearlySalary, Username)
VALUES(N'409260', N'Edmond', N'Gabriel', N'Harrington', N'CJLE', N'Dean of Criminology, Justice, and Law Enforcement Studies',
       N'Administrator', N'M', N'April 27', N'JD', N'eharrington@monsonuniversity.edu', 246260, N'eharrington');

INSERT INTO Administration.Employees(EmployeeNumber, FirstName, LastName, DepartmentCode,
	EmploymentCategory, Gender, Anniversary, CommunityCollegeDegrees, [Certificates], Username)
VALUES(N'200005', N'Catherine', N'Lehmann', N'ADMN', N'Intern', N'F', N'July 17', N'A.A.', N'A+', N'clehman');

INSERT INTO Administration.Employees(EmployeeNumber, FirstName, MiddleName, LastName, 
	DepartmentCode, Title, EmploymentCategory, Gender,
	UndergraduateDegrees, GraduateDegrees, DoctorateDegrees, EmailAddress, YearlySalary, Username)
VALUES(N'274039', N'Joyce', N'Denise', N'Blue', N'CHEM', N'Dean of Chemistry Studies',
       N'Administrator', N'F', N'BA, BS', N'MA, MS', N'PhD, MD', N'jblue@monsonuniversity.edu', 225555, N'jblue');

INSERT INTO Administration.Employees(EmployeeNumber, FirstName, MiddleName, LastName, 
	DepartmentCode, Title, EmploymentCategory, Gender, Anniversary,
	UndergraduateDegrees, GraduateDegrees, DoctorateDegrees, EmailAddress, YearlySalary, Username)
VALUES(N'605924', N'Phillipe', N'Ernest', N'Portman', N'BIOL',
       N'Dean of Biological and Biotechnology Studies', N'Administrator', N'M', N'December 31',
	   N'BS', N'MS', N'MD, PhD', N'pportman@monsonuniversity.edu', 244575, N'pportman');

INSERT INTO Administration.Employees(EmployeeNumber, FirstName, MiddleName, LastName,
	DepartmentCode, Title, EmploymentCategory, Gender, Anniversary,
	UndergraduateDegrees, [Certificates], EmailAddress, YearlySalary, Username)
VALUES(N'485706', N'Elise', N'Gabriella', N'Mann', N'ADMN', N'Administrative Assistant', N'General',
       N'F', N'September 23', N'BA', N'MOUS', N'emann@monsonuniversity.edu', 62150, N'emann');
GO
INSERT INTO Administration.Employees(EmployeeNumber, FirstName, MiddleName, LastName, DepartmentCode,
	Title, Gender, Anniversary, UndergraduateDegrees, DoctorateDegrees, YearlySalary, Username)
VALUES(N'247591', N'Leonid', N'George', N'Hawthorne', N'HSGE',
       N'Dean of History, Geography, and Political Sciences', N'M', N'February 11', N'BA', N'PhD', 148625, N'lhawthorne');
GO
INSERT INTO Administration.Employees(EmployeeNumber, FirstName, MiddleName, LastName, 
	DepartmentCode, Title, EmploymentCategory, Gender, Anniversary,
	UndergraduateDegrees, GraduateDegrees, DoctorateDegrees, EmailAddress, YearlySalary, Username)
VALUES(N'640207', N'Kimberly', N'Carlette', N'Edelman', N'PSOP', N'Dean of Psychology, Sociology, and Philosophy',
       N'Administrator', N'F', N'November 13', N'BA', N'MA', N'PhD', N'kedelman@monsonuniversity.edu', 214840, N'kedelman');
GO
INSERT INTO Administration.Employees(EmployeeNumber, FirstName, LastName, 
	DepartmentCode, Title, EmploymentCategory, Gender, Anniversary, UndergraduateDegrees,
	GraduateDegrees, DoctorateDegrees, EmailAddress, YearlySalary, Username)
VALUES(N'582007', N'Alexander', N'Nolan', N'CMSC', N'Dean of Computer Sciences and Computer Engineering',
       N'Administrator', N'M', N'May 20', N'BS', N'MS', N'PhD', N'anolan@monsonuniversity.edu', 175420, N'anolan');
GO
INSERT INTO Administration.Employees(EmployeeNumber, FirstName, LastName, 
	DepartmentCode, Title, EmploymentCategory, Gender, Anniversary, GraduateDegrees, [Certificates], YearlySalary, Username)
VALUES(N'400384', N'Jennifer', N'Palermo', N'HRMN', N'Dean of Human Resources and Management Studies',
       N'Administrator', N'F', N'April 15', N'MBA', N'PMP', 166260, N'jpalermo');
GO
    
INSERT INTO Administration.Locations(LocationCode, LocationName)
VALUES(N'ADMAS', N'Administration and Auxiliary Services'),
      (N'HMNSS', N'Humanities and Social Sciences Building'),
      (N'FSOPR', N'Facilities Services and Operations'),
      (N'SEAMT', N'Science, Engineering, and Mathematics Building'),
      (N'NAASB', N'Natural and Applied Sciences Building'),
      (N'PACTR', N'Performing Arts Center'),
      (N'PEAHL', N'Physical Education and Health Building'),
      (N'LATAC', N'Literatrue and Academic Building'),
      (N'SPASC', N'Space Science Center'), 
      (N'SMALC', N'Sun, Moon, and Life Center'),
      (N'JPTRC', N'Jupiter Center'),
      (N'LIBRM', N'Libraries and Media Building'),
      (N'DSSSS', N'Disability Support Services'),
      (N'SECRB', N'Security Building'),
      (N'ONLNE', N'Online'),
      (N'HYBRD', N'Hybrid');
GO

INSERT INTO UndergraduateMajors(Major, Dean)
VALUES(N'English',      N'161138'),
      (N'Linguistics',  N'161138'),
      (N'History',      N'247591'),
      (N'Geography',    N'247591'),
      (N'Finance',      N'697300'),
      (N'Sociology',    N'640207'),
      (N'Psychology',   N'640207'),
      (N'Economics',    N'248842'),
      (N'Marketing',    N'248842'),
      (N'Statistics',   N'828347'),
      (N'Accounting',   N'697300'),
      (N'Gerontology',  N'640207'),
      (N'Biology',      N'605924'),
      (N'Chemistry',    N'274039'),
      (N'Anthropology', N'247591'),
      (N'Political Science',	     N'247591'),
      (N'Criminal Justice and Law Enforcement', N'409260'),
      (N'Emergency Management',	     N'400384'),
      (N'Business Administration',   N'248842'),
      (N'Human Resource Management', N'400384'),
      (N'Computer Science',                 N'582007'),
      (N'Computer Networks and Security',   N'927486'),
      (N'Information Systems Management',   N'927486'),
      (N'Computer and Information Science', N'927486'),
      (N'Health Care Management and Policy', N'927486');
GO
INSERT INTO UndergraduateMajors(Major, Dean, Notes)
VALUES(N'Mathematics', N'828347', N'The student may have to pass some preliminary test(s) to evaluate his or her level. A student pursuing a degree in mathematics must start with courses whose numbers are greater than 100.');
GO
INSERT INTO UndergraduateMajors(Major, Dean)
VALUES(N'Physics', N'249579')
  
INSERT INTO Minors(Minor)
VALUES(N'English'),
      (N'Spanish'),
      (N'Finance'),
      (N'Economics'),
      (N'Computing'),
      (N'Marketing'), 
      (N'Sociology'),
      (N'Psychology'),
      (N'Philosophy'),
      (N'Accounting'),
      (N'Geography'),
      (N'Gerontology'),
      (N'Art History'),
      (N'Biology'),
      (N'History'),
      (N'Journalism'),
      (N'Chemistry'),
      (N'Linguistics'),
      (N'Anthropology'),
      (N'Criminal Justice'),
      (N'Political Science'),
      (N'Mathematical Sciences'),
      (N'Speech Communication'),
      (N'Communication Studies'),
      (N'Emergency Management'),
      (N'Business Administration'),
      (N'Health Care Management'),
      (N'Human Resource Management'),
      (N'Customer Service Management'),
      (N'Computer Science'),
      (N'Cybersecurity'),
      (N'Physics'),
      (N'Theology');
GO

INSERT INTO Administration.Teachers(TeacherNumber, FirstName, MiddleName, LastName, [Degrees], DepartmentCode, TeacherStatusCode, Gender, Username, Notes)
VALUES(N'293800', N'Sarah', N'Annette',  N'Corso',    N'BS, MA, MS, PhD', N'CMST', N'A', N'F', N'scorso', NULL),
      (N'263648', N'Jane',  N'Felicity', N'Magnuson', N'BA, MA',          N'EDUC', N'A', N'F', N'jmagnuson', N'EDPD 100'),
      (N'447406', N'James', N'Jason',    N'Stonebaker',  N'MA',           N'EDUC', N'A', N'M', N'jstonebaker', N'LBRS 100');
GO
INSERT INTO Administration.Teachers(TeacherNumber, FirstName, LastName, [Degrees], DepartmentCode, TeacherStatusCode, Gender, Username, Notes)
VALUES(N'839228', N'Jeannine', N'Simms',  N'BA, MA', N'PSOP',     N'N/A', N'F', N'jsimms',  N'This is a professor of sociology.'),
      (N'973584', N'Daniel',   N'Osmont', N'BS, MS', N'CMST',     N'A',   N'M', N'dosmont', N'This is a professor of computer studies, specialist in computer and information security.'),
      (N'297004', N'Steven',   N'Post',   N'BS, MA, MS', N'CMST', N'A',   N'M', N'spost',   N'This is a professor in information systems and management, IFSM.');
GO
INSERT INTO Administration.Teachers(TeacherNumber, FirstName, MiddleName, LastName, [Degrees], DepartmentCode, TeacherStatusCode, Gender, Username, Notes)
VALUES(N'409286', N'Katalina', N'Gabriella', N'Osorio', N'MA, PhD', N'GVPS', N'A', N'F', N'kosorio', N'This is a professor in govervnment studies, public policies, and political science studies.'),
      (N'208408', N'Daniel',   N'Gabriel',   N'Witt',   N'MA, PhD', N'HSGE', N'A', N'F', N'dwitt',   N'This is a professor of history.');
GO
INSERT INTO Administration.Teachers(TeacherNumber, FirstName, LastName, [Degrees], DepartmentCode, TeacherStatusCode, Gender, Username, Notes)
VALUES(N'603925', N'Donna',  N'Yoder',   N'MS, MA',      N'LNGS', N'A', N'F', N'dyoder', N'EDPD 100'),
      (N'928007', N'Joseph', N'Layman',  N'MA',          N'MATH', N'N', N'M', N'jlayman', N'This is a professor of mathematics'),
      (N'928377', N'Eric',   N'Muldoor', N'BS, MS, PhD', N'ACCT', N'A', N'M', N'emuldoor', N''),
      (N'203080', N'Ayinda', N'Kaihibu', N'BS, MA, PhD', N'EBCM', N'A', N'F', N'akaihibu', N'This is a professor of economy.');
GO
INSERT INTO Administration.Teachers(TeacherNumber, FirstName, MiddleName, LastName, [Degrees], DepartmentCode, TeacherStatusCode, Gender, Username, Notes)
VALUES(N'796137', N'Patricia',  N'Leslie',   N'Brief',   N'PhD',     N'LNGS', N'A', N'F', N'pbrief', N'This is a professor of English.'),
      (N'979384', N'David',     N'Justin',   N'Palmer',  N'BA, MA',  N'EDUC', N'A', N'F', N'dpalmer', N'LBRS 100'),
      (N'920747', N'Annette',   N'Julienne', N'Lotts',   N'BA, MA',  N'EDUC', N'A', N'F', N'alotts', N'LBRS 100'),
      (N'793847', N'Seraphine', N'Angie',    N'Roeper',	 N'MS, PhD', N'MATH', N'A', N'F', N'sroeper', N'This is a professor of statistics and probabilities.'),
      (N'700800', N'Zachary',   N'Philemon', N'Jurgens', N'MA, PhD', N'PSOP', N'A', N'M', N'zjurgens', N'This is a professor of philosophy.');
GO
INSERT INTO Administration.Teachers(TeacherNumber, FirstName, LastName, [Degrees], DepartmentCode, TeacherStatusCode, Username, Notes)
VALUES(N'397480', N'Maleekha', N'Hinson',  N'MA, MS', N'EBCM', N'A', N'mhinson', N'This is a professor of economy.');
GO
INSERT INTO Administration.Teachers(TeacherNumber, FirstName, MiddleName, LastName, [Degrees], DepartmentCode, TeacherStatusCode, Gender, Username, Notes)
VALUES(N'283048', N'Helene',    N'Judith',    N'Lansing',  N'MA, PhD', N'CMST', N'A', N'F', N'hlansing', N'This is professor of computer studies, specializing in web design and development'),
      (N'974037', N'Charlotte', N'Jeannette', N'Brundage', N'MA, PhD', N'LNGS', N'A', N'F', N'cbrundage', N'This is a professor of linguistics.');
GO
INSERT INTO Administration.Teachers(TeacherNumber, FirstName, LastName, [Degrees], DepartmentCode, TeacherStatusCode, Gender, Username, Notes)
VALUES(N'800704', N'Steve',     N'Klaus', N'MS, PhD', N'MATH', N'A', N'M', N'sklaus', N'This is a professor of statistics.'),
      (N'868400', N'Kimberley', N'Avery', N'BA, MA',  N'PSOP', N'A', N'F', N'kavery', N'This is a professor of sociology.');
GO
INSERT INTO Administration.Teachers(TeacherNumber, FirstName, MiddleName, LastName, [Degrees], DepartmentCode, TeacherStatusCode, Gender, Username, Notes)
VALUES(N'588030', N'Carmen', N'Jeannette', N'Blake',   N'MA, PhD', N'WRTG', N'A', N'F', N'cblake', N'This is a professor of writing.'),
      (N'408044', N'Shannon', N'Jennifer', N'Martens', N'MA',      N'EBCM', N'A', N'F', N'sartens', N'This is a professor of business management.');
GO
INSERT INTO Administration.Teachers(TeacherNumber, FirstName, LastName, [Degrees], DepartmentCode, TeacherStatusCode, Gender, Username, Notes)
VALUES(N'297940', N'Thomas', N'Phillips', N'BS, MS, PhD', N'MATH', N'A', N'M', N'tphillips', N'This is a math teacher');
GO
INSERT INTO Administration.Teachers(TeacherNumber, FirstName, LastName, [Degrees], DepartmentCode, TeacherStatusCode, Gender, Username, Notes)
VALUES(N'188394', N'Eric',   N'Phillips', N'BS, MS, PhD', N'ACCT', N'A', N'M', N'ephillips', NULL),
      (N'972940', N'Thomas', N'Rayne',    N'BA, MA',      N'WRTG', N'A', N'M', N'trayne', N'This is a professor of writing.');
GO
INSERT INTO Administration.Teachers(TeacherNumber, FirstName, LastName, [Degrees], DepartmentCode, TeacherStatusCode, Gender, Username, Notes)
VALUES(N'202924', N'Steve',   N'Thomas',  N'MA, PhD',     N'PSOP', N'A', N'M', N'sthomas', N'This is a professor of behavioral sciences.'),
      (N'240448', N'Diana',   N'Shuster', N'BA, MA, PhD', N'EBCM', N'A', N'F', N'dshuster', N'This is a professor of marketing.'),
      (N'402888', N'Timothy', N'Mills',   N'MS',          N'CMST', N'A', N'M', N'tmills', N'This is a professor of information architecture and a specialist of computer structure.');
GO
INSERT INTO Administration.Teachers(TeacherNumber, FirstName, LastName, [Degrees], DepartmentCode, TeacherStatusCode, Gender, Username, Notes)
VALUES(N'601084', N'Steven', N'Freiddle', N'BA, MA', N'ANTH', N'A', N'M', N'sfreiddle', N'This is a professor of anthropology.');
GO
INSERT INTO Administration.Teachers(TeacherNumber, FirstName, MiddleName, LastName, [Degrees], DepartmentCode, TeacherStatusCode, Gender, Username)
VALUES(N'802604', N'Ellena', N'Annabella', N'Vasquez', N'MA', N'HSGE', N'A', N'F', N'evasquez');
GO
INSERT INTO Administration.Teachers(TeacherNumber, FirstName, LastName, [Degrees], DepartmentCode, TeacherStatusCode, Gender, Username, Notes)
VALUES(N'494020', N'Patrick', N'Eichel', N'MS, PhD', N'MATH', N'A', N'M', N'peichel', N'This is a professor of statistics.');
GO
INSERT INTO Administration.Teachers(TeacherNumber, FirstName, MiddleName, LastName, [Degrees], DepartmentCode, TeacherStatusCode, Gender, Username, Notes)
VALUES(N'220280', N'Antoinette', N'Jennifer', N'Guglielmi', N'BS, MS', N'CMST', N'A', N'F', N'aguglielmi', N'This is professor of computer studies, specializing in web design and development');
GO
INSERT INTO Administration.Teachers(TeacherNumber, FirstName, MiddleName, LastName, [Degrees], DepartmentCode, TeacherStatusCode, Gender, Username, Notes)
VALUES(N'208404', N'Stephen', N'Arnold',  N'Bradley', N'PhD',     N'CHEM', N'A', N'M', N'sbradley', N'This is a professor of chemistry.'),
      (N'957924', N'Amy',     N'Justine', N'Sesvold', N'BA, MA',  N'CMST', N'A', N'F', N'asesvold', N'This is a professor of computer applications.'),
      (N'703502', N'Sarah',   N'Deborah', N'Worth',   N'PhD',     N'LNGS', N'A', N'F', N'sworth', N''),
      (N'708848', N'Carmen',  N'Elise',   N'Conway',  N'MA, PhD', N'EDUC', N'A', N'F', N'cconway', N'EDPD 100');
GO
INSERT INTO Administration.Teachers(TeacherNumber, FirstName, LastName, [Degrees], DepartmentCode, TeacherStatusCode, Gender, Username)
VALUES(N'297035', N'Stephanie', N'Lopez', N'MS', N'ACCT', N'N', N'F', N'slopez');
GO
INSERT INTO Administration.Teachers(TeacherNumber, FirstName, MiddleName, LastName, [Degrees], DepartmentCode, TeacherStatusCode, Gender, Username)
VALUES(N'682928', N'Jay', N'Henry', N'Hamilton', N'MS, PhD', N'MATH', N'N', N'M', N'jhamilton');
GO
INSERT INTO Administration.Teachers(TeacherNumber, FirstName, LastName, [Degrees], DepartmentCode, TeacherStatusCode, Gender, Username)
VALUES(N'938008', N'Albert', N'Harney', N'PhD', N'FINA', N'A', N'M', N'aharney');
GO
INSERT INTO Administration.Teachers(TeacherNumber, FirstName, MiddleName, LastName, [Degrees], DepartmentCode, TeacherStatusCode, Gender, Username, Notes)
VALUES(N'461739', N'Veronica', N'Bethanie', N'Pitts',      N'PhD', N'FINA', N'A', N'F', N'vpitts', NULL),
      (N'927940', N'Patricia', N'Mary',     N'Hu',         N'PhD', N'EDUC', N'A', N'F', N'phu', N'This is a professor of gerontology.'),
      (N'770284', N'Joseph',   N'Arsene',   N'Stephenson', N'PhD', N'EBCM', N'A', N'M', N'sjephenson', NULL),
      (N'300428', N'Brad',     'Alan',      N'Neidenthal', N'JD',  N'BIOL', N'A', N'M', N'bneidenthal', NULL);
GO
INSERT INTO Administration.Teachers(TeacherNumber, FirstName, LastName, [Degrees], DepartmentCode, TeacherStatusCode, Gender, Username, Notes)
VALUES(N'428395', N'Joseph',    N'Dylan',       N'MS, PhD', N'WRTG', N'A', N'M', N'jdylan', NULL),
      (N'639482', N'Stephanie', N'Rosenkrantz', N'MA',      N'EDUC', N'A', N'F', N'srosenkrantz', N'LBRS 100');
GO
INSERT INTO Administration.Teachers(TeacherNumber, FirstName, MiddleName, LastName, [Degrees], DepartmentCode, TeacherStatusCode, Gender, Username)
VALUES(N'729380', N'Jay', N'Donald', N'Prince', N'BS, MA, MS', N'FINA', N'A', N'M', N'jprince');
GO
INSERT INTO Administration.Teachers(TeacherNumber, FirstName, LastName, [Degrees], DepartmentCode, TeacherStatusCode, Gender, Username)
VALUES(N'520203', N'Anne',     N'Wine',    N'MS, PhD', N'MATH', N'A', N'F', N'awine'),
      (N'293804', N'Stephen',  N'Martins', N'MA, PhD', N'WRTG', N'N', N'M', N'smartins'),
      (N'297200', N'Anne',     N'Bambous', N'MS',      N'FINA', N'S', N'F', N'abambous');
GO
INSERT INTO Administration.Teachers(TeacherNumber, FirstName, MiddleName, LastName, [Degrees], DepartmentCode, TeacherStatusCode, Gender, Username)
VALUES(N'160205', N'Steve', N'Alexander', N'Rosner', N'MA, PhD', N'CMSC', N'A', N'M', N'srosner');
GO
INSERT INTO Administration.Teachers(TeacherNumber, FirstName, LastName, [Degrees], DepartmentCode, TeacherStatusCode, Gender, Username)
VALUES(N'592073', N'Rolando', N'Andrews', N'MS, PhD', N'FINA', N'A', N'M', N'randrews');
GO
INSERT INTO Administration.Teachers(TeacherNumber, FirstName, MiddleName, LastName, [Degrees], DepartmentCode, TeacherStatusCode, Gender, Username)
VALUES(N'203842', N'Jeanne', N'April', N'Ingram', N'MA, PhD', N'FINA', N'A', N'F', N'japril');
GO
INSERT INTO Administration.Teachers(TeacherNumber, FirstName, LastName, [Degrees], DepartmentCode, TeacherStatusCode, Gender, Username)
VALUES(N'917039', N'Amy',    N'Stahl',     N'PhD',     N'PSOP', N'S', N'F', N'astahl'),
      (N'811808', N'Marcia', N'Contreras', N'MA, PhD', N'LNGS', N'A', N'F', N'mcontreras');
GO
INSERT INTO Administration.Teachers(TeacherNumber, FirstName, LastName, [Degrees], DepartmentCode, TeacherStatusCode, Gender, Username)
VALUES(N'640840', N'Maryam', N'Whittaker', N'MA, MS, PhD', N'MATH', N'A', N'F', N'mhittaker');
GO
INSERT INTO Administration.Teachers(TeacherNumber, LastName, TeacherStatusCode, Gender)
VALUES(N'280385', N'Thomas', N'A', N'M');
GO
INSERT INTO Administration.Teachers(TeacherNumber, FirstName, LastName, [Degrees], DepartmentCode, TeacherStatusCode, Gender, Username, Notes)
VALUES(N'520830', N'Jay',        N'Lewis', N'MA',  N'CMST', N'A', N'M', N'jlewis', N'This is a computer of databases and a specialist in Oracle.'),
      (N'293294', N'Christiana', N'Lopez', N'PhD', N'HSGE', N'A', N'F', N'clopez', N'This is a professor of geography');
GO
INSERT INTO Administration.Teachers(TeacherNumber, FirstName, MiddleName, LastName, [Degrees], DepartmentCode, TeacherStatusCode, Gender, Username)
VALUES(N'203814', N'Jeremy',  N'Adolphe', N'Hartfield', N'MS, PhD', N'BIOL', N'A', N'M', N'jadolphe'),
      (N'836475', N'Giacomo', N'David',   N'Velez',     N'MA, PhD', N'LNGS', N'A', N'F', N'gvelez');
GO
INSERT INTO Administration.Teachers(TeacherNumber, FirstName, LastName, [Degrees], DepartmentCode, TeacherStatusCode, Gender, Username)
VALUES(N'820796', N'James', N'Leach', N'MD', N'BIOL', N'A', N'M', N'jleach');
GO
INSERT INTO Administration.Teachers(TeacherNumber, FirstName, MiddleName, LastName, [Degrees], DepartmentCode, TeacherStatusCode, Gender, Username, Notes)
VALUES(N'538405', N'Adrienne', N'Annie', N'Wing', N'MA, MS', N'HLTH', N'A', N'F', N'awing', N'This is a professor of gerontology');
GO
INSERT INTO Administration.Teachers(TeacherNumber, FirstName, LastName, [Degrees], DepartmentCode, TeacherStatusCode, Gender, Username)
VALUES(N'860384', N'Wendie', N'Walker',   N'MS, MA',  N'EBCM', N'A', N'F', N'wwalker'),
      (N'620390', N'Ann',    N'Whoolery', N'MA, PhD', N'HRMN', N'A', N'F', N'awhoolery');
GO
INSERT INTO Administration.Teachers(TeacherNumber, FirstName, MiddleName, LastName, [Degrees], DepartmentCode, TeacherStatusCode, Gender, Username)
VALUES(N'860374', N'Steve', N'Roland', N'Rosner', N'MS', N'EDUC', N'A', N'M', N'sroland');
GO
INSERT INTO Administration.Teachers(TeacherNumber, FirstName, LastName, [Degrees], DepartmentCode, TeacherStatusCode, Gender, Username, Notes)
VALUES(N'296305', N'Tony',      N'Mullins',  N'JD',           N'CMST', N'A', N'M', N'tmullins', N''),
      (N'927144', N'Annabelle', N'Coen',     N'MS, MS, PhD',  N'CMSC', N'A', N'F', N'acoen', N''),
      (N'283029', N'Donald',    N'Fisher',   N'MS, MA',       N'HSGE', N'A', N'M', N'dfisher', N'This is a professor of history.'),
      (N'282642', N'Angelina',  N'Hansen',   N'MD, PhD',      N'BIOL', N'A', N'F', N'ahansen', N'');
GO
INSERT INTO Administration.Teachers(TeacherNumber, FirstName, LastName, [Degrees], DepartmentCode, TeacherStatusCode, Username)
VALUES(N'820294', N'Anoka', N'Fongkuei', N'PhD', N'ACCT', N'A', N'afongkuei');
GO
INSERT INTO Administration.Teachers(TeacherNumber, FirstName, LastName, [Degrees], DepartmentCode, TeacherStatusCode, Gender, Username)
VALUES(N'449449', N'Anne', N'Leighton', N'PhD', N'HRMN', N'A', N'F', N'aleighton');
GO
INSERT INTO Administration.Teachers(TeacherNumber, FirstName, MiddleName, LastName, [Degrees], DepartmentCode, TeacherStatusCode, Gender, Username, Notes)
VALUES(N'704807', N'Joan', N'Darlene', N'Leighton',       N'MA, PhD', N'N/A',  N'A', N'F', N'jlee', N''),
      (N'229374', N'Luke', N'Herbert', N'Parkinson', N'MA, PhD', N'HSGE', N'A', N'F', N'lparkinson', N'This is a professor of history.');
GO
INSERT INTO Administration.Teachers(TeacherNumber, FirstName, MiddleName, LastName, [Degrees], DepartmentCode, TeacherStatusCode, Gender, Username, [Password], Notes)
VALUES(N'482685', N'Michael',   N'John',    N'Dooley',   N'PhD',         N'PSOP', N'A', N'M', N'mdooley',  N'Password1', N'This is a professor of sociology.'),
      (N'280584', N'Richard',   N'Marcus',  N'Bellamy',  N'MA, PhD',     N'PSOP', N'A', N'M', N'rbellamy', N'Password1', N'This is a professor of philosophy.'),
      (N'620966', N'Adienne',   N'Justine', N'Wing',     N'BA, MA, PhD', N'PSOP', N'A', N'F', N'awing',   N'Password1', N'This is a professor of philosophy.'),
      (N'925794', N'Elisabeth', N'Lilie',   N'Kirchner', N'PhD',         N'PSOP', N'A', N'F', N'ekirney', N'Password1', N'This is a professor of philosophy.');
GO
INSERT INTO Administration.Teachers(TeacherNumber, FirstName, LastName, [Degrees], DepartmentCode, TeacherStatusCode, Gender, Username, Notes)
VALUES(N'339429', N'Lisa',    N'Williamson', N'PhD', N'EBCM', N'A', N'F', N'lwilliamson', N'This is a professor of economy.'),
      (N'249382', N'Johanna', N'Possemato',  N'PhD', N'GVPS', N'A', N'F', N'jpossemato', NULL);
GO
INSERT INTO Administration.Teachers(TeacherNumber, FirstName, MiddleName, LastName, [Degrees], DepartmentCode, TeacherStatusCode, Gender, Username)
VALUES(N'297304', N'Rhonda', N'Hermine', N'Walker', N'MA', N'N/A', N'S', N'F', N'rwalker');
GO
INSERT INTO Administration.Teachers(TeacherNumber, FirstName, LastName, [Degrees], DepartmentCode, TeacherStatusCode, Gender, Username, Notes)
VALUES(N'750070', N'Nicholas', N'Beschloss', N'BS, MS, PhD', N'CMST', N'A', N'M', N'nbeschloss', N''),
      (N'202942', N'Jennie',   N'Sorenson',  N'BA, MA, PhD', N'EBCM', N'A', N'F', N'scorso', N''),
      (N'420594', N'Felicia',  N'Douglas',   N'MA, PhD',     N'HSGE', N'A', N'F', N'cblake', N'This is a professor of history, specialized in religions and historic social and philosophical issues.'),
      (N'284085', N'Marie',    N'Webb',      N'BA, MA',      N'LNGS', N'A', N'F', N'mwebb', N''),
      (N'950408', N'Marcario', N'Stefanos',  N'BS, MS',      N'CMST', N'A', N'M', N'mstefanos', N'This is professor of client/server databases, specialist in Microsoft SQL Server.');
GO
INSERT INTO Administration.Teachers(TeacherNumber, FirstName, MiddleName, LastName, [Degrees], DepartmentCode, TeacherStatusCode, Gender, Username)
VALUES(N'828305', N'Patricia', N'Jennie', N'Brief', N'MA, PhD', N'HSGE', N'A', N'F', N'pbrief');
GO
INSERT INTO Administration.Teachers(TeacherNumber, FirstName, LastName, [Degrees], DepartmentCode, TeacherStatusCode, Gender, Username)
VALUES(N'924839', N'Ryan', N'Duck', N'MS', N'ACCT', N'A', N'M', N'rduck');
GO
INSERT INTO Administration.Teachers(TeacherNumber, FirstName, LastName, DepartmentCode, TeacherStatusCode, Gender, Username)
VALUES(N'629537', N'Krista',   N'Cole',    N'CMST', N'A', N'F',   N'kcole'),
      (N'508048', N'Maleekha', N'Jackson', N'EDUC', N'A', N'F',   N'mjackson'),
      (N'572753', N'Paula',    N'Suarez',  N'HRMN', N'N/A', N'F', N'psuarez'),
      (N'186935', N'Luisa',    N'Vanecek', N'CMST', N'A', N'F',   N'lvanecek');
GO
INSERT INTO Administration.Teachers(TeacherNumber, FirstName, MiddleName, LastName, [Degrees], DepartmentCode, TeacherStatusCode, Gender, Username)
VALUES(N'928849', N'Wendy', N'Juliette', N'Huntsmann', N'MS, PhD', N'MATH', N'A', N'F', N'whuntsmann');
GO
INSERT INTO Administration.Teachers(TeacherNumber, FirstName, LastName, [Degrees], TeacherStatusCode, Gender, Username)
VALUES(N'182038', N'Kathie',  N'Elliott', N'MA, PhD', N'S', N'F', N'kelliott'),
      (N'800840', N'Camilla', N'Rossi',   N'PhD',     N'A', N'F', N'crossi');
GO
INSERT INTO Administration.Teachers(TeacherNumber, FirstName, LastName, TeacherStatusCode, Gender, Username)
VALUES(N'820384', N'Marianne', N'Oslin', N'A', N'F', N'moslin');
GO
INSERT INTO Administration.Teachers(TeacherNumber, FirstName, MiddleName, LastName, DepartmentCode, TeacherStatusCode, Gender, Username)
VALUES(N'803085', N'Samantha', N'Arlette', N'Millendez', N'LNGS', N'A', N'F', N'smillendez'),
      (N'930751', N'Patricia', N'Ginger',  N'Villa',     N'LNGS', N'A', N'F', N'pvilla');
GO
INSERT INTO Administration.Teachers(TeacherNumber, FirstName, LastName, [Degrees], DepartmentCode, TeacherStatusCode, Gender, Username)
VALUES(N'202080', N'Anne-Marie', N'Monte', N'MS', N'BIOL', N'A', N'F', N'ammonte');
GO
INSERT INTO Administration.Teachers(TeacherNumber, FirstName, MiddleName, LastName, TeacherStatusCode, Gender, Username)
VALUES(N'828248', N'Megan', N'Julie', N'Williams', N'A', N'F', N'mwilliams');
GO
INSERT INTO Administration.Teachers(TeacherNumber, FirstName, LastName, [Degrees], DepartmentCode, TeacherStatusCode, Gender, Username, Notes)
VALUES(N'797229', N'Wesley', N'Schaeublum', N'BS, MS, PhD', N'CMSC', N'A', N'M', N'wschaeublum', N'This is a professor of computer programming, specializing in C++ and C-based languages.');
GO
INSERT INTO Administration.Teachers(TeacherNumber, FirstName, LastName, DepartmentCode, TeacherStatusCode, Gender, Username)
VALUES(N'847025', N'Krysta', N'Humpfries', N'FINA', N'A', N'F', N'khumpfries');
GO
INSERT INTO Administration.Teachers(TeacherNumber, FirstName, LastName, TeacherStatusCode, Gender, Username)
VALUES(N'857374', N'Kathya', N'Chen', N'N', N'F', N'kchen');
GO
INSERT INTO Administration.Teachers(TeacherNumber, FirstName, LastName, DepartmentCode, TeacherStatusCode, Gender, Username, Notes)
VALUES(N'692247', N'Ginger', N'Welessley', N'CMST', N'A', N'F', N'gelessley', N'This is a professor of relational databases.');
GO
INSERT INTO Administration.Teachers(TeacherNumber, FirstName, LastName, [Degrees], TeacherStatusCode, Gender, Username)
VALUES(N'377468', N'Michael', N'Olney', N'PhD', N'A', N'M', N'molney');
GO
INSERT INTO Administration.Teachers(TeacherNumber, FirstName, LastName, [Degrees], DepartmentCode, TeacherStatusCode, Gender, Username)
VALUES(N'516624', N'Santina', N'Mathis', N'PhD', N'CMSC', N'A', N'F', N'smathis');
GO

INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits)
VALUES(N'LBRS 100', N'Library and Research', 1),
      (N'ASTR 100', N'Foundations of Astronomy', 3),
      (N'PHSC 100', N'Foundations of Physical Sciences', 3),
      (N'EDPD 100', N'Education and Personal Development', 3);
GO

INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits)
VALUES(N'WRTG 101', N'Introduction to Writing', 3),
      (N'WRTG 102', N'Academic Writing', 3);
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits, Prerequisites)
VALUES(N'WRTG 201', N'Introduction to Narratives', 3, N'WRTG 101'),
      (N'WRTG 288', N'Standard English Grammar', 3, N'WRTG 101'),
      (N'WRTG 351', N'Introduction to Professional Writing', 3, N'WRTG 101');
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits)
VALUES(N'WRTG 381', N'Introductory Seminar in Creative Writing', 3);
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits, Prerequisites)
VALUES(N'WRTG 388', N'Advanced Grammar and Style', 3, N'WRTG 288'),
      (N'WRTG 390', N'Advanced Professional Writing', 3, N'WRTG 351'),
      (N'WRTG 392', N'Technical Writing', 3, N'WRTG 351'),
      (N'WRTG 393', N'Business Writing', 3, N'WRTG 351'),
      (N'WRTG 394', N'Legal Writing', 3, N'WRTG 351');
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits) VALUES(N'WRTG 395', N'Research Writing', 3);
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits, Prerequisites)
VALUES(N'WRTG 461', N'Grant and Proposal Writing', 3, N'WRTG 351'),
      (N'WRTG 482', N'Writing for Managers', 3, N'WRTG 288'),
      (N'WRTG 483', N'Writing for Government and Public Policies', 3, N'WRTG 351'),
      (N'WRTG 484', N'Writing for Science and Technology', 3, N'WRTG 351, WRTG 390'),
      (N'WRTG 485', N'Writing for Health Professions', 3, N'WRTG 351, WRTG 390');
GO

INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits) VALUES(N'ACCT 220', N'Principles of Accounting I', 3);
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits)
VALUES(N'ACCT 224', N'Accounting Software', 3),
      (N'ACCT 302', N'Accounting for Nonaccounting Managers', 3);
GO

INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits, Prerequisites)
VALUES(N'ACCT 311', N'Intermediate Accounting I', 3, N'ACCT 220'),
      (N'ACCT 312', N'Intermediate Accounting II', 3, N'ACCT 311');
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits) VALUES(N'ACCT 320', N'Fraud Detection and Deterrence', 3);
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits, Prerequisites)
VALUES(N'ACCT 321', N'Accounting in Information Systems I', 3, N'ACCT 220'),
      (N'ACCT 322', N'Accounting in Information Systems II', 3, N'ACCT 321'),
      (N'ACCT 323', N'Cost Accounting', 3, N'ACCT 220'),
      (N'ACCT 331', N'Income Tax I', 3, N'ACCT 220'),
      (N'ACCT 332', N'Income Tax II', 3, N'ACCT 331'),
      (N'ACCT 410', N'Accounting for Government and Not-for-Profit Organizations', 3, N'ACCT 220'),
      (N'ACCT 412', N'Professionalism and Ethics in Accounting', 3, N'ACCT 220'),
      (N'ACCT 432', N'Theory and Practice in Accounting Audit', 3, N'ACCT 311'),
      (N'ACCT 440', N'Advanced Accounting', 3, N'ACCT 312'),
      (N'ACCT 442', N'International  Accounting ', 3, N'ACCT 312'),
      (N'ACCT 443', N'Fraud and Forensic Accounting', 3, N'ACCT 321'),
      (N'ACCT 451', N'Government Accounting Management', 3, N'ACCT 321');
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits)
VALUES(N'ACCT 452', N'Government Auditing in Accounting', 3),
      (N'ACCT 498', N'Selected Topics in Accounting', 3);
GO

INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits)
VALUES(N'ANTH 201', N'Introduction to Cultural Anthropology', 3),
      (N'ANTH 202', N'Introduction to Biological Anthropology', 3),
      (N'ANTH 203', N'Introduction to Anthropological Fieldwork', 3),
      (N'ANTH 211', N'Introduction to Field Methods in Archaeology', 3),
      (N'ANTH 242', N'African Cultural Modernities', 3),
      (N'ANTH 251', N'Introduction to Medical Anthropology', 3),
      (N'ANTH 261', N'Introduction to Socio-cultural Anthropology and Linguistics', 3),
      (N'ANTH 272', N'Urban Anthropology - Culture of the City', 3),
      (N'ANTH 285', N'The African Disapora', 3),
      (N'ANTH 302', N'Class, Culture and Power in Contemporary Society', 3),
      (N'ANTH 318', N'Migration, Labor and Rights', 3),
      (N'ANTH 322', N'Ethnographic Imagination', 3),
      (N'ANTH 332', N'Method and Theory of Biological Anthropology', 3),
      (N'ANTH 333', N'Method and Theory of Archaeology', 3),
      (N'ANTH 334', N'Method and Theory of Socio-Cultural Anthropology', 3),
      (N'ANTH 388', N'Experiential Learning Internship', 3),
      (N'ANTH 412', N'Culture and Globalization', 3),
      (N'ANTH 415', N'Immigration and Integration in Europe, Canada and the US', 3),
      (N'ANTH 445', N'Anthropological Fieldwork in Argentina', 3),
      (N'ANTH 446', N'Anthropological Fieldwork in Brazil', 3),
      (N'ANTH 462', N'Ethnology of the Immigrant Life', 4),
      (N'ANTH 464', N'Applied Urban Ethnography', 3),
      (N'ANTH 486', N'Ethnicity and Nationalism', 3),
      (N'ANTH 498', N'Anthropological Research', 3);
GO

INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits)
VALUES(N'ARTH 204', N'Film and Culture Studies', 3),
      (N'ARTH 334', N'Understanding Movies', 3),
      (N'ARTH 352', N'History of World Art I', 3),
      (N'ARTH 354', N'History of Western Art I', 3);
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits, Prerequisites)
VALUES(N'ARTH 362', N'History of World Art II', 3, N'ARTH 352'),
      (N'ARTH 364', N'History of Western Art II', 3, N'ARTH 354');
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits)
VALUES(N'ARTH 376', N'History of Graphic Art', 3),
      (N'ARTH 478', N'Women in the Visual Arts', 3);
GO

INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits)
VALUES(N'BEHS 102', N'Technology in Contemporary Society', 3),
      (N'BEHS 210', N'Introduction to Social Sciences', 3),
      (N'BEHS 220', N'Diversity Awareness', 3),
      (N'BEHS 302', N'Research Methods in the Social Sciences', 3),
      (N'BEHS 320', N'Disability Studies', 3),
      (N'BEHS 344', N'Parenting Today', 3),
      (N'BEHS 360', N'Introduction to Alcohol and Society', 3),
      (N'BEHS 365', N'Individuals, Society and Environmental Sustainability', 3),
      (N'BEHS 382', N'End of Life: Issues and Perspectives', 3),
      (N'BEHS 453', N'Domestic Violence', 3),
      (N'BEHS 498', N'Advanced Seminar in Social Sciences', 3);
GO

INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits) VALUES(N'BIOL 101', N'Introduction to Biology', 3);
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits, Notes)
VALUES(N'BIOL 102', N'Laboratory in Biology', 1, N'This course accompanies BIOL 101. Although this course is optional, it cannot be taken by itself, only concurrently with BIOL 101 or following it.');
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits) VALUES(N'BIOL 106', N'Foundations of Biology', 3);
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits)
VALUES(N'BIOL 121', N'Human Biology', 3),
      (N'BIOL 122', N'Oceanic Biology', 3),
      (N'BIOL 150', N'Introduction to Genetics', 3);
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits, Prerequisites)
VALUES(N'BIOL 151', N'Human Genetics', 3, N'BIOL 121'),
      (N'BIOL 160', N'Introduction to Aging', 3, N'BIOL 101'),
      (N'BIOL 215', N'Biology of Human Diseases', 3, N'BIOL 121'),
      (N'BIOL 216', N'Bacteria, Viruses, and Health', 3, N'BIOL 101'),
      (N'BIOL 300', N'Introduction to the Cancer', 3, N'BIOL 101'),
      (N'BIOL 304', N'Cellular Biology and Biochemistry', 3, N'BIOL 101'),
      (N'BIOL 310', N'Introduction to Vertebrate Physiology', 3, N'BIOL 101'),
      (N'BIOL 312', N'Molecular Biology and Genetics', 3, N'BIOL 101');
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits) VALUES(N'BIOL 313', N'Animal Behavior', 3);
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits, Prerequisites)
VALUES(N'BIOL 320', N'Introduction to Forensic Biology', 3, N'BIOL 101'),
      (N'BIOL 324', N'Bioethics', 3, N'BIOL 101');
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits) VALUES(N'BIOL 330', N'Introduction to Epidemiology', 1);
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits, Prerequisites)
VALUES(N'BIOL 340', N'Introduction to Molecular and Cellular Biology', 3, N'BIOL 101'),
      (N'BIOL 344', N'Bioinformatics', 3, N'BIOL 101'),
      (N'BIOL 350', N'Foundations of Neurobiology', 3, N'BIOL 101');
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits)
VALUES(N'BIOL 351', N'Nutrition in Cancer and Heart Disease', 1),
      (N'BIOL 352', N'Bacteria, Fungi, and Fermentation', 1),
      (N'BIOL 353', N'Pesticides and the Environment', 1),
      (N'BIOL 354', N'Killer Viruses', 1),
      (N'BIOL 355', N'Evolution', 1);
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits, Prerequisites)
VALUES(N'BIOL 360', N'Foundations of Microbiology', 3, N'BIOL 101');
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits)
VALUES(N'BIOL 380', N'Foundations of Epidemiology', 1),
      (N'BIOL 390', N'Foundations of Immunobiology.', 1),
      (N'BIOL 404', N'Biology of Infectious Diseases', 3);
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits, Prerequisites)
VALUES(N'BIOL 422', N'Molecular and Cellular Neurobiology', 3, N'BIOL 350');
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits) VALUES(N'BIOL 498', N'', 3);
GO

INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits)
VALUES(N'BMGT 110', N'Introduction to Business and Management', 3);
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits, Prerequisites)
VALUES(N'ACCT 221', N'Principles of Accounting II', 3, N'BMGT 110, ACCT 220');
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits)
VALUES(N'BMGT 304', N'Managing E-Commerce in Organizations', 3),
      (N'BMGT 306', N'Knowledge Management', 3),
      (N'BMGT 312', N'Women in Business', 3),
      (N'BMGT 314', N'Import and Export: Managing Global Trade', 3),
      (N'BMGT 318', N'Decision Making', 3),
      (N'BMGT 321', N'Starting a Small Business', 1),
      (N'BMGT 322', N'The Small-Business Plan', 1),
      (N'BMGT 330', N'Entrepreneurship and New Venture Planning', 3),
      (N'BMGT 336', N'Gender Issues in Business', 3),
      (N'BMGT 342', N'Small Business Management', 3),
      (N'BMGT 346', N'Introduction to Federal Contracting', 3),
      (N'BMGT 356', N'Management and Organization Theory', 3),
      (N'BMGT 370', N'Organizational Leadership', 3),
      (N'BMGT 372', N'Supply Chain Management', 3),
      (N'BMGT 381', N'Business Law I', 3)
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits, Prerequisites)
VALUES(N'BMGT 382', N'Business Law II', 3, N'BMGT 381');
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits)
VALUES(N'BMGT 385', N'Business Supervision', 3),
      (N'BMGT 390', N'Introduction to Global Business', 3),
      (N'BMGT 391', N'Real Estate Principles I', 3);
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits, Prerequisites)
VALUES(N'BMGT 392', N'Real Estate Principles II', 3, N'BMGT 391');
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits)
VALUES(N'BMGT 412', N'Process Improvement and Performance Measurements', 3),
      (N'BMGT 432', N'Managing Early-Stage Business and Entrepreneurial Ventures', 3),
      (N'BMGT 434', N'International Business Law', 3),
      (N'BMGT 455', N'Managing Across Cultures and Borders', 3),
      (N'BMGT 465', N'Organizational Development and Transformation', 3),
      (N'BMGT 468', N'Organizational Behavior', 3),
      (N'BMGT 481', N'Project Management I', 3);
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits, Prerequisites)
VALUES(N'BMGT 482', N'Project Management II', 3, N'BMGT 481');
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits)
VALUES(N'BMGT 486', N'Business Ethics', 3),
      (N'BMGT 498', N'Strategic Management', 3);
GO

INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits)
VALUES(N'CBRS 301', N'Introduction to Cybersecurity', 3),
      (N'CBRS 312', N'Foundations of Information System Security', 3),
      (N'CBRS 412', N'Security Policy Analysis', 3),
      (N'CBRS 414', N'Security Policy Implementation', 3),
      (N'CBRS 422', N'Evaluating Emerging Technologies', 3),
      (N'CBRS 498', N'Practical Applications in Cybersecurity Management', 3);
GO

INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits)
VALUES(N'CHEM 101', N'Introduction to General Chemistry', 3),
      (N'CHEM 102', N'General Chemistry I Laboratory', 1),
      (N'CHEM 105', N'Fundamentals of Organic and Biochemistry', 3);
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits, Prerequisites)
VALUES(N'CHEM 141', N'Introduction to Chemistry for Engineers', 3, N'MATH 115');
GO

INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits)
VALUES(N'CHEM 142', N'General Chemistry Laboratory for Engineers - Laboratory', 1),
      (N'CHEM 146', N'Principles of General Chemistry', 3),
      (N'CHEM 147', N'Principles of Chemistry - Laboratory', 1),
      (N'CHEM 221', N'Organic Chemistry I', 4),
      (N'CHEM 222', N'Organic Chemistry - Laboratory I', 1),
      (N'CHEM 231', N'Organic Chemistry II', 4),
      (N'CHEM 232', N'Organic Chemistry II Laboratory', 1), 
      (N'CHEM 250', N'General Chemistry and Energetics', 2),
      (N'CHEM 252', N'General Bioanalytical Chemistry - Laboratory', 2),
      (N'CHEM 277', N'Fundamentals of Analytical and Bioanalytical Chemistry - Laboratory', 2),
      (N'CHEM 320', N'Inorganic Chemistry', 3),
      (N'CHEM 340', N'Air Pollution', 3),
      (N'CHEM 420', N'Radiochemistry', 3),
      (N'CHEM 424', N'Instrumental Methods of Analysis', 4),
      (N'CHEM 440', N'Advanced Organic Chemistry', 3),
      (N'CHEM 450', N'Ethics in Science and Engineering', 3),
      (N'CHEM 454', N'Structural Determination using Spectroscopic Methods', 3),
      (N'CHEM 456', N'Environmental Chemistry', 3),
      (N'CHEM 461', N'Physical Chemistry I', 3),
      (N'CHEM 462', N'Physical Chemistry I - Laboratory', 2),
      (N'CHEM 471', N'Physical Chemistry II', 3),
      (N'CHEM 472', N'Physical Chemistry II - Laboratory', 2),
      (N'CHEM 482', N'Advanced Organic Chemistry - Laboratory', 4),
      (N'CHEM 483', N'Advanced Inorganic Chemistry Laboratory', 3),
      (N'CHEM 484', N'Advanced Synthesis Laboratory', 3),
      (N'CHEM 498', N'Special Topics in Chemistry', 3);
GO

INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits)
VALUES(N'CJLE 100', N'Introduction to Criminal Justice', 3),
      (N'CJLE 201', N'Introduction to Investigative Forensics', 3),
      (N'CJLE 211', N'Introduction to Criminology', 3),
      (N'CJLE 222', N'Criminal Law in Action', 3),
      (N'CJLE 234', N'Criminal Procedure and Evidence', 3),
      (N'CJLE 311', N'Criminalistics I: The Comparative Disciplines', 4),
      (N'CJLE 312', N'Criminalistics II: The Scientific Disciplines', 4),
      (N'CJLE 321', N'Digital Forensics in the Criminal Justice System', 3),
      (N'CJLE 340', N'Law-Enforcement Administration', 3),
      (N'CJLE 342', N'Criminal Investigation', 3),
      (N'CJLE 344', N'Crime Scene Investigation', 3),
      (N'CJLE 351', N'Introduction to Security Management', 3),
      (N'CJLE 354', N'Juvenile Delinquency', 3),
      (N'CJLE 360', N'Victimology', 3),
      (N'CJLE 370', N'Race, Crime, and Criminal Justice', 3),
      (N'CJLE 380', N'Ethical Behavior in Criminal Justice', 3),
      (N'CJLE 390', N'Cyber Crime and Security', 3),
      (N'CJLE 412', N'The Intelligence Cycle', 3),
      (N'CJLE 420', N'Intelligence Analysis', 3),
      (N'CJLE 424', N'Legal and Ethical Issues in Intelligence', 3),
      (N'CJLE 425', N'Advanced Intelligence Analysis', 3),
      (N'CJLE 432', N'Medical and Legal Investigations of Death', 3),
      (N'CJLE 442', N'Principles of Digital Analysis', 3),
      (N'CJLE 444', N'Law of Corrections', 3),
      (N'CJLE 448', N'Correctional Reentry and Transition', 3),
      (N'CJLE 452', N'White-Collar Crime', 3),
      (N'CJLE 460', N'Psychology of Criminal Behavior', 3),
      (N'CJLE 492', N'Criminal Justice Research', 3),
      (N'CJLE 484', N'Correctional Administration', 3),
      (N'CJLE 498', N'Issues in Criminal Justice', 3);
GO

INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits)
VALUES(N'CMIS 101', N'Introduction to Information Systems', 3),
      (N'CMIS 102', N'Computer Organization and Design', 3),
      (N'CMIS 108', N'Social Networking', 3);
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits, CourseDescription)
VALUES(N'CMIS 110', N'Introduction to Web Design', 3, N'This should be the first course for those who choose to pursue a Bachelor''s Degree program in web development.'),
      (N'CMIS 121', N'Introduction to Desktop Relational Databases', 3, N'This is a course for students who want to develop client/server databases. The course gives a broad overview of various available database environments, including Microsoft Access, Oracle, Microsoft SQL Server, and MySQL. Students will learn to create tables, sort records, filter lists, and generate reports.'),
      (N'CMIS 122', N'Introduction to Web-Database Applications', 3, N'This course is for students who want to develop web-based database applications. The course gives a broad overview of various available database environments, including Microsoft Access, Oracle, Microsoft SQL Server, and MySQL. Students will learn to create tables and views, sort records, filter lists, and generate reports.');
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits) VALUES(N'CMIS 132', N'Web Publishing, Behaviors, and Ethics', 3);
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits, Prerequisites) VALUES(N'CMIS 160', N'Introduction to XML', 3, N'CMIS 102');
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits, CourseDescription) VALUES(N'CMIS 200', N'Introduction to Programming', 3, N'This is a general course in programming with comparative studies of C#, Java, Visual Basic, JavaScript, PHP, Perl, etc. The student will be required to write in programming in two languages. This course should be selected only for students not familiar with programming languages or who cannot choose which ones to pursue.');
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits)
VALUES(N'CMIS 201', N'Introduction to Scripting Languages', 3),
      (N'CMIS 202', N'Introduction to JavaScript', 3),
      (N'CMIS 205', N'Introduction to Ruby on Rails', 3);
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits, Prerequisites, Notes)
VALUES(N'CMIS 210', N'Foundations of Web-Based Application Development', 3, N'CMIS 110, CMIS 200', N'In this course, the student is introduced to web programming en general, using JavaScript, PHP, ASP, ASP.NET, and Perl.'),
      (N'CMIS 221', N'Creating Microsoft SQL Server Databases', 3, N'CMIS 121', N'This is the second course for students who create client/server databases. Students must have a (strong) background in desktop databases. Using Microsoft SQL Server, students will create stored functions, stored procedures, triggers, and transactions.'),
      (N'CMIS 222', N'Creating Oracle Databases', 3, N'CMIS 122', N'This is the second course for students who create client/server databases. Students must have a (strong) background in desktop databases. Using Oracle, students will create stored functions, stored procedures, triggers, and transactions.');
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits, Prerequisites)
VALUES(N'CMIS 241', N'Web-Based Database Applications Using Microsoft SQL Server', 3, N'CMIS 121'),
      (N'CMIS 242', N'Web-Based Database Applications Using Oracle', 3, N'CMIS 122');
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits) VALUES(N'CMIS 243', N'Introduction to Web Hosting', 3);
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits, Prerequisites) VALUES(N'CMIS 311', N'Web Development and Graphics', 3, N'CMIS 110');
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits, CourseDescription) VALUES(N'CMIS 421', N'Enterprise Database Development Using Microsoft SQL Server', 3, N'In this course, students learn to create users, insure connectivity, and manage permissions.');
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits) VALUES(N'CMIS 422', N'Enterprise Database Development Using Oracle', 3);
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits, Prerequisites) VALUES(N'CMIS 443', N'Advanced Web Hosting', 3, N'CMIS 243');
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits, Prerequisites) VALUES(N'CMIS 460', N'Programming Web Services', 3, N'CMIS 220');
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits) VALUES(N'CMIS 498', N'Selected Topics in Computer and Information Sciences', 3);
GO

INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits)
VALUES(N'CMIT 101', N'Introduction to Computer Architecture', 3),
      (N'CMIT 102', N'Introduction to Desktop Operating Systems', 3),
      (N'CMIT 104', N'Introduction to Windows Desktop Operating Systems', 3),
      (N'CMIT 105', N'Introduction to UNIX and Linux', 3),
      (N'CMIT 106', N'Introduction to Computer Networks', 3),
      (N'CMIT 140', N'Introduction to Servers', 3),
      (N'CMIT 200', N'Introduction to Computer Troubleshooting', 3);
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits, Prerequisites)
VALUES(N'CMIT 201', N'Maintaining Windows Desktop Operating Systems', 3, N'CMIT 104'),
      (N'CMIT 242', N'Fundamentals of Windows Server Administration', 3, N'CMIT 104');
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits)
VALUES(N'CMIT 310', N'Introduction to Computer Network Security', 3),
      (N'CMIT 311', N'Introduction to Digital Forensics', 3),
      (N'CMIT 312', N'Ethical Hacking', 3);
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits, Prerequisites)
VALUES(N'CMIT 320', N'Linux Network Infrastructure', 3, N'CMIT 105'),
      (N'CMIT 321', N'Linux System Administration', 3, N'CMIT 105'),
      (N'CMIT 340', N'Windows Network Infrastructure', 3, N'CMIT 242'),
      (N'CMIT 342', N'Windows Network Administration', 3, N'CMIT 242'),
      (N'CMIT 343', N'Windows Directory Services Infrastructure', 3, N'CMIT 242'),
      (N'CMIT 344', N'Windows Server Application Infrastructure', 3, N'CMIT 242');
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits)
VALUES(N'CMIT 362', N'Designing Cisco Networks', 3),
      (N'CMIT 364', N'Interconnecting Cisco Devices', 3);
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits, Prerequisites)
VALUES(N'CMIT 410', N'Advanced Information System Security', 3, N'CMIT 310'),
      (N'CMIT 411', N'Advanced Digital Forensics', 3, N'CMIT 311'),
      (N'CMIT 422', N'Windows Server Enterprise Administration', 3, N'CMIT 242');
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits) VALUES(N'CMIT 498', N'Managing an Information System', 3);
GO

INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits, Prerequisites)
VALUES(N'CMMT 202', N'Media Communication and Society', 3, N'WRTG 101'),
      (N'CMMT 302', N'Mass Communication and Media Studies', 3, N'WRTG 101'),
      (N'CMMT 380', N'Language in Social Contexts', 3, N'WRTG 101'),
      (N'CMMT 400', N'Mass Media Law', 3, N'WRTG 101');
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits)
VALUES(N'CMMT 480', N'Research Methods in Communication Studies', 3),
      (N'CMMT 493', N'Strategies for Visual Communication', 3),
      (N'CMST 498', N'Projects in Digital Media and Web Technology', 3);
GO

INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits)
VALUES(N'CMSC 101', N'Introduction to Computer Programming With C++', 3),
      (N'CMSC 102', N'Introduction to Computer Programming With Java', 3),
      (N'CMSC 103', N'Introduction to Computer Programming With C#', 3),
      (N'CMSC 104', N'Introduction to Computer Programming With Visual Basic', 3),
      (N'CMSC 140', N'Introduction to Discrete Structures', 3),
      (N'CMSC 141', N'Introduction to Problem Solving and Algorithm Design', 3),
      (N'CMSC 201', N'Intermediate Computer Programming With C++', 3),
      (N'CMSC 202', N'Intermediate Computer Programming With Java', 3),
      (N'CMSC 203', N'Intermediate Computer Programming With C#', 3),
      (N'CMSC 204', N'Intermediate Computer Programming With Visual Basic', 3),
      (N'CMSC 212', N'Smart Phone Application Development', 3),
      (N'CMSC 220', N'Introduction to Game Development', 3),
      (N'CMSC 236', N'Foundations of Embedded Systems', 3);
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits, Prerequisites)
VALUES(N'CMSC 322', N'Advanced Game Design and Development', 3, N'CMSC 212');
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits)
VALUES(N'CMSC 320', N'Introduction to Computer Graphics', 3),
      (N'CMSC 330', N'Advanced Programming Languages', 3),
      (N'CMSC 332', N'Object-Oriented and Concurrent Programming', 3),
      (N'CMSC 334', N'Data Structures and Analysis', 3),
      (N'CMSC 401', N'Foundations of Human Language Technology', 3),
      (N'CMSC 402', N'Foundations of Artificial Intelligence', 3),
      (N'CMSC 420', N'Advanced Computer Graphics', 3),
      (N'CMSC 422', N'Image and Signal Processing', 3),
      (N'CMSC 440', N'Compilers and Interpreters', 3),
      (N'CMSC 498', N'Computer Science Projects', 3);
GO

INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits)
VALUES(N'CMST 200', N'Introduction to Computer Studies', 3),
      (N'CMST 251', N'Fundamentals of Digital Media', 3),
      (N'CMST 305', N'Digital Media and Society', 3),
      (N'CMST 310', N'Introduction to Image Editing', 3),
      (N'CMST 312', N'Fundamentals of Electronic Publishing', 3),
      (N'CMST 321', N'Fundamentals of Graphics 3D Modeling', 3),
      (N'CMST 322', N'Principles of Multimedia I', 3);
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits, Prerequisites)
VALUES(N'CMST 323', N'Principles of Multimedia II', 3, N'CMST 322'),
      (N'CMST 332', N'Intermediate of Graphics 3D Modeling', 3, N'CMST 321');
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits)
VALUES(N'CMST 344', N'Advanced Application Software', 3),
      (N'CMST 450', N'Introduction to Digital Video Editing', 3);
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits, Prerequisites)
VALUES(N'CMST 412', N'Advanced Image Editing', 3, N'CMST 310');
GO

INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits)
VALUES(N'ECON 101', N'Introduction to Business Economics', 3);
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits)
VALUES(N'ECON 152', N'Monetary Economics and the Global Economy', 3),
      (N'ECON 200', N'Principles of Microeconomics', 3),
      (N'ECON 201', N'Principles of Macroeconomics', 3),
      (N'ECON 211', N'Theory of International Economics', 3);
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits, Prerequisites)
VALUES(N'ECON 212', N'International Financial Markets', 3, N'ECON 101');
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits)
VALUES(N'ECON 260', N'Methods and Tools for Economic Analysis', 3),
      (N'ECON 300', N'Intermediate Microeconomic Theory', 3),
      (N'ECON 301', N'Intermediate Macroeconomic Theory and Policy', 3),
      (N'ECON 312', N'Economic Development', 3),
      (N'ECON 313', N'Global Economic Policies', 3),
      (N'ECON 314', N'Economic Statistics', 3);
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits)
VALUES(N'ECON 315', N'Financial Markets and the Macroeconomy', 3),
      (N'ECON 321', N'Intermediate Microeconomic Analysis', 3),
      (N'ECON 322', N'Intermediate Macroeconomic Analysis', 3);
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits, Prerequisites)
VALUES(N'ECON 330', N'Money and Banking', 3, N'FINA 101');
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits)
VALUES(N'ECON 400', N'Computer Methods in Economics', 3),
      (N'ECON 402', N'Macroeconomic Models and Forecasting', 3),
      (N'ECON 412', N'Globalization and Capital Markets', 3),
      (N'ECON 413', N'Public Finance and Public Policy', 3),
      (N'ECON 414', N'Law and Economics', 3);
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits, Prerequisites)
VALUES(N'ECON 421', N'Econometrics I', 3, N'ECON 101'),
      (N'ECON 422', N'Econometrics II', 3, N'ECON 421');
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits)
VALUES(N'ECON 444', N'Health Care Economics', 3),
      (N'ECON 498', N'Selected Topics in Economics', 3);
GO

INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits, Prerequisites)
VALUES(N'EMGT 300', N'Introduction to Emergency Management', 3, N'WRTG 101'),
      (N'EMGT 305', N'Emergency Response Preparedness and Planning', 3, N'EMGT 300'),
      (N'EMGT 306', N'The Business of Emergency Management', 3, N'EMGT 300'),
      (N'EMGT 308', N'Political and Policy Issues in Emergency Management', 3, N'EMGT 300'),
      (N'EMGT 310', N'Social Dimensions of Disasters', 3, N'EMGT 305');
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits)
VALUES(N'EMGT 312', N'Continuity of Operations Planning and Implementation', 3);
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits, Prerequisites)
VALUES(N'EMGT 402', N'Terrorism Issues in Emergency Management', 3, N'EMGT 305');
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits)
VALUES(N'EMGT 498', N'Planning and Responding to a Catastrophic Disasters', 3);
GO

INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits, Prerequisites)
VALUES(N'ENGL 105', N'Introduction to Rhetoric', 3, N'WRTG 101'),
      (N'ENGL 154', N'English Romantic Literature', 3, N'WRTG 101'),
      (N'ENGL 155', N'The Bible as Litterature', 3, N'WRTG 101'),
      (N'ENGL 240', N'Introduction to Fiction, Poetry, and Drama', 3, N'WRTG 101'),
      (N'ENGL 245', N'Introduction to Film and Culture', 3, N'WRTG 101'),
      (N'ENGL 260', N'The English Language', 3, N'WRTG 101'),
      (N'ENGL 294', N'Modern World Drama', 3, N'WRTG 101'),
      (N'ENGL 295', N'Reality and Documentary Television', 3, N'WRTG 101'),
      (N'ENGL 302', N'Critical Methods of English Literature ', 3, N'WRTG 101'),
      (N'ENGL 305', N'African American Literature', 3, N'WRTG 101'),
      (N'ENGL 352', N'Intermediate Fiction', 3, N'WRTG 101'),
      (N'ENGL 353', N'Advanced English Composition', 3, N'WRTG 101'),
      (N'ENGL 362', N'Caribbean Literature in English', 3, N'WRTG 101'),
      (N'ENGL 385', N'Concepts of Grammar', 3, N'ENGL 260, WRTG 101');
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits, CourseDescription)
VALUES(N'ENGL 402', N'Modern Drama', 3, N'The student will be required to attended three plays and write forty pages of dramatic literature.'),
      (N'ENGL 403', N'Advanced Poetry', 3, N'The student will be required to write 20 original pieces of poetry.'),
      (N'ENGL 404', N'Advanced Fiction', 3, N'The student will be required to write a forty-page original fiction.');
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits)
VALUES(N'ENGL 458', N'Contemporary World Literature', 3),
      (N'ENGL 475', N'Fantasy, Horror, and Science Fiction', 3),
      (N'ENGL 481', N'Introductory Seminar in English Language, Literature, and Writing', 3),
      (N'ENGL 482', N'Advanced Seminar in English Language, Literature, and Writing', 3),
      (N'ENGL 498', N'Selected Topics in the English Language, Literature, and Writing', 3);
GO

INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits)
VALUES(N'FINA 101', N'Introduction to Money, Currency, and Finance', 3),
      (N'FINA 102', N'Introduction to Business Finance', 3),
      (N'FINA 104', N'Foundations of Investment Management', 3),
      (N'FINA 200', N'Behavioral Finance', 3);
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits, Prerequisites)
VALUES(N'FINA 201', N'Financial Economics', 3, N'FINA 101, ECON 101'),
      (N'FINA 204', N'Advanced Corporate Finance', 3, N'FINA 104'),
      (N'FINA 205', N'Urban Real Estate Economics', 3, N'FINA 101'),
      (N'FINA 211', N'International Banking', 3, N'FINA 101'),
      (N'FINA 240', N'Venture Capital and the Finance of Innovation', 3, N'FINA 101'),
      (N'FINA 241', N'The Finance of Buyouts and Acquisitions', 3, N'FINA 101');
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits) VALUES(N'FINA 300', N'Fundamentals of Building Wealth', 3);
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits, Prerequisites)
VALUES(N'FINA 301', N'Intermediate Corporate Finance', 3, N'FINA 102'),
      (N'FINA 303', N'Life and Health Insurance', 3, N'FINA 200'),
      (N'FINA 304', N'Financial Institutions', 3, N'ECON 101'),
      (N'FINA 320', N'Financial Risk Management', 3, N'FINA 102, ECON 101'),
      (N'FINA 321', N'Financial Analysis', 3, N'FINA 301');
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits) VALUES(N'FINA 360', N'Finance for Non-Financial Majors', 3);
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits, Prerequisites)
VALUES(N'FINA 420', N'Security Analysis and Valuation', 3, N'FINA 301'),
      (N'FINA 422', N'Financial Derivatives and Portfolio Risk Management', 3, N'FINA 301'),
      (N'FINA 412', N'International Corporate Finance', 3, N'FINA 301');
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits) VALUES(N'FINA 498', N'Selected Topics in Finances', 3);
GO

INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits)
VALUES(N'GEOG 101', N'Introduction to Geography', 3),
      (N'GEOG 102', N'History and Development of Maps', 3),
      (N'GEOG 112', N'Causes and Implications of Global Change', 3),
      (N'GEOG 121', N'Introduction to Methods of Geospatial Intelligence and Analysis', 3),
      (N'GEOG 201', N'Introduction to Human Geography', 3),
      (N'GEOG 202', N'Introduction to Human Geography Laboratory', 1),
      (N'GEOG 220', N'Quantitative Methods for the Geographic Environmental Sciences', 3),
      (N'GEOG 231', N'Introduction to Biogeography', 3),
      (N'GEOG 240', N'Introductory topics on Regional Geography', 3),
      (N'GEOG 242', N'Coastal Regions', 3),
      (N'GEOG 243', N'The Deserts', 3),
      (N'GEOG 244', N'Human Migrations', 3),
      (N'GEOG 245', N'Arctic Regional Geography', 3),
      (N'GEOG 252', N'Regional Geography: North Africa', 3),
      (N'GEOG 253', N'Regional Geography: Austral Africa', 3),
      (N'GEOG 254', N'Regional Geography: Western Europe', 3),
      (N'GEOG 255', N'Regional Geography: North Canada and Alaska', 3),
      (N'GEOG 256', N'Regional Geography: North America', 3),
      (N'GEOG 257', N'Regional Geography: China', 3),
      (N'GEOG 258', N'Regional Geography: The Middle East', 3),
      (N'GEOG 310', N'Geographic Information Systems', 3),
      (N'GEOG 341', N'Introduction to Computer Programming for GIS', 3),
      (N'GEOG 400', N'Advanced Topics on Climat', 3),
      (N'GEOG 402', N'Land Use, Climate Change, and Sustainability', 3),
      (N'GEOG 410', N'Climatology', 3),
      (N'GEOG 460', N'Geographic Information Systems and Spatial Analysis', 3),
      (N'GEOG 498', N'Strategies in Geographic Studies', 3);
GO
--------------------------------------------------------------------------------
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits)
VALUES(N'GERO 100', N'Introduction to Gerontology', 3),
      (N'GERO 222', N'Psychological Aspects of Aging', 3);
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits, Prerequisites)
VALUES(N'GERO 302', N'Service and Program Management in Gerontology', 3, N'GERO 100'),
      (N'GERO 322', N'Health and Aging', 3, N'GERO 100'),
      (N'GERO 323', N'Health Promotion in Older Adults', 3, N'GERO 100'),
      (N'GERO 325', N'Gender and Aging', 3, N'GERO 100'),
      (N'GERO 332', N'Programs, Services, and Policies', 3, N'GERO 100'),
      (N'GERO 333', N'Long-Term Care Administration', 3, N'GERO 100'),
      (N'GERO 341', N'Management of the Senior Housing Environment', 3, N'GERO 100');
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits)
VALUES(N'GERO 402', N'Cross-Cultural Perspectives of Aging', 3),
      (N'GERO 411', N'Geriatric Nutrition', 1),
      (N'GERO 412', N'Strategic Planning for Retirement', 1),
      (N'GERO 498', N'Advanced Management in Gerontology', 3);
GO

INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits)
VALUES(N'GVPS 100', N'Introduction to Political Science', 3),
      (N'GVPS 101', N'Introduction to Political Theory', 3),
      (N'GVPS 105', N'Introduction to Political Systems', 3),
      (N'GVPS 106', N'Religions and Politics', 3),
      (N'GVPS 140', N'National and Local Governments', 3),
      (N'GVPS 201', N'International Political Relations', 3),
      (N'GVPS 202', N'The United Nations', 3),
      (N'GVPS 212', N'Non-Government Organizations (NGOs)', 3),
      (N'GVPS 242', N'Comparative Politics and Government', 3),
      (N'GVPS 300', N'U.N. Peacekeeping', 1);
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits, Prerequisites)
VALUES(N'GVPS 341', N'Legislative Process and Lobbying Techniques', 3, N'GVPS 100');
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits)
VALUES(N'GVPS 401', N'21st Century Global Challenges', 3),
      (N'GVPS 402', N'Law, Morality, and War', 3);
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits, Prerequisites)
VALUES(N'GVPS 441', N'State Terrorism', 3, N'GVPS 100'),
      (N'GVPS 442', N'Global Terrorism', 3, N'GVPS 100'),
      (N'GVPS 445', N'Counterterrorism', 3, N'GVPS 100'),
      (N'GVPS 458', N'Terrorism and Anti-Terrorism', 3, N'GVPS 100');
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits)
VALUES(N'GVPS 498', N'Strategic Studies in Government and Politics', 3);
GO
--------------------------------------------------------------------------------
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits)
VALUES(N'HCMG 100', N'Language of Health and Disease', 3),
      (N'HCMG 150', N'Health Promotion and Disease Prevention', 3),
      (N'HCMG 160', N'Healthcare Systems Economics', 3),
      (N'HCMG 175', N'Epidemiological Approaches to Population Health', 3),
      (N'HCMG 182', N'Health Services Research', 3),
      (N'HCMG 180', N'Epidemiological Principles', 3),
      (N'HCMG 187', N'Delivering Care Across the Continuum', 3),
      (N'HCMG 191', N'Managerial Ethics', 3),
      (N'HCMG 202', N'Politics of Health Care', 3),
      (N'HCMG 204', N'Legal Environment Health Care', 3),
      (N'HCMG 206', N'Organizational Theory', 3),
      (N'HCMG 212', N'Management Systems', 3),
      (N'HCMG 220', N'Information Systems', 3),
      (N'HCMG 265', N'Strategic Planning and Marketing', 3),
      (N'HCMG 364', N'Budgeting and Fiscal Management', 3),
      (N'HCMG 498', N'Capstone Seminar and Paper', 3);
GO

INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits)
VALUES(N'HIST 101', N'Introduction to History and Historical Research', 3),
      (N'HIST 102', N'Introduction to Archaeology', 3);
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits, Prerequisites)
VALUES(N'HIST 103', N'Introduction to Middle East', 3, N'HIST 101');
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits)
VALUES(N'HIST 104', N'Pre-Modern Japan', 3),
      (N'HIST 107', N'Introduction to Latin American and Latino Studies', 3),
      (N'HIST 108', N'Colonial Latin America', 3);
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits, Prerequisites)
VALUES(N'HIST 112', N'Modern Japanese History', 3, N'HIST 104');
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits)
VALUES(N'HIST 120', N'Introduction to Religions', 3),
      (N'HIST 121', N'Introduction to Christianity', 3),
      (N'HIST 122', N'Introduction to Judaism', 3),
      (N'HIST 123', N'Introduction to Islamic Studies', 3),
      (N'HIST 140', N'Technological Transformations', 3),
      (N'HIST 204', N'History of the Modern Business Corporation', 3);
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits, Prerequisites)
VALUES(N'HIST 215', N'World History I', 3, N'HIST 101'),
	  (N'HIST 216', N'World History II', 3, N'HIST 215');
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits)
VALUES(N'HIST 302', N'Principles of War', 3),
	  (N'HIST 311', N'History of Globalization', 3);
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits, Prerequisites)
VALUES(N'HIST 321', N'World War I', 3, N'HIST 101'),
      (N'HIST 322', N'World War II', 3, N'HIST 322'),
      (N'HIST 323', N'Rise and Fall of the Third Reich', 3, N'HIST 101');
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits) VALUES(N'HIST 326', N'The Cold War', 3);
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits, Prerequisites)
VALUES(N'HIST 331', N'Christian Reformation', 3, N'HIST 121'),
      (N'HIST 342', N'Slavery, Race, & Revolution in the Atlantic World', 3, N'HIST 101'),
      (N'HIST 351', N'Late Imperial China', 3, N'HIST 101'),
      (N'HIST 352', N'History of Modern China', 3, N'HIST 351'),
      (N'HIST 412', N'Human Rights and History', 3, N'HIST 101');
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits)
VALUES(N'HIST 414', N'Comparative History of Genocide', 3),
      (N'HIST 415', N'Comparative History of Terrorism', 3);
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits)
VALUES(N'HIST 498', N'Comparative Studies in Contemporary Times and History', 3);
GO

INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits)
VALUES(N'HRMN 300', N'Introduction to Human Resource Management', 3),
      (N'HRMN 302', N'Organizational Communication', 3),
      (N'HRMN 360', N'Labor Relations', 3),
      (N'HRMN 364', N'Conflict Management in Organizations', 3),
      (N'HRMN 366', N'Organizational Culture', 3),
      (N'HRMN 391', N'Stress Management in the Workplace', 1);
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits, Prerequisites)
VALUES(N'HRMN 393', N'Rewards and Compensation Management ', 3, N'HRMN 300'),
      (N'HRMN 400', N'Human Resource Management: Issues and Problems', 3, N'HRMN 300'),
      (N'HRMN 404', N'Employee Training and Development', 3, N'HRMN 300');
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits)
VALUES(N'HRMN 412', N'Employment Law for Business', 3),
      (N'HRMN 498', N'Topics in Human Resource Management', 3);
GO

INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits)
VALUES(N'IFSM 200', N'Introduction to Information Systems', 3);
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits)
VALUES(N'IFSM 201', N'Applications of Information Technology', 3),
      (N'IFSM 220', N'Information Systems in the Enterprise', 3);
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits)
VALUES(N'IFSM 300', N'Introduction to Information Security', 3),
      (N'IFSM 304', N'Ethics in Information Technology', 3),
      (N'IFSM 311', N'Ethics and Policies in Information Technology', 3); 

GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits, Prerequisites)
VALUES(N'IFSM 321', N'Enterprise Architecture and Systems', 3, N'IFSM 200'),
      (N'IFSM 411', N'Planning and Assessing Needs in Information Security', 3, N'IFSM 200'),
      (N'IFSM 412', N'Information Systems Project Management', 3, N'IFSM 200'),
      (N'IFSM 450', N'Systems Analysis and Design', 3, N'IFSM 311');
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits)
VALUES(N'IFSM 498', N'Managing an Information System', 3);
GO
--------------------------------------------------------------------------------
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits, Prerequisites)
VALUES(N'JRNL 102', N'Introduction to Mass Communication', 3, N'WRTG 101'),
      (N'JRNL 103', N'Introduction to Multimedia in Communication', 3, N'JRNL 102'),
      (N'JRNL 202', N'News Writing and Reporting I', 3, N'SPCH 101, JRNL 102'),
      (N'JRNL 203', N'News Writing and Reporting II', 3, N'SPCH 101, JRNL 202'),
      (N'JRNL 205', N'Introduction to News Editing', 3, N'JRNL 202'),
      (N'JRNL 212', N'Online Journalism', 3, N'JRNL 102'),
      (N'JRNL 300', N'Journalism Ethics', 3, N'JRNL 202'),
      (N'JRNL 305', N'Advanced News Editing', 3, N'JRNL 205'),
      (N'JRNL 312', N'News Commentary and Critical Writing', 3, N'JRNL 102'),
      (N'JRNL 341', N'Broadcast News Management', 3, N'JRNL 300'),
      (N'JRNL 490', N'Journalism for Government and Public Policies', 3, N'JRNL 312'),
      (N'JRNL 492', N'Journalism for Science and Technology', 3, N'JRNL 312'),
      (N'JRNL 493', N'Journalism for Health Professions', 3, N'JRNL 312');
GO
--------------------------------------------------------------------------------
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits)
VALUES(N'LNGS 201', N'Introduction to Linguistics', 3),
      (N'LNGS 224', N'Linguistics and Reading', 3),
      (N'LNGS 226', N'Sounds and Language', 3),
      (N'LNGS 240', N'Language and Mind', 3),
      (N'LNGS 252', N'Semantics and Pragmatics', 3),
      (N'LNGS 254', N'Language and Religion', 3),
      (N'LNGS 256', N'Methods of Language Teaching', 3); 
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits, Prerequisites)
VALUES(N'LNGS 257', N'Teaching a Second or Foreign Language', 3, N'LNGS 201'),
      (N'LNGS 311', N'Language Syntax I', 3, N'LNGS 201'),
      (N'LNGS 312', N'Language Syntax II', 3, N'LNGS 201'),
      (N'LNGS 321', N'Phonology I', 3, N'LNGS 201');
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits)
VALUES(N'LNGS 322', N'Phonology II', 3),
      (N'LNGS 330', N'Historical Linguistics', 3),
      (N'LNGS 350', N'Philosophy of Language', 3),
      (N'LNGS 410', N'Grammar and Meaning', 3),
      (N'LNGS 414', N'Topics in Syntax', 3),
      (N'LNGS 420', N'Child Language Acquisition', 3),
      (N'LNGS 422', N'Bilingualism', 3),
      (N'LNGS 440', N'Foundations of Computer Languages', 3),
      (N'LNGS 452', N'Advanced Computer Languages', 3),
      (N'LNGS 498', N'Linguistic Project and Research', 3);
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits)
VALUES(N'MATH 009', N'Introduction to Algebra', 3);
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits, Prerequisites)
VALUES(N'MATH 012', N'Intermediate Algebra', 3, N'MATH 009'),
      (N'MATH 102', N'Finite Mathematics', 3, N'MATH 012'),
      (N'MATH 106', N'College Algebra', 3, N'MATH 012'),
      (N'MATH 115', N'Pre-Calculus', 3, N'MATH 012'),
      (N'MATH 130', N'Calculus for the Life Sciences', 3, N'MATH 115'),
      (N'MATH 140', N'Calculus I', 4, N'MATH 115'),
      (N'MATH 141', N'Calculus II', 4, N'MATH 140'),
      (N'MATH 212', N'Elements of Numbers and Operations', 3, N'MATH 012');
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits, Prerequisites)
VALUES(N'MATH 213', N'Elements of Geometry and Measurement', 3, N'MATH 140'),
      (N'MATH 214', N'Elements of Probability and Statistics', 3, N'MATH 012'),
      (N'MATH 220', N'Introduction to Linear Algebra', 4, N'MATH 106'),
      (N'MATH 241', N'Calculus III', 4, N'MATH 141');
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits, Prerequisites)
VALUES(N'MATH 246', N'Differential Equations for Scientists and Engineers', 4, N'MATH 140'),
      (N'MATH 310', N'Introduction to Analysis', 3, N'MATH 220'),
      (N'MATH 404', N'Applications of Linear Algebra', 3, N'MATH 106'),
      (N'MATH 410', N'Introduction to Number Theory', 3, N'MATH 220'),
      (N'MATH 422', N'Advanced Calculus I', 3, N'MATH 141'),
      (N'MATH 442', N'Linear Algebra for Scientists and Engineers', 3, N'MATH 106'),
      (N'MATH 443', N'Partial Differential Equations for Scientists and Engineers', 3, N'MATH 106'),
      (N'MATH 444', N'Complex Variables for Scientists and Engineers', 3, N'MATH 106');
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits)
VALUES(N'MATH 498', N'Selected Topics for Math Majors', 3);
GO

INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits)
VALUES(N'MRKT 101', N'Introduction to Marketing', 3),
      (N'MRKT 211', N'Introduction to Marketing Research', 3);
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits, Prerequisites)
VALUES(N'MRKT 240', N'New Product Management', 3, N'MRKT 101');
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits, CourseDescription)
VALUES(N'MRKT 251', N'Foundations of Advertising I', 3, N'This is the first part of a 4-credit course. In this part, the student will be introduced to the theories and fundamental techniques of advertising.'),
      (N'MRKT 252', N'Foundations of Advertising II', 3, N'This is the second part of a 4-credit course. This part mainly consists of practicing to deliver advertising. The student will be involved in 2 project. First, the student will perform an oral advertising, using only spoken words and body language. Second, the student will perform visual adverting using speach, computer application, and any necessary visual object. Third, the student will create either a video (TV) commercial or web advertising (to be delivered on a website created by the user. Third, the student will participate in a group to create an advertisement.');
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits)
VALUES(N'MRKT 254', N'Advertising Management', 3),
      (N'MRKT 255', N'Models for Marketing Strategy', 3),
      (N'MRKT 256', N'Brand Management', 3),
      (N'MRKT 261', N'Advertising, Law, and Ethics', 3),
      (N'MRKT 300', N'Retail Marketing', 3),
      (N'MRKT 301', N'Electronic Marketing', 3),
      (N'MRKT 311', N'Selling and Sales Management', 3),
      (N'MRKT 421', N'Managing Customer Relationships', 3),
      (N'MRKT 422', N'Managing Consumer Behavior', 3),
      (N'MRKT 498', N'Selected Topics in Marketing', 3);
GO

INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits)
VALUES(N'PHIL 100', N'Introduction to Philosophy', 3),
      (N'PHIL 110', N'Introduction to Religions', 3);
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits)
VALUES(N'PHIL 140', N'Contemporary Moral Issues', 3),
      (N'PHIL 142', N'The Business of Family and Gender', 3),
      (N'PHIL 151', N'Introduction to Social Contracts', 3),
      (N'PHIL 161', N'Introduction to Reasoning', 3);
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits, Prerequisites)
VALUES(N'PHIL 200', N'Introduction to Ethics', 3, N'PHIL 100');
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits)
VALUES(N'PHIL 210', N'Introduction to Philosophy of Mind', 3);
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits, Prerequisites)
VALUES(N'PHIL 216', N'Strategic Reasoning', 3, N'PHIL 161'),
      (N'PHIL 218', N'Practical Reasoning', 3, N'PHIL 161'),
      (N'PHIL 240', N'Fairness & Justice', 3, N'PHIL 100'),
      (N'PHIL 312', N'Ethical Issues in Business', 3, N'ECON 200'),
      (N'PHIL 314', N'Ethics and the Professions', 3, N'ECON 200'),
      (N'PHIL 315', N'Justice, Law, & Morality', 3, N'PHIL 100'),
      (N'PHIL 410', N'Biological Philosophy', 3, N'PHIL 161');
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits)
VALUES(N'PHIL 498', N'Selected Topics in Philosophy', 3);
GO
-------------------------------------------------------------------------------------------
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits)
VALUES(N'PHYS 101', N'Principles of Physics I', 3),
      (N'PHYS 102', N'Principles of Physics II', 3),
      (N'PHYS 142', N'Modern Astronomy', 3),
      (N'PHYS 150', N'Mechanics', 3),
      (N'PHYS 162', N'Electromagnetic Phenomena', 3),
      (N'PHYS 164', N'Relativity and Quantum Physics', 3),
      (N'PHYS 172', N'Modern Experimental Physics', 3),
      (N'PHYS 175', N'Mathematical and Computational Methods', 3),
      (N'PHYS 181', N'Introduction to Research', 3),
      (N'PHYS 212', N'Shaping National Science Policy', 3),
      (N'PHYS 214', N'Science and Society: Grand Challenges', 3),
      (N'PHYS 215', N'Science Pedagogy: Principles and Practice', 3),
      (N'PHYS 234', N'Dynamical Processes in Biological Physics', 3),
      (N'PHYS 246', N'Solid State Technology and Microelectronics', 3),
      (N'PHYS 247', N'Sensors and Digital Electronics', 3),
      (N'PHYS 252', N'Intermediate Mechanics', 3),
      (N'PHYS 253', N'Intermediate Electricity and Magnetism', 3),
      (N'PHYS 262', N'Quantum Mechanics', 3),
      (N'PHYS 254',	N'Statistical Physics', 3),
      (N'PHYS 265', N'Special Topics in Physics', 3),
      (N'PHYS 322', N'The Way Things Work', 3),
      (N'PHYS 323', N'The Science of Sound and Music', 3),
      (N'PHYS 442', N'Soft Condensed Matter', 3),
      (N'PHYS 445', N'Computational Physics', 3),
      (N'PHYS 446', N'Electrodynamics and Optics', 3),
      (N'PHYS 451', N'Solid State I', 3),
      (N'PHYS 454', N'Particle Physics and Cosmology', 3);
GO

INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits) VALUES(N'PSYC 100', N'Introduction to Psychology', 3);
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits, Prerequisites)
VALUES(N'PSYC 300', N'Research Methods in Psychology', 3, N'PSYC 100'),
      (N'PSYC 302', N'Biological Basis of Behavior', 3, N'PSYC 100');
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits)
VALUES(N'PSYC 310', N'Psychology of Self', 1),
      (N'PSYC 311', N'Psychology of Happiness', 1),
      (N'PSYC 312', N'Introduction to of Parenting', 1),
      (N'PSYC 313', N'Psychology of the Individual and Family', 3);
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits, Prerequisites)
VALUES(N'PSYC 320', N'Social Psychology', 3, N'PSYC 100'),
      (N'PSYC 321', N'Sensation and Perception', 3, N'PSYC 100'),
      (N'PSYC 325', N'Psychology of Human Sexuality', 3, N'PSYC 100'),
      (N'PSYC 330', N'Introduction to Traumatic Stress Disorder', 3, N'PSYC 100'),
      (N'PSYC 332', N'Memory and Cognition', 3, N'PSYC 100'),
      (N'PSYC 340', N'Psychology of Interpersonal Relationships', 3, N'PSYC 100'),
      (N'PSYC 341', N'Theories of Personality', 3, N'PSYC 100'),
      (N'PSYC 342', N'Psychology of Gender', 3, N'PSYC 100'),
      (N'PSYC 344', N'Adulthood and Aging ', 3, N'PSYC 100');
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits) VALUES(N'PSYC 355', N'Introduction to Black Psychology', 1);
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits, Prerequisites)
VALUES(N'PSYC 350', N'Lifespan Development', 3, N'PSYC 100'),
      (N'PSYC 351', N'Child and Adolescent Psychology', 3, N'PSYC 100'),
      (N'PSYC 352', N'Abnormal Psychology', 3, N'PSYC 100'),
      (N'PSYC 353', N'Cross-Cultural Psychology', 3, N'PSYC 100');
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits)
VALUES(N'PSYC 410', N'Introduction to Parapsychology', 1),
      (N'PSYC 412', N'Introduction to Witchcraft', 1),
      (N'PSYC 413', N'Advanced Parapsychology and Witchcraft', 3);
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits, Prerequisites)
VALUES(N'PSYC 440', N'Introduction to Counseling Psychology', 3, N'PSYC 100'),
      (N'PSYC 441', N'Psychology of Stress', 3, N'PSYC 100'),
      (N'PSYC 442', N'Introduction to Clinical Psychology', 3, N'PSYC 100'),
      (N'PSYC 443', N'Positive Psychology', 3, N'PSYC 100');
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits) VALUES(N'PSYC 498', N'Special Topics in Psychology', 3);
GO
----------------------------------------------------------------------------------------
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits) VALUES(N'SOCY 100', N'Introduction to Sociology', 3);
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits, Prerequisites)
VALUES(N'SOCY 311', N'The Individual and Society', 3, N'SOCY 100'),
      (N'SOCY 322', N'Sociology and Gender', 3, N'SOCY 100'),
      (N'SOCY 422', N'Race and Ethnic Relations', 3, N'SOCY 100');
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits, Prerequisites)
VALUES(N'SOCY 424', N'Social Movements', 3, N'SOCY 100'),
      (N'SOCY 425', N'Global Conflict, Migrants, and Refugees', 3, N'SOCY 100'),
      (N'SOCY 430', N'Sociology of the Family', 3, N'SOCY 100'),
      (N'SOCY 431', N'Social Structure and Identity', 3, N'SOCY 100'),
      (N'SOCY 433', N'Women in the Military', 3, N'SOCY 100'),
      (N'SOCY 440', N'Sociology of Children', 3, N'SOCY 100'),
      (N'SOCY 441', N'Sociology of Self', 3, N'SOCY 100'),
      (N'SOCY 442', N'Sociology of Education', 3, N'SOCY 100'),
      (N'SOCY 443', N'Sociology of Work', 3, N'SOCY 100'),
      (N'SOCY 444', N'Sociology of War', 3, N'SOCY 100');
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits) VALUES(N'SOCY 498', N'Selected Topics in Sociology', 3);
GO
----------------------------------------------------------------------------------------
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits) VALUES(N'SPAN 101', N'Elementary Spanish I', 3);
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits, Prerequisites)
VALUES(N'SPAN 102', N'Elementary Spanish II', 3, N'SPAN 101'),
      (N'SPAN 201', N'Intermediate Spanish I', 3, N'SPAN 102'),
      (N'SPAN 202', N'Intermediate Spanish II', 3, N'SPAN 201'),
      (N'SPAN 301', N'Advanced Spanish I', 3, N'SPAN 202'),
      (N'SPAN 302', N'Advanced Spanish II', 3, N'SPAN 301');
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits)
VALUES(N'SPAN 312', N'Modern Spanish Speaking Cultures', 3);
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits, Prerequisites)
VALUES(N'SPAN 421', N'Business Spanish I', 4, N'SPAN 101'),
      (N'SPAN 422', N'Business Spanish II', 4, N'SPAN 421');
GO

INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits)
VALUES(N'SPCH 101', N'Introduction to Oral Communication', 3),
      (N'SPCH 122', N'Introduction to Interpersonal Communication', 3);
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits, Prerequisites)
VALUES(N'SPCH 200', N'Advanced Public Speaking', 3, N'SPCH 101');
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits, Prerequisites)
VALUES(N'SPCH 321', N'Professional Presentations', 3, N'SPCH 101, WRTG 351'),
      (N'SPCH 426', N'Conflict Management', 3, N'SPCH 122'),
      (N'SPCH 468', N'Intercultural Communication', 3, N'SPCH 122');
GO
----------------------------------------------------------------------------------------------------
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits, Prerequisites)
VALUES(N'STAT 101', N'Introduction to Statistics', 3, N'MATH 106');
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits) VALUES(N'STAT 110', N'Introduction to Probability', 3);
GO
INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits, Prerequisites)
VALUES(N'STAT 201', N'Introduction to Business Statistics', 3, N'MATH 106'),
      (N'FINA 202', N'Financial Derivatives', 3, N'FINA 104, STAT 101'),
      (N'STAT 202', N'Intermediate Statistics', 3, N'STAT 101'),
      (N'STAT 205', N'Statistical Methodology', 3, N'STAT 101'),
      (N'STAT 210', N'Introduction to Linear Statistical Models', 3, N'MATH 106, STAT 101'),
      (N'STAT 225', N'Introduction to Statistical Methods for the Behavioral Sciences', 3, N'MATH 106'),
      (N'STAT 322', N'Mathematical Statistics', 3, N'STAT 101, STAT 110'),
      (N'STAT 330', N'Introduction to Nonparametric Methods and Log-linear Models', 3, N'STAT 101'),
      (N'STAT 425', N'Statistical Inference', 3, N'STAT 110'),
      (N'STAT 428', N'Stochastic Processes', 3, N'STAT 110'),
      (N'STAT 429', N'Stochastic Modeling', 3, N'STAT 110'),
      (N'STAT 431', N'Financial and Economic Time Series', 3, N'STAT 101'),
      (N'STAT 441', N'Fundamentals of Actuarial Science I', 3, N'MATH 106'),
      (N'STAT 442', N'Fundamentals of Actuarial Science II', 3, N'STAT 441'),
      (N'STAT 443', N'Actuarial Science', 3, N'MATH 140, STAT 441'),
      (N'STAT 444', N'Advanced Topics in Mathematical Statistics', 3, N'STAT 202'),
      (N'STAT 450', N'Bioinformatics', 3, N'STAT 101'),
      (N'STAT 452', N'Modern Regression for the Social and Environmental Sciences', 3, N'STAT 101');
GO

INSERT INTO Catalogs.UndergraduateCourses(CourseCode, CourseName, Credits)
VALUES(N'THEO 101', N'Introduction to Christian Ethics', 3),
      (N'THEO 102', N'Christian Initiation', 3),
      (N'THEO 107', N'The Bible and Women', 3),
      (N'THEO 111', N'Introduction to Biblical Literature', 3),
      (N'THEO 112', N'Religion in American Society', 3),
      (N'THEO 116', N'Religion and Science', 3),
      (N'THEO 124', N'God in the Brain', 3),
      (N'THEO 125', N'Practicing Death', 3),
      (N'THEO 142', N'Catholic Ritual, Spirituality, and Justice', 3),
      (N'THEO 143', N'The Church and the Poor', 3),
      (N'THEO 150', N'Four Founders of Faith', 3),
      (N'THEO 162', N'The Jesuits: History and Spirituality', 3),
      (N'THEO 163', N'The Apocalyptic Imagination in Christianity and Islam', 3),
      (N'THEO 164', N'Islamic Mystical Tradition: Sufism', 3),
      (N'THEO 170', N'Jews and Modernity', 3),
      (N'THEO 172', N'Portraits of Jesus in the New Testament', 3),
      (N'THEO 173', N'Mormonism: A New World Religion', 3),
      (N'THEO 211', N'Introduction to Buddhism', 3),
      (N'THEO 212', N'Political Theology', 3),
      (N'THEO 220', N'Religions of the African Diaspora', 3),
      (N'THEO 224', N'Christian Responses to Islam', 3),
      (N'THEO 225', N'Politics of Gender in World Religions', 3),
      (N'THEO 228', N'Buddhism and Film', 3),
      (N'THEO 232', N'Political Theology in the Headlines', 3),
      (N'THEO 234', N'Moral Agency: Conscience and Freedom', 3),
      (N'THEO 245', N'Judaism Under Crescent and Cross', 3),
      (N'THEO 246', N'Hebrew Scriptures Seminar: Writings', 3),
      (N'THEO 300', N'New Testament Seminar: Gospels', 3),
      (N'THEO 303', N'Systematic Theology', 3),
      (N'THEO 312', N'Approaches to Religion', 3),
      (N'THEO 340', N'Hinduism Today', 3),
      (N'THEO 342', N'Jesus in Paul''s Writings', 3),
      (N'THEO 343', N'Theology and Sexuality', 3),
      (N'THEO 344', N'Religion and Aesthetics', 3),
      (N'THEO 345', N'Comparative Mythology', 3),
      (N'THEO 346', N'Sacred Quest', 3),
      (N'THEO 347', N'The Hindu Religious Tradition', 3),
      (N'THEO 348', N'Judaism in America', 3),
      (N'THEO 349', N'Judaism: Ancient Tradition and Contemporary Practice', 3),
      (N'THEO 350', N'Religion/Ethics/International Relations', 3),
      (N'THEO 352', N'Faith, Social Justice, and Public Life', 3),
      (N'THEO 353', N'The Church in the 21st Century', 3),
      (N'THEO 354', N'Religious Ethics and Moral Issues', 3),
      (N'THEO 355', N'Theology of Love', 3),
      (N'THEO 356', N'The First Christians and Christianity Today', 3),
      (N'THEO 357', N'Introduction to Catholic Theology', 3),
      (N'THEO 358', N'Buddhism and Poetry', 3),
      (N'THEO 359', N'Christian Ethics and Ecology', 3),
      (N'THEO 362', N'Muslims and Politics', 3),
      (N'THEO 363', N'Struggle and Transcendence', 3),
      (N'THEO 364', N'Exploring the Qur''an', 3),
      (N'THEO 365', N'Theology and Literature', 3),
      (N'THEO 366', N'Religion in America', 3),
      (N'THEO 367', N'Theology After Freud', 3),
      (N'THEO 368', N'Islamic Religious Thought and Practice', 3),
      (N'THEO 369', N'The Problem of God', 3),
      (N'THEO 372', N'Christian Perspectives on War and Peace', 3),
      (N'THEO 373', N'Qur''an, Pluralism, Fem. Theology', 3),
      (N'THEO 375', N'Death and Afterlife', 3),
      (N'THEO 412', N'Relating Religion', 3),
      (N'THEO 415', N'Christian Thinkers: Karl Rahner', 3),
      (N'THEO 416', N'Senior Seminar: Religious Pluralism', 3),
      (N'THEO 444', N'Advanced Readings in Buddhist Litterature', 3),
      (N'THEO 462', N'Buddhism and Christianity in the Secular World', 3),
      (N'THEO 498', N'Theories of Religions', 3);
GO

INSERT INTO Administration.UndergraduateCoursesTaught(TeacherNumber, CourseCode)
VALUES(N'729380', N'FINA 104'), (N'729380', N'ECON 101'), (N'729380', N'FINA 200'),
	  (N'729380', N'FINA 202'), (N'729380', N'FINA 204'), (N'729380', N'FINA 205'),
	  (N'729380', N'FINA 211'), (N'297200', N'FINA 241'), (N'297200', N'FINA 300'),
	  (N'297200', N'FINA 301'), (N'516624', N'CMSC 236'), (N'927144', N'CMSC 334'),
	  (N'160205', N'CMSC 212'), (N'516624', N'CMSC 401'), (N'927144', N'CMSC 420'),
	  (N'516624', N'CMSC 440'), (N'797229', N'CMSC 422'), (N'229374', N'HIST 302'),
	  (N'229374', N'HIST 326'), (N'229374', N'GVPS 442');
GO

INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'88130480', N'Marie', N'Annette', N'Robinson', Administration.SetDateOfBirth(-6817), N'F', N'mrobinson@yahoo.com',    1021, 1004, N'mrobinson'),
      (N'24795711', N'Roger', N'Dermot',  N'Baker',    Administration.SetDateOfBirth(-6570), N'M', N'rbaker2020@hotmail.com', 1005, 1002, N'rbaker');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'18073572', N'Patrick', N'Wisne', Administration.SetDateOfBirth(-11012), N'M', N'pwisdom@attmail.com', 1001, 1008, N'pwisne');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'22803048', N'Gary', N'Jonathan', N'Jones', Administration.SetDateOfBirth(-19926), N'M', N'gjojohnes@taxes.md.gov.us', 1019, 1007, N'gjones'),
      (N'97394285', N'Jessica', N'Danielle', N'Weisburgh', Administration.SetDateOfBirth(-12081), N'F', N'jwest200@maildragon.com', 1009, 1001, N'jweisburgh'),
      (N'97596002', N'Laurent', N'Frank', N'Simonson', Administration.SetDateOfBirth(-17503), N'M', N'funtohave@msn.com', 1016, 1004, N'lsimonson'),
      (N'94708257', N'Christopher', N'Sheldon', N'Dale', Administration.SetDateOfBirth(-6570),  N'M', N'chrisdale@seriousmail.com', 1006, 1008, N'cdale'),
      (N'48009520', N'Diane', N'Kathy', N'Paglia', Administration.SetDateOfBirth(-13840), N'F', N'dpaglia123@attmail.com', 1006, 1009, N'dpaglia'),
      (N'13048039', N'Joseph', N'Christian', N'Riback', Administration.SetDateOfBirth(-7909),  N'M', N'jribes4000@health.mc.md.us', 1011, 1006, N'jriback'),
      (N'92270397', N'Patrick', N'Jonathan', N'Brzeniak', Administration.SetDateOfBirth(-17361), N'M', N'patzen1000@socsec.md.us', 1021, 1022, N'pbrzeniak');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, LastName, BirthDate, Gender, MajorID, MinorID)
VALUES(N'70840584', N'Tracy', N'Sikorowski', Administration.SetDateOfBirth(-11650), N'M', 1006, 1015);
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, MajorID, MinorID, Gender)
VALUES(N'29480759', N'Hank',    N'Peter', N'Newport',  Administration.SetDateOfBirth(-7606),  1007, 1004, N'M'),
      (N'72938479', N'Marc',    N'Kenny', N'Dunder',   Administration.SetDateOfBirth(-14333), 1009, 1005, N'M'),
      (N'61824668', N'Stephen', N'David', N'Weisberg', Administration.SetDateOfBirth(-11324), 1006, 1002, N'M');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, LastName, BirthDate, MajorID, MinorID, Gender)
VALUES(N'20384025', N'Manoah',  N'Hall', Administration.SetDateOfBirth(-16427), 1011, 1004, N'M'),
      (N'80284060', N'Timothy', N'Wray', Administration.SetDateOfBirth(-9000),  1001, 1010, N'M');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, LastName, BirthDate, MajorID, MinorID, Gender)
VALUES(N'68304005', N'David',    N'Stander',   Administration.SetDateOfBirth(-16377), 1019, 1005, N'M'),
      (N'94059506', N'Germaine', N'Bouzereau', Administration.SetDateOfBirth(-16705), 1001, 1002, N'F');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, MajorID, MinorID, Username)
VALUES(N'44004850', N'Brad', N'Franky', N'Roche', Administration.SetDateOfBirth(-12293), N'M', 1002, 1009, N'broche');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, LastName, BirthDate, Gender, MajorID, MinorID)
VALUES(N'24080394', N'Maleekha', N'Chisholm', Administration.SetDateOfBirth(-10190), N'F', 1007, 1014),
      (N'20400305', N'Thomas',   N'Moon',     Administration.SetDateOfBirth(-7395), N'M',  1015, 1018);
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, MajorID, MinorID, Gender)
VALUES(N'50284005', N'Anne', N'Linette', N'Tripplehorn', Administration.SetDateOfBirth(-10506), 1001, 1007, N'F');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, LastName, BirthDate, MajorID, MinorID, Gender)
 VALUES(N'40407502', N'Richard', N'Linders', Administration.SetDateOfBirth(-15938), 1007, 1012, N'M');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, MajorID, MinorID, Gender)
VALUES(N'30405069', N'Amy',      N'Yvette',     N'Carr',      Administration.SetDateOfBirth(-10670), 1001, 1005, N'F'),
      (N'20049584', N'Mary',     N'Antoinette', N'Williams',  Administration.SetDateOfBirth(-8570),  1002, 1009, N'F'),
      (N'40284305', N'Myryam',   N'Anne',       N'Whittaker', Administration.SetDateOfBirth(-11638), 1021, 1005, N'F'),
      (N'20283405', N'Max',      N'Edward',     N'Williams',  Administration.SetDateOfBirth(-15300), 1008, 1017, N'M'),
      (N'20486025', N'Steve',    N'Paul',       N'Rosner',    Administration.SetDateOfBirth(-7770),  1003, 1010, N'M'),
      (N'20840640', N'Tony',     N'Robert',     N'Mullins',   Administration.SetDateOfBirth(-16174), 1024, 1004, N'M'),
      (N'92739473', N'John',     N'Bernard',    N'Vato',      Administration.SetDateOfBirth(-8802),  1009, 1012, N'M'),
      (N'27582647', N'Kimberly', N'Julie',      N'Wise',      Administration.SetDateOfBirth(-17553), 1008, 1016, N'F'),
      (N'92847957', N'Emmanuel', N'Frank',      N'Orenstein', Administration.SetDateOfBirth(-9705),  1007, 1001, N'M');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, LastName, BirthDate, MajorID, MinorID, Gender)
VALUES(N'92749715', N'Timothy', N'Prince', Administration.SetDateOfBirth(-10926), 1019, 1005, N'M');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, MajorID, MinorID, Gender)
VALUES(N'24928472', N'Albert', N'Kevin',   N'Thorne',    Administration.SetDateOfBirth(-16084), 1002, 1006, N'M'),
      (N'24928292', N'Frank',  N'Patrick', N'Hollander', Administration.SetDateOfBirth(-9714),  1022, 1020, N'M');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, LastName, BirthDate, MajorID, MinorID, Gender)
VALUES(N'29473002', N'Joshua', N'Radmall', Administration.SetDateOfBirth(-7345), 1008, 1019, N'M');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, MajorID, MinorID)
VALUES(N'27114857', N'Michael', N'Alexander', N'Horns', Administration.SetDateOfBirth(-7132), N'M',  1001, 1005),
      (N'60294086', N'Ellena', N'Kristina', N'Vasquez', Administration.SetDateOfBirth(-18318), N'F', 1004, 1015);
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, LastName, BirthDate, MajorID, MinorID)
VALUES(N'30493386', N'Hahia', N'Kwok', Administration.SetDateOfBirth(-7381), 1011, 1004);
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, MajorID, MinorID)
VALUES(N'20304050', N'Chrissie', N'Cheryl',   N'Hinson', Administration.SetDateOfBirth(-11670), N'F', 1018, 1008),
      (N'22982504', N'Patrick',  N'Theodore', N'Eichel', Administration.SetDateOfBirth(-6570),  N'M', 1001, 1002),
      (N'66608085', N'Brittany', N'Rosette',  N'Little', Administration.SetDateOfBirth(-17097), N'F', 1007, 1005);
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, LastName, MajorID, MinorID, BirthDate, Gender)
VALUES(N'20384098', N'Stephen', N'Ferrer', 1004, 1013, Administration.SetDateOfBirth(-7065), N'M');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, MajorID, MinorID, BirthDate, Gender)
VALUES(N'35069800', N'Eric', N'Denis', N'Muldoor', 1002, 1007, Administration.SetDateOfBirth(-16070), N'M'),
      (N'82408822', N'Aylssa', N'Rose', N'Osorio', 1003, 1001, Administration.SetDateOfBirth(-8504),  N'F');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, LastName, MajorID, MinorID, BirthDate, Gender)
VALUES(N'29374922', N'Allison', N'Whoolery', 1019, 1002, Administration.SetDateOfBirth(-16852), N'F');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, MajorID, MinorID, BirthDate, Gender)
VALUES(N'30497957', N'Thomas', N'Michel', N'Phillips', 1010, 1004, Administration.SetDateOfBirth(-8570), N'M');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, LastName, MajorID, MinorID, BirthDate, Gender)
VALUES(N'30405979', N'Ryan', N'Serwer', 1015, 1008, Administration.SetDateOfBirth(-7650), N'M');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, LastName, MajorID, MinorID, BirthDate, Gender)
VALUES(N'28040830', N'Douglas', N'Shepard', 1015, 1007, Administration.SetDateOfBirth(-17441), N'M');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, MajorID, MinorID, BirthDate, Gender)
VALUES(N'47181753', N'Alicia',    N'Jeanne',   N'Welch',  1005, 1005, Administration.SetDateOfBirth(-10065), N'F'),
      (N'23930271', N'Steve',     N'Frank',    N'Klaus',  1019, 1006, Administration.SetDateOfBirth(-10570), N'M'),
      (N'40766453', N'Kelly',     N'Jocelyne', N'Lopez',  1001, 1002, Administration.SetDateOfBirth(-9607),  N'F'),
      (N'16279622', N'Kim',       N'Rosette',  N'Avery',  1019, 1006, Administration.SetDateOfBirth(-12946), N'F'),
      (N'30048304', N'Catherine', N'Julie',    N'Kramer', 1024, 1004, Administration.SetDateOfBirth(-6705),  N'F');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, LastName, MajorID, MinorID, BirthDate, Gender)
VALUES(N'29352418', N'Jennifer', N'Hartfield', 1006, 1006, Administration.SetDateOfBirth(-18861), N'F');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, MajorID, MinorID, BirthDate, Gender)
VALUES(N'30733588', N'Dustin', N'Thomas', N'Hayford', 1013, 1017, Administration.SetDateOfBirth(-8754), N'M');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, LastName, MajorID, MinorID, BirthDate, Gender)
VALUES(N'93749380', N'Sharon', N'Bunch',       1016, 1014, Administration.SetDateOfBirth(-6587),  N'F'),
      (N'29740203', N'Anne', N'Zampieri',      1004, 1015, Administration.SetDateOfBirth(-11490), N'F'),
      (N'24094844', N'Maryam', N'Riggs',       1023, 1033, Administration.SetDateOfBirth(-12273), N'F'),
      (N'28068505', N'Steve', N'Maiolatesi',   1020, 1012, Administration.SetDateOfBirth(-8014),  N'M'),
      (N'28024825', N'Tony', N'Milden',        1011, 1003, Administration.SetDateOfBirth(-17493), N'M'),
      (N'30485046', N'Annabelle', N'Ring',     1012, 1015, Administration.SetDateOfBirth(-20069), N'F'),
      (N'20853304', N'Donald', N'Greenwood',   1019, 1004, Administration.SetDateOfBirth(-8217),  N'M'),
      (N'50283048', N'Angelina', N'Biggs',     1014, 1004, Administration.SetDateOfBirth(-6570),  N'F'),
      (N'50280596', N'Luke', N'Plaine',	       1019, 1004, Administration.SetDateOfBirth(-17163), N'M'),
      (N'22294206', N'Michael', N'Lew',        1010, 1005, Administration.SetDateOfBirth(-6579),  N'M'),
      (N'20808642', N'Lisa', N'Bower',	       1012, 1014, Administration.SetDateOfBirth(-13657), N'F'),
      (N'20938405', N'Johanna', N'Bernquist',  1019, 1004, Administration.SetDateOfBirth(-8275),  N'F'),
      (N'80584005', N'Ryan', N'Sanchez',       1004, 1004, Administration.SetDateOfBirth(-13911), N'M'),
      (N'20486044', N'Krista', N'Martens',     1001, 1004, Administration.SetDateOfBirth(-9213),  N'F'),
      (N'20830405', N'Paula', N'Wray',         1018, 1024, Administration.SetDateOfBirth(-18326), N'F'),
      (N'40506857', N'Luisa', N'Rollenhaggen', 1011, 1003, Administration.SetDateOfBirth(-7232),  N'F');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'11794630', N'Steven', N'Post',     Administration.SetDateOfBirth(-6931),  N'M', N'stevepostman@hotmail.com', 1007, 1014, N'stevenpost'),
      (N'14197755', N'Merica', N'Magee',    Administration.SetDateOfBirth(-10199), N'M', N'mmagee@gmail.com', 1004, 1014, N'mmagee'),
      (N'30635306', N'Zachary', N'Jurgens', Administration.SetDateOfBirth(-10070), N'M', N'zachjurg@yahoo.com', 1019, 1025, N'zjurgens');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, MajorID, MinorID, BirthDate, Gender)
VALUES(N'18550278', N'Monica',    N'Lydie',     N'Leach',   1012, 1007, Administration.SetDateOfBirth(-7545),  N'F'),
      (N'20480022', N'Mike',      N'Richard',   N'Lewis',   1004, 1004, Administration.SetDateOfBirth(-17731), N'M'),
      (N'25518410', N'Steven',    N'Ernest',    N'Hinds',   1010, 1003, Administration.SetDateOfBirth(-7307),  N'M'),
      (N'40029736', N'Frank',     N'Stephen',   N'Martins', 1023, 1007, Administration.SetDateOfBirth(-15317), N'M'),
      (N'11800686', N'Gabrielle', N'Annette',   N'Stahl',   1023, 1006, Administration.SetDateOfBirth(-7834),  N'F'),
      (N'71513159', N'Berthe',    N'Henriette', N'Essimbi', 1003, 1001, Administration.SetDateOfBirth(-19295), N'M'),
      (N'28374957', N'Billie',    N'Judith',    N'Cannon',  1005, 1004, Administration.SetDateOfBirth(-6699),  N'F');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, LastName, MajorID, MinorID, BirthDate, Gender)
VALUES(N'27394708', N'Jerry', N'Schwarz', 1021, 1029, Administration.SetDateOfBirth(-13988), N'M');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, MajorID, MinorID, BirthDate, Gender)
VALUES(N'82580947', N'Steve',   N'Bruce',     N'Maxwell', 1022, 1003, Administration.SetDateOfBirth(-7506), N'M'),
      (N'20409220', N'Jasmine', N'Elizabeth', N'Campino', 1020, 1011, Administration.SetDateOfBirth(-7650), N'F'),
      (N'20008405', N'Terence', N'George',    N'Garber',  1006, 1001, Administration.SetDateOfBirth(-8374), N'M'),
      (N'37395028', N'Jessica', N'Marriette', N'Bess',    1006, 1015, Administration.SetDateOfBirth(-9180), N'F'),
	  (N'62830284', N'James',   N'Robert',    N'Maier',   1019, 1012, Administration.SetDateOfBirth(-7570), N'M');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, LastName, MajorID, MinorID, BirthDate, Gender)
VALUES(N'47580742', N'Jason', N'Lumbrezer', 1022, 1003, Administration.SetDateOfBirth(-8657), N'M');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, MajorID, MinorID, BirthDate, Gender)
VALUES(N'15033814', N'Gwen',     N'Annette',    N'Lautenschlager', 1003, 1005, Administration.SetDateOfBirth(-6886), N'F'),
      (N'38005277', N'Michelle', N'Antoinette', N'Beardsley',      1016, 1014, Administration.SetDateOfBirth(-9228), N'F');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, LastName, MajorID, MinorID, BirthDate, Gender)
VALUES(N'63840950', N'Joanne', N'Mott', 1012, 1013, Administration.SetDateOfBirth(-7760), N'F');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, LastName, MajorID, MinorID, BirthDate, Gender)
VALUES(N'64292862', N'Jamie', N'Burke', 1006, 1012, Administration.SetDateOfBirth(-8827), N'M');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, LastName, MajorID, MinorID, BirthDate, Gender)
VALUES(N'29222420', N'Elisabeth', N'Bennett',    1022, 1006, Administration.SetDateOfBirth(-7065),  N'F'),
      (N'92794735', N'Wendy',     N'Dowdy',      1013, 1010, Administration.SetDateOfBirth(-6705),  N'F'),
      (N'39794449', N'Kathie',    N'Kilbourne',  1003, 1004, Administration.SetDateOfBirth(-8450),  N'F'),
      (N'13970508', N'Marianne',  N'Bieno',      1009, 1010, Administration.SetDateOfBirth(-9175),  N'F'),
      (N'22485936', N'Ann',       N'Mathis',     1024, 1010, Administration.SetDateOfBirth(-10815), N'F'),
      (N'71749336', N'Megan',     N'Sandford',   1001, 1014, Administration.SetDateOfBirth(-9344),  N'F'),
      (N'18030396', N'Wesley',    N'Davis',      1008, 1022, Administration.SetDateOfBirth(-7025),  N'M'),
      (N'13044726', N'Krysta',    N'Alton',      1009, 1026, Administration.SetDateOfBirth(-7587),  N'F'),
      (N'13584060', N'Kathya',    N'Gilman',     1019, 1013, Administration.SetDateOfBirth(-9636),  N'F'),
      (N'97950225', N'Ginger',    N'Coughlin',   1007, 1012, Administration.SetDateOfBirth(-6870),  N'F'),
      (N'20468255', N'Michael',   N'Hernandez',  1018, 1008, Administration.SetDateOfBirth(-6975),  N'M'),
      (N'84086051', N'Santina',   N'Caruso',     1008, 1023, Administration.SetDateOfBirth(-8524),  N'F'),
      (N'30280635', N'Helene',    N'Nukalo',     1023, 1026, Administration.SetDateOfBirth(-16502), N'F'),
      (N'60280584', N'Joy',       N'Herrington', 1020, 1012, Administration.SetDateOfBirth(-8217),  N'F'),
      (N'49500692', N'Santiana',  N'Harris',     1018, 1008, Administration.SetDateOfBirth(-10570),  N'F'),
      (N'50855061', N'Robyne',    N'Garber',     1003, 1011, Administration.SetDateOfBirth(-7788),  N'F');

GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, MajorID, MinorID, BirthDate, Gender)
VALUES(N'68242862', N'Annette', N'Emilie', N'Roberts', 1002, 1003, Administration.SetDateOfBirth(-6671), N'F');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, LastName, MajorID, MinorID, BirthDate, Gender)
VALUES(N'30469577', N'Evelyne', N'Keeling', 1012, 1006, Administration.SetDateOfBirth(-9259),  N'F'),
	  (N'24850033', N'Horace',  N'Rayne',   1012, 1004, Administration.SetDateOfBirth(-18290), N'M'),
      (N'24929528', N'Andrew',  N'Chung',   1024, 1004, Administration.SetDateOfBirth(-8198),  N'M');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, MajorID, MinorID, BirthDate, Gender)
VALUES(N'59739352', N'Liy',     N'Charlotte', N'Edmora', 1009, 1004, Administration.SetDateOfBirth(-7993), N'F'),
      (N'25506037', N'Matthew', N'Andy',      N'Agurs',  1026, 1005, Administration.SetDateOfBirth(-9948), N'M');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, LastName, MajorID, MinorID, BirthDate, Gender)
VALUES(N'92739470', N'Maggie', N'Altobello', 1019, 1002, Administration.SetDateOfBirth(-6948), N'F');
GO 
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, MajorID, MinorID, BirthDate, Gender)
VALUES(N'13024466', N'Gabriella', N'Maria',    N'Sorensen',  1001, 1005, Administration.SetDateOfBirth(-6731), N'F'),
      (N'92584668', N'Jeoseph',   N'David',    N'Callahan',  1007, 1025, Administration.SetDateOfBirth(-9417), N'M'),
      (N'79272413', N'Steve',     N'Alan',     N'Philbrick', 1011, 1016, Administration.SetDateOfBirth(-7661), N'M'),
      (N'20488400', N'Joseph',    N'Bruce',    N'Beal',      1002, 1001, Administration.SetDateOfBirth(-8320), N'M'),
      (N'20204862', N'James',     N'Andrew',   N'Kennan',    1006, 1014, Administration.SetDateOfBirth(-10214), N'M'),
      (N'93749524', N'Helene',    N'Lilianne', N'Lansing',   1012, 1005, Administration.SetDateOfBirth(-7577), N'F');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, LastName, MajorID, MinorID, BirthDate)
VALUES(N'94759284', N'Chris', N'Harpers', 1012, 1003, Administration.SetDateOfBirth(-10570));
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, MajorID, MinorID, BirthDate, Gender)
VALUES(N'50247294', N'Joy',	   N'Denise', N'Donovan',    1012, 1014, Administration.SetDateOfBirth(-6968), N'F'),
      (N'24203886', N'Arlene', N'Amy',    N'Zembrzuska', 1009, 1005, Administration.SetDateOfBirth(-7727), N'F');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, LastName, MajorID, MinorID, BirthDate, Gender)
VALUES(N'35705808', N'Annabelle', N'Coen',      1026, 1008, Administration.SetDateOfBirth(-8675), N'F'),
      (N'20749703', N'Donald',    N'Mendelson', 1011, 1007, Administration.SetDateOfBirth(-7920), N'M');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, MajorID, MinorID, BirthDate, Gender)
VALUES(N'29408600', N'Jerry', N'Emmanuel', N'Graney', 1010, 1004, Administration.SetDateOfBirth(-8761), N'M');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, LastName, MajorID, MinorID, BirthDate, Gender)
VALUES(N'49575137', N'Keith', N'Boxley', 1026, 1024, Administration.SetDateOfBirth(-7845), N'M'),
      (N'80848600', N'Luis',  N'Velker', 1017, 1004, Administration.SetDateOfBirth(-8351), N'M');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, MajorID, MinorID, BirthDate, Gender)
VALUES(N'92741355', N'Heather', N'Rose', N'Cullen',     1002, 1014, Administration.SetDateOfBirth(-7255), N'F'),
      (N'27495006', N'Marcus', N'Howard', N'Emery',     1024, 1005, Administration.SetDateOfBirth(-15888), N'M'),
      (N'17724035', N'Lucas', N'Benjamin', N'Frieddle', 1006, 1014, Administration.SetDateOfBirth(-6583), N'M');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, LastName, BirthDate, MajorID, MinorID, Gender)
VALUES(N'17749608', N'Nicholas', N'Hartley', Administration.SetDateOfBirth(-14114), 1011, 1014, N'M'),
      (N'27948146', N'Craig',    N'James',   Administration.SetDateOfBirth(-8305),  1002, 1011, N'M');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, MajorID, MinorID, Gender)
VALUES(N'20961160', N'Ann',     N'Catherine', N'Monte',    Administration.SetDateOfBirth(-8089),  1009, 1007, N'F'),
      (N'62094115', N'Eleonor', N'Megan',     N'Williams', Administration.SetDateOfBirth(-7089),  1026, 1012, N'F'),
      (N'82862805', N'Ryan',    N'Joseph',    N'McBride',  Administration.SetDateOfBirth(-14086), 1026, 1010, N'M');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, LastName, MajorID, MinorID, Gender, BirthDate)
VALUES(N'60804836', N'Jeanne', N'Dylan',    1001, 1023, N'F', Administration.SetDateOfBirth(-16975)),
	  (N'38050586', N'Amanda', N'Campbell', 1003, 1001, N'F', Administration.SetDateOfBirth(-6857));
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, LastName, MajorID, MinorID, Gender, BirthDate)
VALUES(N'40526839', N'Donald',   N'Fisher', 1016, 1010, N'M', Administration.SetDateOfBirth(-8760)),
      (N'20038074', N'Angelina', N'Hansen', 1008, 1015, N'F', Administration.SetDateOfBirth(-12987)),
      (N'69558505', N'Sennay',   N'Pusz',   1004, 1004, N'M', Administration.SetDateOfBirth(-9749));
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, MajorID, MinorID, BirthDate, Gender)
VALUES(N'92684602', N'Steve',  N'Larry',     N'Carlson',   1010, 1005, Administration.SetDateOfBirth(-8570), N'M'),
      (N'29374957', N'Luke',   N'Thomas',    N'Parkinson', 1019, 1005, Administration.SetDateOfBirth(-10235), N'M'),
      (N'20940035', N'Simon',  N'Gustave',   N'Micheals',  1026, 1003, Administration.SetDateOfBirth(-7705), N'M'),
      (N'64885004', N'Dorrin', N'Octavia',   N'Vive',      1019, 1006, Administration.SetDateOfBirth(-13955), N'F'),
      (N'60283050', N'Mario',  N'Francesco', N'Gallo',     1016, 1002, Administration.SetDateOfBirth(-9705), N'M'),
      (N'68284003', N'Jerry',  N'Scott',     N'Krantz',    1009, 1012, Administration.SetDateOfBirth(-18507), N'M');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, LastName, MajorID, MinorID, Gender, BirthDate)
VALUES(N'94005924', N'Michael',  N'Dobmeyer', 1004, 1014, N'M', Administration.SetDateOfBirth(-15326)),
      (N'20486050', N'Felicity', N'Columbo',  1007, 1019, N'F', Administration.SetDateOfBirth(-7913)),
      (N'29749316', N'Donald',   N'Wine',     1021, 1022, N'M', Administration.SetDateOfBirth(-18584));
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, MajorID, MinorID, Gender, BirthDate)
VALUES(N'44040448', N'Jason', N'Terence', N'Holcomb', 1007, 1001, N'M', Administration.SetDateOfBirth(-9286));
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, LastName, BirthDate, MajorID, MinorID, Gender)
VALUES(N'93559405', N'Lisa', N'Williamson',  Administration.SetDateOfBirth(-9295),  1016, 1003, N'F'),
      (N'28405006', N'Johnnie', N'Recupero', Administration.SetDateOfBirth(-16783), 1006, 1005, N'F'),
	  (N'97485006', N'Paula', N'Suarez',     Administration.SetDateOfBirth(-9447),  1013, 1021, N'F');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, MajorID, MinorID, Gender)
VALUES(N'80839048', N'Johanna', N'Elisa', N'Possemato', Administration.SetDateOfBirth(-6891), 1010, 1002, N'F');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, LastName, MajorID, MinorID, Gender, BirthDate)
VALUES(N'30384055', N'Nelson', N'Tripplehorn', 1017, 1001, N'M', Administration.SetDateOfBirth(-6977));
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, MajorID, MinorID, Gender, BirthDate)
VALUES(N'40830484', N'Gregory',  N'Ryan',     N'Duck',     1023, 1006, N'M', Administration.SetDateOfBirth(-6972)),
	  (N'40255048', N'Kathleen', N'Chrissie', N'Chin',     1016, 1023, N'F', Administration.SetDateOfBirth(-6870)),
	  (N'35850845', N'Wanda',    N'Rosette',  N'Dundon',   1024, 1005, N'F', Administration.SetDateOfBirth(-7992)),
	  (N'50284085', N'Richard',  N'Robert',   N'Domenici', 1016, 1005, N'M', Administration.SetDateOfBirth(-6709)),
	  (N'40380046', N'Simon',    N'Peter',    N'Michaels', 1018, 1008, N'M', Administration.SetDateOfBirth(-9394));
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, LastName, MajorID, MinorID, Gender, BirthDate)
VALUES(N'27483004', N'Frank', N'Gaudino', 1024, 1027, N'M', Administration.SetDateOfBirth(-6675));
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, MajorID, MinorID, BirthDate, Gender)
VALUES(N'40406858', N'Dorrin', N'Viviane', N'Vive', 1019, 1012, Administration.SetDateOfBirth(-9002), N'F');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, LastName, MajorID, MinorID, BirthDate, Gender)
VALUES(N'69495411', N'Heather', N'Cullen', 1021, 1007, Administration.SetDateOfBirth(-9222), N'F'),
      (N'94184085', N'Anthony', N'Sorell', 1022, 1009, Administration.SetDateOfBirth(-7660), N'M');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, MajorID, MinorID, BirthDate, Gender)
VALUES(N'68500862', N'Marcus', N'Emile', N'Emery', 1023, 1007, Administration.SetDateOfBirth(-7589), N'M');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, LastName, MajorID, MinorID, BirthDate, Gender)
VALUES(N'28351530', N'Lucas',   N'Frieddle',   1011, 1004, Administration.SetDateOfBirth(-8972), N'M'),
      (N'60422805', N'Matthew', N'Maldarella', 1015, 1003, Administration.SetDateOfBirth(-6808), N'M');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, MajorID, MinorID, BirthDate, Gender)
VALUES(N'17948020', N'Christopher', N'Joseph',    N'Krisman', 1014, 1006, Administration.SetDateOfBirth(-6612), N'M'),
      (N'60920468', N'Kathie',      N'Jeannette', N'Elliott', 1010, 1005, Administration.SetDateOfBirth(-7867), N'F');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, LastName, MajorID, MinorID, BirthDate, Gender)
VALUES(N'38500685', N'Jeremy', N'Dolan',  1006, 1010, Administration.SetDateOfBirth(-9591), N'M'),
      (N'70850607', N'Scott',  N'Krantz', 1007, 1004, Administration.SetDateOfBirth(-6588), N'M'),
      (N'29681704', N'Erik',   N'Carr',   1019, 1008, Administration.SetDateOfBirth(-9321), N'M');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, MajorID, MinorID, BirthDate, Gender)
VALUES(N'70384857', N'Shiniqua', N'Juanita', N'Degon', 1002, 1001, Administration.SetDateOfBirth(-8546), N'F');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, LastName, BirthDate, MajorID, MinorID, Gender)
VALUES(N'28408155', N'Colleen', N'Taylor',Administration.SetDateOfBirth(-9412),  1001, 1024, N'F');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, MajorID, MinorID, BirthDate, Gender)
VALUES(N'20834086', N'Luisa', N'Pamela', N'Vanecek', 1005, 1028, Administration.SetDateOfBirth(-7100), N'F'),
      (N'83948802', N'Arielle', N'Joelle', N'Schroeder', 1018, 1004, Administration.SetDateOfBirth(-7881), N'F');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, LastName, BirthDate, MajorID, MinorID, Gender)
VALUES(N'28495002', N'Rasha', N'Ojemuyiwa', Administration.SetDateOfBirth(-9071), 1016, 1011, N'F');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, MajorID, MinorID, Gender)
VALUES(N'39405842', N'Krista',    N'Elisette',  N'Cole',      Administration.SetDateOfBirth(-6720),  1020, 1008, N'F'),
	  (N'92495020', N'Christine', N'Annette',   N'Miller',    Administration.SetDateOfBirth(-7226),  1009, 1033, N'F'),
	  (N'66038466', N'Louise',    N'Sharon',    N'Moffitt',   Administration.SetDateOfBirth(-6670),  1010, 1001, N'F'),
	  (N'24096855', N'Elisabeth', N'Maribelle', N'Kirchner',  Administration.SetDateOfBirth(-10004), 1014, 1018, N'F'),
	  (N'29400035', N'Wendy',     N'Justine',   N'Huntsmann', Administration.SetDateOfBirth(-8570),  1006, 1013, N'F');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, LastName, BirthDate, MajorID, MinorID, Gender)
VALUES(N'86039415', N'Santina', N'Mathis', Administration.SetDateOfBirth(-6676), 1003, 1004, N'F'),
	  (N'84058040', N'Martine', N'Rich',   Administration.SetDateOfBirth(-8864), 1009, 1001, N'F'),
	  (N'30804584', N'Maxwell', N'Plante', Administration.SetDateOfBirth(-6679), 1017, 1012, N'M');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, MajorID, MinorID, Gender)
VALUES(N'20804951', N'Keith',    N'Joseph',     N'Boxley', Administration.SetDateOfBirth(-6706), 1015, 1008, N'M'),
      (N'29847502', N'Michael',  N'Jonathan',   N'Ritchie', Administration.SetDateOfBirth(-8420), 1022, 1027, N'M'),
      (N'29400359', N'Marianne', N'Paulette',   N'Oslin', Administration.SetDateOfBirth(-16238), 1007, 1017, N'F'),
      (N'25850859', N'Santiana', N'Julianna',   N'Berger', Administration.SetDateOfBirth(-7092), 1009, 1001, N'F'),
      (N'28435984', N'Robyne',   N'Jessica',    N'Reeds', Administration.SetDateOfBirth(-16985), 1004, 1013, N'F'),
	  (N'62683004', N'Michelle', N'Bernadette', N'Reinhardt', Administration.SetDateOfBirth(-7570), 1006, 1003, N'F');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, LastName, BirthDate, Gender, MajorID, MinorID)
VALUES(N'40850049', N'Luis',     N'Velker', Administration.SetDateOfBirth(-6701), N'M', 1017, 1005),
      (N'39480513', N'Kailehia', N'Shrestha',Administration.SetDateOfBirth(-10186), N'F',  1009, 1001);
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, LastName, BirthDate, MajorID, MinorID)
VALUES(N'29337594', N'Khalla',   N'Sinyi', Administration.SetDateOfBirth(-7997), 1001, 1018);
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, LastName, BirthDate, Gender, MajorID, MinorID)
VALUES(N'53397060', N'Felicia',  N'Worries',  Administration.SetDateOfBirth(-6970), N'F', 1011, 1001),
	  (N'29403095', N'Gretchen', N'James', Administration.SetDateOfBirth(-6799), N'F', 1001, 1009),
	  (N'28049285', N'Lanikha',  N'Jackson', Administration.SetDateOfBirth(-6587), N'M', 1018, 1008);
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, MajorID, MinorID)
VALUES(N'92748515', N'Megan',    N'Helene',     N'Lansing',    Administration.SetDateOfBirth(-7070), N'F', 1009, 1005),
	  (N'40680688', N'Erik',     N'George',     N'Carr',       Administration.SetDateOfBirth(-6596), N'M', 1002, 1017),
	  (N'29749571', N'Alan',     N'Peter',      N'Walden',     Administration.SetDateOfBirth(-7972), N'M', 1011, 1005),
	  (N'38400074', N'Michelle', N'Antoinette', N'Stephenson', Administration.SetDateOfBirth(-9162), N'F', 1018, 1014),
	  (N'50846605', N'Audrey',   N'Seraphine',  N'Neidenthal', Administration.SetDateOfBirth(-7800), N'F', 1005, 1019),
	  (N'20840051', N'Joy',      N'Grace',      N'Donovan',    Administration.SetDateOfBirth(-6578), N'F', 1009, 1004),
	  (N'62082242', N'Amanda',   N'Fannie',     N'Campbell',   Administration.SetDateOfBirth(-8518), N'F', 1001, 1015),
	  (N'50183209', N'Rose',     N'Jeannette',  N'Welborne',   Administration.SetDateOfBirth(-7499), N'F', 1003, 1009);
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, LastName, BirthDate, Gender, MajorID, MinorID)
VALUES(N'22499506', N'Lucie',  N'Kearns', Administration.SetDateOfBirth(-6572), N'F',    1012, 1002),
      (N'64805999', N'Hector', N'Chiarelli', Administration.SetDateOfBirth(-8662), N'M', 1013, 1005);
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, MajorID, MinorID, Gender, BirthDate)
VALUES(N'62495184', N'Marc', N'Nathan', N'Contreras', 1016, 1002, N'M', Administration.SetDateOfBirth(-7577));
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, LastName, MajorID, MinorID, Gender, BirthDate)
VALUES(N'40384942', N'Jordanna', N'Camacho',   1019, 1002, N'F', Administration.SetDateOfBirth(-6676)),
      (N'20594225', N'Martin',   N'Gilbreath', 1001, 1006, N'M', Administration.SetDateOfBirth(-6706));
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, MajorID, MinorID, Gender, BirthDate)
VALUES(N'69304095', N'Mark',      N'Douglas', N'Krasnopolky', 1017, 1012, N'M', Administration.SetDateOfBirth(-6777)),
      (N'49794883', N'Kenneth',   N'Steven',  N'Chaney',      1013, 1006, N'M', Administration.SetDateOfBirth(-6650)),
      (N'95060506', N'Anthony ',  N'William', N'Soumoff',     1013, 1006, N'M', Administration.SetDateOfBirth(-8165)),
      (N'82855824', N'Katherine', N'Julie',   N'Ward',        1013, 1006, N'F', Administration.SetDateOfBirth(-7065));
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, LastName, MajorID, MinorID, Gender, BirthDate)
VALUES(N'69048520', N'Ornella',  N'Thomas',  1008, 1018, N'F', Administration.SetDateOfBirth(-8570)),
      (N'28409511', N'David',    N'Kearney', 1012, 1005, N'M', Administration.SetDateOfBirth(-6708)),
      (N'62930516', N'Emmanuel', N'Graney',  1020, 1027, N'M', Administration.SetDateOfBirth(-6899)),
      (N'20394051', N'Helios',   N'Cheezum', 1010, 1001, N'M', Administration.SetDateOfBirth(-7005));
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, MajorID, MinorID, Gender, BirthDate)
VALUES(N'20384058', N'Melissa', N'Jeannette', N'Cheng', 1004, 1003, N'F', Administration.SetDateOfBirth(-6872));
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, LastName, MajorID, MinorID, Gender, BirthDate)
VALUES(N'50208314', N'Amie',   N'Laszlo', 1012, 1011, N'F', Administration.SetDateOfBirth(-6705)),
      (N'22636249', N'Andrew', N'Rhoads', 1013, 1001, N'M', Administration.SetDateOfBirth(-6580)),
      (N'70384085', N'Jason',  N'Leuw',   1016, 1004, N'M', Administration.SetDateOfBirth(-6579)),
      (N'62974773', N'Emilie', N'Cowel',  1010, 1005, N'F', Administration.SetDateOfBirth(-6878));
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, MajorID, MinorID, Gender, BirthDate)
VALUES(N'20403950', N'Paulette', N'Christine', N'Romano',    1004, 1015, N'F', Administration.SetDateOfBirth(-7202)),
      (N'29411131', N'Michelle', N'Pamela',    N'Bernquist', 1004, 1006, N'F', Administration.SetDateOfBirth(-6579)),
	  (N'28408520', N'Kenneth',  N'Samuel',    N'Chaney',    1020, 1006, N'M', Administration.SetDateOfBirth(-6588));
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, LastName, MajorID, MinorID, BirthDate, Gender)
VALUES(N'62840030', N'Jeremy',  N'Dolan',     1002, 1005, Administration.SetDateOfBirth(-6972), N'M'),
      (N'38040518', N'Daniel',  N'Schuerger', 1004, 1003, Administration.SetDateOfBirth(-9822), N'M'),
      (N'62084031', N'Felicia', N'Worries',   1012, 1011, Administration.SetDateOfBirth(-6674), N'F'),
      (N'20842294', N'Stanley', N'Zampieri',  1013, 1006, Administration.SetDateOfBirth(-7570), N'M'),
      (N'42085008', N'Horace',  N'Rayne',     1005, 1011, Administration.SetDateOfBirth(-6576), N'M'),
      (N'20940058', N'Colleen', N'Taylor',    1002, 1015, Administration.SetDateOfBirth(-7497), N'F');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, MajorID, MinorID, BirthDate, Gender)
VALUES(N'18003840', N'Annette', N'Lisa', N'Dickson', 1009, 1002, Administration.SetDateOfBirth(-6570), N'F');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, LastName, MajorID, MinorID, BirthDate, Gender)
VALUES(N'80692826', N'Joanne',      N'Mott',    1002, 1013, Administration.SetDateOfBirth(-9237), N'F'),
      (N'80608060', N'Annette',     N'Roberts', 1007, 1002, Administration.SetDateOfBirth(-7570), N'F'),
      (N'84085141', N'Ryan',        N'Emerick', 1016, 1022, Administration.SetDateOfBirth(-10001), N'M'),
      (N'20846118', N'Louis',       N'Sanchez', 1019, 1009, Administration.SetDateOfBirth(-8570), N'M'),
      (N'84294022', N'Christopher', N'Lebus',   1010, 1005, Administration.SetDateOfBirth(-9570), N'M');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, MajorID, MinorID, BirthDate, Gender)
VALUES(N'20850842', N'Anne', N'Christine', N'Bower', 1008, 1022, Administration.SetDateOfBirth(-8507), N'M');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'19435785', N'Nancy', N'Lucie', N'Hostler', Administration.SetDateOfBirth(-9082), N'F', N'nhostler@emailcity.com', 1013, 1010, N'nhostler'),
      (N'17363934', N'Joan', N'Debie', N'Cho', Administration.SetDateOfBirth(-9580), N'F', N'jcho@hotmail.com', 1002, 1022, N'jcho'),
      (N'90132394', N'Tracy', N'Arlette', N'Gwynn', Administration.SetDateOfBirth(-10789), N'F', N'tgwynn@googlemail.com', 1005, 1007, N'tgwynn'),
      (N'51967394', N'Loretta', N'Sidonie', N'Hillebrand', Administration.SetDateOfBirth(-12682), N'F', N'lhillebrand@bell.com', 1006, 1017, N'lhillebrand'),
      (N'35412080', N'Joshua', N'Andrew', N'Molina', Administration.SetDateOfBirth(-17637), N'M', N'jmolina@bell.com', 1001, 1028, N'jmolina'),
      (N'44321303', N'Jason', N'Robert', N'Yates', Administration.SetDateOfBirth(-15963), N'M', N'jyates@gmail.com', 1004, 1002, N'jyates'),
      (N'20047107', N'Rosalie', N'Lucie', N'Riehle', Administration.SetDateOfBirth(-10145), N'F', N'rriehle@googlemail.com', 1004, 1003, N'rriehle'),
      (N'29747428', N'Gwen', N'Veronica', N'Sun', Administration.SetDateOfBirth(-9823), N'F', N'gsun@bell.com', 1020, 1005, N'gsun'),
      (N'79707268', N'Yvonne', N'Deborah', N'Howell', Administration.SetDateOfBirth(-7640), N'F', N'yhowell@bell.com', 1015, 1015, N'yhowell'),
      (N'22849776', N'Lorraine', N'Anne', N'Ball', Administration.SetDateOfBirth(-14280), N'F', N'lball@googlemail.com', 1008, 1012, N'lball'),
      (N'74460757', N'Deborah', N'Jasmine', N'Jones', Administration.SetDateOfBirth(-7964), N'F', N'djones@bell.com', 1014, 1012, N'djones');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'53973632', N'Meredith', N'Pelaggi', Administration.SetDateOfBirth(-14205), N'F', N'mpelaggi@bell.com', 1011, 1007, N'mpelaggi');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'84489520', N'Daniel', N'Ronald', N'Osmont', Administration.SetDateOfBirth(-12895), N'M', N'dosmont@bell.com', 1008, 1016, N'dosmont');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'42340520', N'Frank', N'Calvanese', Administration.SetDateOfBirth(-13698), N'M', N'fcalvanese@emailcity.com', 1005, 1025, N'fcalvanese');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'39886905', N'Grace', N'Clarice', N'Curbera', Administration.SetDateOfBirth(-8904), N'F', N'gcurbera@bell.com', 1005, 1009, N'gcurbera'),
      (N'90641092', N'Liza', N'Rebeccah', N'Holder', Administration.SetDateOfBirth(-14621), N'F', N'lholder@comcast.net', 1020, 1011, N'lholder');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'20010121', N'Marc', N'Hawksworth', Administration.SetDateOfBirth(-7631), N'M', N'mhawksworth@comcast.net', 1018, 1033, N'mhawksworth');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'46195810', N'Ezekiel', N'Maurice', N'Hodge', Administration.SetDateOfBirth(-14865), N'M', N'ehodge@emailcity.com', 1020, 1026, N'ehodge'),
      (N'20130547', N'Maria', N'Juanita', N'Montes', Administration.SetDateOfBirth(-11784), N'F', N'mmontes@verizon.net', 1019, 1015, N'mmontes'),
      (N'91649148', N'Gwendolyn', N'Lucie', N'Rosenkrantz', Administration.SetDateOfBirth(-16581), N'F', N'grosenkrantz@verizon.net', 1004, 1031, N'grosenkrantz'),
      (N'85887875', N'Scott', N'Raymond', N'Kanne', Administration.SetDateOfBirth(-14672), N'M', N'skanne@bell.com', 1015, 1015, N'skanne');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'85940827', N'James ', N'Darling', Administration.SetDateOfBirth(-9606), N'M', N'jdarling@bell.com', 1002, 1013, N'jdarling');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'30706436', N'Samantha', N'Sylvie', N'Sandberg', Administration.SetDateOfBirth(-8534), N'F', N'ssandberg@yahoo.com', 1006, 1025, N'ssandberg'),
      (N'90070424', N'Benadette', N'Salome', N'Jones', Administration.SetDateOfBirth(-8555), N'F', N'bjones@bell.com', 1010, 1030, N'bjones'),
      (N'70533722', N'Stephen', N'Louis', N'Maier', Administration.SetDateOfBirth(-16221), N'M', N'smaier@bell.com', 1019, 1004, N'smaier');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'81299722', N'Jonah', N'Lane', Administration.SetDateOfBirth(-7807), N'M', N'jlane@gmail.com', 1016, 1001, N'jlane'),
      (N'22881251', N'Sally', N'Shippman', Administration.SetDateOfBirth(-14868), N'F', N'sshippman@bell.com', 1024, 1026, N'sshippman');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'28203030', N'Dorothy', N'Mauricette', N'Coulon', Administration.SetDateOfBirth(-15000), N'F', N'dcoulon@bell.com', 1015, 1019, N'dcoulon'),
      (N'42467499', N'Bruce', N'Frank', N'Foley', Administration.SetDateOfBirth(-14431), N'M', N'bfoley@googlemail.com', 1014, 1026, N'bfoley');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'29502309', N'Maria', N'Anderson', Administration.SetDateOfBirth(-7910), N'F', N'manderson@comcast.net', 1004, 1030, N'manderson');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'60206888', N'Daniel', N'Gary', N'Kindberg', Administration.SetDateOfBirth(-8087), N'M', N'dkindberg@emailcity.com', 1006, 1017, N'dkindberg'),
      (N'97999193', N'Nick', N'David', N'Connell', Administration.SetDateOfBirth(-8149), N'M', N'nconnell@hotmail.com', 1018, 1002, N'nconnell'),
      (N'72590985', N'Andrew', N'Philippe', N'Guglielmi', Administration.SetDateOfBirth(-7824), N'M', N'aguglielmi@comcast.net', 1013, 1005, N'aguglielmi'),
      (N'51131322', N'Paul', N'Franky', N'Yereni', Administration.SetDateOfBirth(-7703), N'M', N'pyereni@bell.com', 1005, 1026, N'pyereni'),
      (N'95327003', N'Eva', N'Maria', N'Martino', Administration.SetDateOfBirth(-8522), N'F', N'emartino@bell.com', 1003, 1017, N'emartino');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'97417868', N'Nicholas', N'Jaco', Administration.SetDateOfBirth(-7299), N'M', N'njaco@mailman.com', 1020, 1025, N'njaco');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'58620747', N'Simon', N'David', N'Crespo', Administration.SetDateOfBirth(-6686), N'M', N'screspo@bell.com', 1009, 1001, N'screspo'),
      (N'39516214', N'Daniel', N'James', N'Kramer', Administration.SetDateOfBirth(-9255), N'M', N'dkramer@googlemail.com', 1012, 1029, N'dkramer'),
      (N'94729207', N'Pascal', N'Armand', N'Peck', Administration.SetDateOfBirth(-9274), N'M', N'ppeck@hotmail.com', 1004, 1025, N'ppeck');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'73298200', N'James', N'Krantz', Administration.SetDateOfBirth(-9270), N'M', N'jkrantz@emailcity.com', 1015, 1002, N'jkrantz');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'83121488', N'Alexander', N'Scott', N'Thompson', Administration.SetDateOfBirth(-8662), N'M', N'athompson@bell.com', 1018, 1030, N'athompson'),
      (N'18260856', N'Thomas', N'Dave', N'Hoffman', Administration.SetDateOfBirth(-7394), N'M', N'thoffman@googlemail.com', 1002, 1025, N'thoffman');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'90840796', N'Haila', N'Sridhara', Administration.SetDateOfBirth(-7282), N'F', N'hsridhara@emailcity.com', 1006, 1021, N'hsridhara');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'96058128', N'Martha', N'Paulette', N'Cranor', Administration.SetDateOfBirth(-7156), N'F', N'mcranor@bell.com', 1011, 1001, N'mcranor'),
      (N'12876157', N'Yvette', N'Janice', N'Khane', Administration.SetDateOfBirth(-7841), N'F', N'ykhane@comcast.net', 1001, 1016, N'ykhane'),
      (N'38786165', N'Leila', N'Alliah', N'Glasgow', Administration.SetDateOfBirth(-6773), N'F', N'lglasgow@bell.com', 1006, 1005, N'lglasgow'),
      (N'92502665', N'Patricia', N'Arlette', N'Call', Administration.SetDateOfBirth(-8083), N'F', N'pcall@gmail.com', 1004, 1020, N'pcall');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'48261609', N'Albert', N'Coinceau', Administration.SetDateOfBirth(-7425), N'M', N'acoinceau@bell.com', 1013, 1011, N'acoinceau');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'66144902', N'Dannie', N'Lindsay', N'Parker', Administration.SetDateOfBirth(-7511), N'F', N'dparker@verizon.net', 1015, 1004, N'dparker'),
      (N'55467491', N'Paulette', N'Kathryn', N'Golden', Administration.SetDateOfBirth(-7425), N'F', N'pgolden@emailcity.com', 1007, 1028, N'pgolden'),
      (N'13859301', N'Lia', N'Emilie', N'Gionis', Administration.SetDateOfBirth(-7938), N'F', N'lgionis@verizon.net', 1013, 1010, N'lgionis'),
      (N'93712707', N'Jim', N'Patrick', N'Cammert', Administration.SetDateOfBirth(-9285), N'M', N'jcammert@hotmail.com', 1016, 1007, N'jcammert');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'66562891', N'George', N'Sesvold', Administration.SetDateOfBirth(-7444), N'M', N'gsesvold@verizon.net', 1019, 1006, N'gsesvold');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'10506692', N'Jimmy', N'John', N'Kilcoyne', Administration.SetDateOfBirth(-8249), N'M', N'jkilcoyne@bell.com', 1004, 1014, N'jkilcoyne'),
      (N'50023814', N'Dorothy', N'Carole', N'Nguyen', Administration.SetDateOfBirth(-9477), N'F', N'dnguyen@bell.com', 1021, 1027, N'dnguyen'),
      (N'21493956', N'Daniela', N'Paula', N'Worth', Administration.SetDateOfBirth(-7488), N'F', N'dworth@bell.com', 1013, 1028, N'dworth'),
      (N'57643062', N'Marthe', N'Gabriella', N'Keen', Administration.SetDateOfBirth(-7179), N'F', N'mkeen@bell.com', 1001, 1018, N'mkeen'),
      (N'36049772', N'Emma', N'Joan', N'Sullvan', Administration.SetDateOfBirth(-7144), N'F', N'esullvan@gmail.com', 1003, 1001, N'esullvan'),
      (N'34079653', N'Yvette', N'Lucie', N'Davids', Administration.SetDateOfBirth(-9291), N'F', N'ydavids@bell.com', 1010, 1013, N'ydavids'),
      (N'10665978', N'Warren', N'Christopher', N'Kenzle', Administration.SetDateOfBirth(-9505), N'M', N'wkenzle@gmail.com', 1013, 1015, N'wkenzle'),
      (N'87272402', N'Henry', N'Patrick', N'Chu', Administration.SetDateOfBirth(-7856), N'M', N'hchu@bell.com', 1002, 1009, N'hchu'),
      (N'34249719', N'John', N'Andrew', N'Demers', Administration.SetDateOfBirth(-7166), N'M', N'jdemers@comcast.net', 1009, 1001, N'jdemers'),
      (N'65615335', N'Bryan ', N'Richard', N'Kortan', Administration.SetDateOfBirth(-7717), N'M', N'bkortan@bell.com', 1016, 1029, N'bkortan');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'31744623', N'Joey', N'Burkholder', Administration.SetDateOfBirth(-7133), N'M', N'jburkholder@googlemail.com', 1005, 1030, N'jburkholder');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'21984932', N'Louise', N'Amie', N'Ortez', Administration.SetDateOfBirth(-7903), N'F', N'lortez@bell.com', 1006, 1025, N'lortez'),
      (N'55125729', N'Joseph', N'Antoine', N'Dreammer', Administration.SetDateOfBirth(-6798), N'M', N'jdreammer@gmail.com', 1009, 1025, N'jdreammer'),
      (N'71254786', N'James', N'Nicholas', N'Krishnan', Administration.SetDateOfBirth(-9343), N'M', N'jkrishnan@bell.com', 1002, 1001, N'jkrishnan');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'97644432', N'Dominique', N'Hill', Administration.SetDateOfBirth(-7168), N'F', N'dhill@hotmail.com', 1016, 1011, N'dhill');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'15767418', N'Alexandria', N'Lydie', N'Conway', Administration.SetDateOfBirth(-9423), N'F', N'aconway@gmail.com', 1015, 1019, N'aconway'),
      (N'30106760', N'Pascale', N'Emanuelle', N'Davidson', Administration.SetDateOfBirth(-8129), N'F', N'pdavidson@bell.com', 1008, 1018, N'pdavidson');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'31940701', N'Paula', N'Wang', Administration.SetDateOfBirth(-7450), N'F', N'pwang@gmail.com', 1006, 1023, N'pwang');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'54401016', N'Nancie', N'Justine', N'Bradley ', Administration.SetDateOfBirth(-9770), N'F', N'nbradley @hotmail.com', 1008, 1016, N'nbradley ');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'59447234', N'Danielle', N'Keans', Administration.SetDateOfBirth(-8278), N'F', N'dkeans@googlemail.com', 1014, 1018, N'dkeans');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'38418926', N'Peter', N'Howard', N'Latzen', Administration.SetDateOfBirth(-9456), N'M', N'platzen@gmail.com', 1018, 1019, N'platzen'),
      (N'89115358', N'Christian', N'Bernard', N'Martins', Administration.SetDateOfBirth(-7348), N'M', N'cmartins@yahoo.com', 1006, 1013, N'cmartins'),
      (N'98709881', N'Eve', N'Gwendolyn', N'Denning', Administration.SetDateOfBirth(-9610), N'F', N'edenning@comcast.net', 1013, 1022, N'edenning'),
      (N'34754520', N'Ray', N'Thomas', N'Penner', Administration.SetDateOfBirth(-9194), N'M', N'rpenner@emailcity.com', 1004, 1022, N'rpenner'),
      (N'20011186', N'Nicolle', N'Lucie', N'Brin', Administration.SetDateOfBirth(-9938), N'F', N'nbrin@bell.com', 1021, 1025, N'nbrin');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'73611030', N'George', N'Devine', Administration.SetDateOfBirth(-6999), N'M', N'gdevine@bell.com', 1005, 1017, N'gdevine'),
      (N'28806034', N'James', N'Hu', Administration.SetDateOfBirth(-9193), N'M', N'jhu@googlemail.com', 1014, 1008, N'jhu'),
      (N'24653204', N'Hanna ', N'Neal', Administration.SetDateOfBirth(-7848), N'F', N'hneal@hotmail.com', 1009, 1025, N'hneal');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'60393265', N'Sheryl', N'Goldie', N'Hwang', Administration.SetDateOfBirth(-7496), N'F', N'shwang@bell.com', 1018, 1018, N'shwang'),
      (N'88167413', N'Thomas', N'Harold', N'Aldredge', Administration.SetDateOfBirth(-7097), N'M', N'taldredge@mailman.com', 1017, 1020, N'taldredge'),
      (N'24383786', N'Danielle', N'Nicole', N'Bass', Administration.SetDateOfBirth(-7343), N'F', N'dbass@emailcity.com', 1001, 1030, N'dbass');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'82984779', N'Beth', N'Collin', Administration.SetDateOfBirth(-6914), N'F', N'bcollin@googlemail.com', 1017, 1013, N'bcollin');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'23446235', N'Jeannine', N'Lydia', N'Kar ', Administration.SetDateOfBirth(-9449), N'F', N'jkar @yahoo.com', 1013, 1020, N'jkar '),
      (N'91243832', N'Marcy', N'Annette', N'Perrizo', Administration.SetDateOfBirth(-7722), N'F', N'mperrizo@bell.com', 1010, 1023, N'mperrizo'),
      (N'29969950', N'James', N'Herman', N'Kluk', Administration.SetDateOfBirth(-9648), N'M', N'hkluk@yahoo.com', 1010, 1016, N'hkluk'),
      (N'10350959', N'Nathalie', N'Marinette', N'Rourcke', Administration.SetDateOfBirth(-6706), N'F', N'nrourcke@bell.com', 1014, 1019, N'nrourcke'),
      (N'81740213', N'Therese', N'Kathryn', N'Naughton', Administration.SetDateOfBirth(-9113), N'F', N'tnaughton@yahoo.com', 1003, 1017, N'tnaughton'),
	  (N'71418717', N'Alfred', N'Raoul', N'Heroes', Administration.SetDateOfBirth(-8512), N'M', N'aheroes@yahoo.com', 1004, 1030, N'aheroes'),
	  (N'48008487', N'Charles', N'Roger', N'Riggs', Administration.SetDateOfBirth(-8383), N'M', N'criggs@comcast.net', 1006, 1020, N'criggs'),
	  (N'47411689', N'Claudia', N'Lydia', N'Schneider', Administration.SetDateOfBirth(-7324), N'F', N'cschneider@bell.com', 1001, 1009, N'cschneider');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'20078843', N'Eugene', N'Taylor', Administration.SetDateOfBirth(-8069), N'M', N'etaylor@bell.com', 1007, 1033, N'etaylor');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'19429094', N'Candace ', N'Laura', N'Laliberte', Administration.SetDateOfBirth(-8948), N'F', N'claliberte@comcast.net', 1012, 1029, N'claliberte'),
      (N'61778211', N'Kirk', N'Joseph', N'Gerber', Administration.SetDateOfBirth(-7571), N'M', N'kgerber@bell.com', 1019, 1017, N'kgerber'),
	  (N'75288751', N'Jeanne', N'Hollie', N'Chiu', Administration.SetDateOfBirth(-8796), N'F', N'jchiu@bell.com', 1014, 1033, N'jchiu'),
      (N'47551078', N'Maurin', N'Clarice', N'Archer', Administration.SetDateOfBirth(-8843), N'F', N'marcher@bell.com', 1011, 1012, N'marcher');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'46529552', N'Wallace', N'Mundy', Administration.SetDateOfBirth(-7133), N'M', N'wmundy@bell.com', 1010, 1028, N'wmundy'),
      (N'16166772', N'Jennie', N'Doan', Administration.SetDateOfBirth(-6870), N'F', N'jdoan@verizon.net', 1012, 1013, N'jdoan');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'42070327', N'Rose', N'Marie', N'Huffmman', Administration.SetDateOfBirth(-8039), N'F', N'rhuffmman@bell.com', 1007, 1021, N'rhuffmman');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'41152502', N'Arthetia', N'Maiolatesi', Administration.SetDateOfBirth(-9159), N'F', N'amaiolatesi@bell.com', 1013, 1023, N'amaiolatesi');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'65341724', N'Marcie', N'Lauren', N'Rastoggi', Administration.SetDateOfBirth(-17753), N'F', N'mrastoggi@comcast.net', 1001, 1023, N'mrastoggi'),
      (N'60781688', N'Ruth', N'Emmanuelle', N'Zaharous', Administration.SetDateOfBirth(-7148), N'F', N'rzaharous@googlemail.com', 1018, 1017, N'rzaharous');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'46698097', N'Leonika', N'Milden', Administration.SetDateOfBirth(-17001), N'F', N'lmilden@verizon.net', 1017, 1007, N'lmilden');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'52097679', N'Karen', N'Nickie', N'Palmer', Administration.SetDateOfBirth(-13928), N'F', N'kpalmer@yahoo.com', 1009, 1006, N'kpalmer');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'74899076', N'Gwendollyn', N'Hudson', Administration.SetDateOfBirth(-10989), N'F', N'ghudson@bell.com', 1002, 1006, N'ghudson');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'37939713', N'Donna', N'Maria', N'Gupton', Administration.SetDateOfBirth(-17881), N'F', N'dgupton@bell.com', 1016, 1018, N'dgupton'),
      (N'77351854', N'Jane', N'Rose', N'Scottsdale', Administration.SetDateOfBirth(-10501), N'F', N'jrose@bell.com', 1009, 1021, N'jrose'),
      (N'63510065', N'Rebeccah', N'Gretchen', N'Cheng', Administration.SetDateOfBirth(-11065), N'F', N'rcheng@gmail.com', 1004, 1029, N'rcheng'),
      (N'54408820', N'Michelle', N'Susie', N'Fitzpatrick', Administration.SetDateOfBirth(-11469), N'F', N'mfitzpatrick@gmail.com', 1011, 1027, N'mfitzpatrick'),
      (N'74066775', N'Tammie', N'Eugenie', N'Biscone', Administration.SetDateOfBirth(-8897), N'F', N'tbiscone@yahoo.com', 1012, 1016, N'tbiscone');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'86962934', N'Frederick', N'Trihey', Administration.SetDateOfBirth(-9608),  N'M', N'ftrihey@emailcity.com',   1014, 1013, N'ftrihey'),
      (N'98834584', N'Joseph',    N'Meyers', Administration.SetDateOfBirth(-8367),  N'M', N'jmeyers@comcast.net',     1019, 1021, N'jmeyers'),
	  (N'67091746', N'Mike',      N'Baldwin', Administration.SetDateOfBirth(-7795), N'M', N'mbaldwin@googlemail.com', 1018, 1015, N'mbaldwin');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'87516660', N'Margueritte', N'Lydie', N'Sauvage', Administration.SetDateOfBirth(-13660), N'F', N'msauvage@bell.com', 1001, 1001, N'msauvage'),
      (N'20580546', N'Lynda',       N'Tonie', N'Bonder', Administration.SetDateOfBirth(-15998), N'F', N'lbonder@earthlink.net', 1007, 1006, N'lbonder'),
	  (N'25731643', N'Harry',       N'Hollie', N'Doherty', Administration.SetDateOfBirth(-10083), N'M', N'hdoherty@earthlink.net', 1021, 1011, N'hdoherty');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'86402795', N'Louis', N'Hellerstein', Administration.SetDateOfBirth(-11528), N'F', N'lhellerstein@verizon.net', 1012, 1020, N'lhellerstein'),
      (N'12747841', N'Josephine', N'Ellis', Administration.SetDateOfBirth(-16958), N'F', N'jellis@yahoo.com', 1009, 1023, N'jellis');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'49638273', N'John',  N'Frederick', N'Heske', Administration.SetDateOfBirth(-17996),   N'M', N'jheske@comcast.net', 1020, 1015, N'jheske'),
      (N'34788867', N'Chris', N'Freddy',    N'Savage', Administration.SetDateOfBirth(-7189),   N'M', N'csavage@bell.com',   1009, 1017, N'csavage'),
	  (N'26787704', N'Aaron', N'Nick',      N'Belling', Administration.SetDateOfBirth(-12485), N'M', N'abelling@bell.com',  1012, 1012, N'abelling'),
	  (N'50158601', N'Mark', N'Ronald', N'Lowe', Administration.SetDateOfBirth(-18189), N'M', N'mlowe@hotmail.com', 1009, 1030, N'mlowe'),
	  (N'45894868', N'Frederick', N'Samuel', N'Rothstein', Administration.SetDateOfBirth(-17176), N'M', N'frothstein@gmail.com', 1007, 1020, N'frothstein');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'53115531', N'Gregory', N'Macclure', Administration.SetDateOfBirth(-7176), N'M', N'gmacclure@gmail.com', 1017, 1003, N'gmacclure'),
      (N'51711137', N'Nicholas', N'Apers', Administration.SetDateOfBirth(-15853), N'M', N'napers@bell.com', 1005, 1007, N'napers');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'46541529', N'Sharon', N'Elisa', N'Mccoy', Administration.SetDateOfBirth(-7983), N'F', N'smccoy@yahoo.com', 1005, 1015, N'smccoy');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'67448072', N'Paulette', N'Menzies', Administration.SetDateOfBirth(-7791), N'F', N'pmenzies@hotmail.com', 1007, 1018, N'pmenzies');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'51354996', N'Jennifer', N'Sarach', N'Olson', Administration.SetDateOfBirth(-7654), N'F', N'jolson@emailcity.com', 1018, 1028, N'jolson');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'76656597', N'Tammy', N'Howell', Administration.SetDateOfBirth(-7899), N'F', N'thowell@bell.com', 1009, 1025, N'thowell');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'26096589', N'Marc', N'Jake', N'Milner', Administration.SetDateOfBirth(-7972), N'M', N'mmilner@earthlink.net', 1005, 1031, N'mmilner');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'96395325', N'Emilienne', N'Taylor', Administration.SetDateOfBirth(-7501), N'F', N'etaylor@bell.com', 1021, 1013, N'etaylor'),
      (N'42665271', N'Vickie', N'Grant', Administration.SetDateOfBirth(-6960), N'F', N'vgrant@yahoo.com', 1017, 1001, N'vgrant');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'10730442', N'Jerome', N'Gregg', N'Devlin', Administration.SetDateOfBirth(-7146), N'M', N'jdevlin@gmail.com', 1009, 1024, N'jdevlin'),
      (N'96389858', N'Rick', N'Emile', N'Bakers', Administration.SetDateOfBirth(-7868), N'M', N'rbakers@verizon.net', 1021, 1011, N'rbakers'),
	  (N'92064035', N'Keith', N'Daniel', N'Poletto', Administration.SetDateOfBirth(-7491), N'M', N'kpoletto@gmail.com', 1010, 1024, N'kpoletto'),
	  (N'94806594', N'Matthew', N'Ben', N'Lewison', Administration.SetDateOfBirth(-7256), N'M', N'mlewison@gmail.com', 1016, 1009, N'mlewison'),
	  (N'68959482', N'Trisha', N'Odette', N'Hulme', Administration.SetDateOfBirth(-6702), N'F', N'thulme@bell.com', 1017, 1028, N'thulme'),
	  (N'70602709', N'Louise', N'Marie', N'Cohen', Administration.SetDateOfBirth(-7391), N'F', N'lcohen@bell.com', 1002, 1024, N'lcohen');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'77630549', N'Patrick', N'Amaleck', Administration.SetDateOfBirth(-7313), N'M', N'pamaleck@bell.com', 1001, 1025, N'pamaleck'),
      (N'41199061', N'George', N'Osborne', Administration.SetDateOfBirth(-7316), N'M', N'gosborne@verizon.net', 1003, 1011, N'gosborne');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'45029254', N'Gretchen', N'Elodie', N'Sweetham', Administration.SetDateOfBirth(-8050), N'F', N'gsweetham@hotmail.com', 1016, 1015, N'gsweetham'),
      (N'39190374', N'Sidonie', N'Emilie', N'Thrashler', Administration.SetDateOfBirth(-7641), N'F', N'sthrashler@hotmail.com', 1002, 1001, N'sthrashler'),
	  (N'10778029', N'Martin', N'Calvin', N'Daniels', Administration.SetDateOfBirth(-12085), N'M', N'mdaniels@yahoo.com', 1009, 1024, N'mdaniels'),
	  (N'90528735', N'Paul', N'Jacob', N'Burnett', Administration.SetDateOfBirth(-17173), N'M', N'pburnett@comcast.net', 1019, 1009, N'pburnett');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'86354951', N'Maurice', N'Cramb', Administration.SetDateOfBirth(-6926), N'M', N'mcramb@hotmail.com', 1001, 1016, N'mcramb');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'33058394', N'Christine', N'Annie', N'Worthy', Administration.SetDateOfBirth(-12050), N'F', N'cworthy@bell.com', 1016, 1011, N'cworthy'),
      (N'38452258', N'Stephen', N'Gerard', N'Franks', Administration.SetDateOfBirth(-9699), N'M', N'sfranks@bell.com', 1001, 1016, N'sfranks'),
	  (N'71754464', N'John', N'', N'Kellett', Administration.SetDateOfBirth(-10352), N'M', N'jkellett@comcast.net', 1010, 1023, N'jkellett'),
	  (N'77733973', N'Michael', N'Peter', N'Michun', Administration.SetDateOfBirth(-17164), N'M', N'mmichun@verizon.net', 1018, 1015, N'mmichun'),
	  (N'30304975', N'Paula', N'Andrea', N'Rout', Administration.SetDateOfBirth(-14351), N'F', N'prout@bell.com', 1021, 1001, N'prout'),
	  (N'62662180', N'Gerard', N'Thomas', N'Tranter', Administration.SetDateOfBirth(-8660), N'M', N'gtranter@comcast.net', 1005, 1012, N'gtranter');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'33438412', N'Eugenie', N'Falconer', Administration.SetDateOfBirth(-9873), N'F', N'efalconer@bell.com', 1021, 1029, N'efalconer');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'98454365', N'Jeremy', N'Peter', N'Bradburry', Administration.SetDateOfBirth(-9429), N'M', N'jbradburry@gmail.com', 1002, 1006, N'jbradburry'),
      (N'51909476', N'Ivan', N'Kevin', N'Pander', Administration.SetDateOfBirth(-7205), N'M', N'ipander@hotmail.com', 1010, 1031, N'ipander'),
	  (N'51356234', N'Anatole', N'Frank', N'Stubbs', Administration.SetDateOfBirth(-8816), N'M', N'astubbs@hotmail.com', 1020, 1002, N'astubbs'),
	  (N'70631545', N'Joannie', N'Marie', N'Little', Administration.SetDateOfBirth(-6601), N'F', N'jlittle@verizon.net', 1007, 1024, N'jlittle'),
	  (N'92208263', N'Ann', N'Vicky', N'Lutt', Administration.SetDateOfBirth(-7384), N'F', N'alutt@bell.com', 1009, 1018, N'alutt');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'71080178', N'Kevin', N'Paeven', Administration.SetDateOfBirth(-8667), N'M', N'kpaeven@hotmail.com', 1008, 1024, N'kpaeven');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'56632435', N'Jerome', N'Calvin', N'Wah', Administration.SetDateOfBirth(-9904), N'M', N'jwah@yahoo.com', 1008, 1014, N'jwah'),
      (N'69306634', N'Roberta', N'Bertine', N'Pattison', Administration.SetDateOfBirth(-9096), N'F', N'rpattison@bell.com', 1004, 1021, N'rpattison'),
	  (N'25024897', N'Johnny', N'Peter', N'Miller', Administration.SetDateOfBirth(-10188), N'M', N'jmiller@yahoo.com', 1021, 1009, N'jmiller'),
	  (N'52937405', N'Fannie', N'Virginia', N'Pather', Administration.SetDateOfBirth(-6719), N'F', N'fpather@gmail.com', 1002, 1009, N'fpather'),
	  (N'70212559', N'Lydia', N'Octavia', N'Ashton', Administration.SetDateOfBirth(-8342), N'F', N'lashton@yahoo.com', 1019, 1031, N'lashton');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'18317535', N'Simon', N'Sanders', Administration.SetDateOfBirth(-8363), N'M', N'ssanders@bell.com', 1019, 1016, N'ssanders'),
      (N'63622411', N'Frank', N'Robson',  Administration.SetDateOfBirth(-6934), N'M', N'frobson@yahoo.com', 1020, 1020, N'frobson');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'34542284', N'John', N'Patrick', N'Greene', Administration.SetDateOfBirth(-6819), N'M', N'jgreene@bell.com', 1007, 1021, N'jgreene');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'99336542', N'Fiona', N'Wong', Administration.SetDateOfBirth(-6690), N'F', N'fwong@gmail.com', 1015, 1022, N'fwong');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'23237996', N'Joan', N'Maria', N'Hughes', Administration.SetDateOfBirth(-7916), N'F', N'jhughes@googlemail.com', 1009, 1024, N'jhughes'),
      (N'56561244', N'Simonette', N'Judith', N'Szalc', Administration.SetDateOfBirth(-8212), N'F', N'sszalc@gmail.com', 1021, 1021, N'sszalc'),
	  (N'87930282', N'Kristen', N'Paula', N'Cummings', Administration.SetDateOfBirth(-7477), N'F', N'kcummings@bell.com', 1019, 1030, N'kcummings'),
	  (N'38823828', N'Peter', N'Johnny', N'Cassar', Administration.SetDateOfBirth(-7144), N'M', N'pcassar@bell.com', 1011, 1013, N'pcassar');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'97213073', N'Mario', N'Connaro', Administration.SetDateOfBirth(-6609), N'M', N'mconnaro@bell.com', 1016, 1008, N'mconnaro');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'28303640', N'Connie', N'Denise', N'Baird', Administration.SetDateOfBirth(-7571), N'F', N'cbaird@gmail.com', 1020, 1004, N'cbaird'),
      (N'29376736', N'Garreth', N'Thomas', N'Crighton', Administration.SetDateOfBirth(-6962), N'M', N'gcrighton@bell.com', 1014, 1021, N'gcrighton'),
	  (N'32352991', N'Kay', N'', N'Lewis', Administration.SetDateOfBirth(-7876), N'M', N'klewis@yahoo.com', 1020, 1009, N'klewis'),
	  (N'72760538', N'Terence', N'Jacob', N'Milden', Administration.SetDateOfBirth(-7139), N'M', N'tmilden@gmail.com', 1002, 1008, N'tmilden'),
	  (N'46542913', N'Victorine', N'Lucie', N'Culpain', Administration.SetDateOfBirth(-8651), N'F', N'vculpain@googlemail.com', 1016, 1007, N'vculpain'),
	  (N'88423270', N'Ray', N'Jerermy', N'Andrews', Administration.SetDateOfBirth(-7600), N'M', N'randrews@bell.com', 1007, 1003, N'randrews');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'62949691', N'James', N'Hallas', Administration.SetDateOfBirth(-8612), N'M', N'jhallas@hotmail.com', 1018, 1012, N'jhallas');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'64090633', N'Marc', N'Robert', N'Williams', Administration.SetDateOfBirth(-8601), N'M', N'mwilliams@bell.com', 1010, 1017, N'mwilliams'),
      (N'49709560', N'Nathan', N'Alex', N'Fowler', Administration.SetDateOfBirth(-6823), N'M', N'nfowler@bell.com', 1010, 1021, N'nfowler');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'84432551', N'Clarence', N'Braddock', Administration.SetDateOfBirth(-6905), N'M', N'cbraddock@bell.com', 1015, 1006, N'cbraddock'),
      (N'79228302', N'Jeremy', N'Stevens', Administration.SetDateOfBirth(-6914), N'M', N'jstevens@bell.com', 1010, 1025, N'jstevens');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'21323712', N'Steve', N'Patrick', N'Pearce', Administration.SetDateOfBirth(-7533), N'M', N'spearce@bell.com', 1010, 1001, N'spearce'),
      (N'45991340', N'Victoria', N'Holly', N'Harvey', Administration.SetDateOfBirth(-6668), N'F', N'vharvey@bell.com', 1020, 1021, N'vharvey'),
	  (N'99931579', N'Gerard', N'Alexander', N'Bayne', Administration.SetDateOfBirth(-6907), N'M', N'gbayne@bell.com', 1010, 1006, N'gbayne'),
	  (N'71969881', N'Anita', N'Hope', N'Long', Administration.SetDateOfBirth(-8556), N'F', N'along@bell.com', 1021, 1009, N'along');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'41087360', N'Leonard', N'Burgess', Administration.SetDateOfBirth(-7911), N'M', N'lburgess@gmail.com', 1012, 1016, N'lburgess'),
      (N'85965484', N'Miguel', N'Vaccaro', Administration.SetDateOfBirth(-7912), N'M', N'mvaccaro@hotmail.com', 1007, 1026, N'mvaccaro');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'69172014', N'Virginia', N'Marie', N'Panders', Administration.SetDateOfBirth(-8085), N'F', N'vpanders@comcast.net', 1005, 1009, N'vpanders');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'50548196', N'Anthony', N'Broadhead', Administration.SetDateOfBirth(-6635), N'M', N'abroadhead@bell.com', 1018, 1016, N'abroadhead');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'80729415', N'Lynda', N'Fanny', N'Baker', Administration.SetDateOfBirth(-6721), N'F', N'lbaker@yahoo.com', 1013, 1026, N'lbaker'),
      (N'41007276', N'Alan', N'Jerome', N'Puven', Administration.SetDateOfBirth(-7734), N'M', N'apuven@bell.com', 1019, 1026, N'apuven'),
      (N'32926267', N'Victoria', N'Denise', N'Jackson', Administration.SetDateOfBirth(-7889), N'F', N'vjackson@emailcity.com', 1015, 1022, N'vjackson'),
      (N'81154041', N'Ernest', N'Michael', N'Blakeley', Administration.SetDateOfBirth(-6708), N'M', N'eblakeley@yahoo.com', 1016, 1007, N'eblakeley');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'81632333', N'Salomon', N'Bomwick', Administration.SetDateOfBirth(-8699), N'M', N'sbomwick@yahoo.com', 1002, 1001, N'sbomwick');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'84210770', N'Jeannette', N'Gretchen', N'Canelli', Administration.SetDateOfBirth(-7271), N'F', N'jcanelli@hotmail.com', 1010, 1028, N'jcanelli');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'11916533', N'Lydia', N'Jahney', Administration.SetDateOfBirth(-14673), N'F', N'ljahney@bell.com', 1010, 1030, N'ljahney');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'23372568', N'Todd', N'Billy', N'Miller', Administration.SetDateOfBirth(-9170), N'M', N'tmiller@yahoo.com', 1021, 1025, N'tmiller'),
      (N'32670560', N'Lily', N'Anna', N'Edwards', Administration.SetDateOfBirth(-8156), N'F', N'ledwards@googlemail.com', 1018, 1020, N'ledwards'),
	  (N'15370882', N'Jake', N'Stanley', N'Haley', Administration.SetDateOfBirth(-14096), N'M', N'jhaley@yahoo.com', 1006, 1016, N'jhaley'),
	  (N'51205321', N'Cathy', N'Justine', N'Page', Administration.SetDateOfBirth(-8616), N'F', N'cpage@bell.com', 1003, 1015, N'cpage');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'73302581', N'Vanessa', N'Franklin', Administration.SetDateOfBirth(-6601), N'F', N'vfranklin@hotmail.com', 1011, 1009, N'vfranklin');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'36418843', N'Sherrie', N'Colette', N'Elmatti', Administration.SetDateOfBirth(-15652), N'F', N'selmatti@gmail.com', 1001, 1013, N'selmatti'),
      (N'84517744', N'Sheldon', N'Lester', N'Ring', Administration.SetDateOfBirth(-10673), N'M', N'sring@bell.com', 1002, 1002, N'sring');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'86204918', N'Kyle', N'Goines', Administration.SetDateOfBirth(-10863), N'M', N'kgoines@bell.com', 1001, 1003, N'kgoines');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'76529410', N'April', N'Lilly', N'Walk', Administration.SetDateOfBirth(-16743), N'F', N'awalk@verizon.net', 1006, 1012, N'awalk'),
      (N'88749825', N'Maggie', N'Mariette', N'Embley', Administration.SetDateOfBirth(-16910), N'F', N'membley@bell.com', 1017, 1017, N'membley');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'44921455', N'Bill', N'Ware', Administration.SetDateOfBirth(-8095), N'M', N'bware@bell.com', 1007, 1025, N'bware');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'39845539', N'Margareth', N'Elisabeth', N'Monaghan', Administration.SetDateOfBirth(-14945), N'F', N'mmonaghan@hotmail.com', 1003, 1025, N'mmonaghan');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'68638404', N'Bobbie', N'Bates',       Administration.SetDateOfBirth(-16319), N'F', N'bbates@bell.com',            1011, 1030, N'bbates'),
      (N'64177090', N'Pennie', N'Stonebraker', Administration.SetDateOfBirth(-10477), N'F', N'pstonebraker@earthlink.net', 1015, 1033, N'pstonebraker');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'97716285', N'Rose', N'Karen', N'May', Administration.SetDateOfBirth(-6857), N'F', N'rmay@verizon.net', 1008, 1002, N'rmay'),
      (N'97111831', N'William', N'Jeff', N'Jackman', Administration.SetDateOfBirth(-8954), N'M', N'wjackman@bell.com', 1004, 1009, N'wjackman'),
	  (N'35159037', N'Jason', N'Clark', N'Biggs', Administration.SetDateOfBirth(-17146), N'M', N'jbiggs@bell.com', 1010, 1027, N'jbiggs'),
	  (N'96847988', N'Mariane', N'Karen', N'Penney', Administration.SetDateOfBirth(-18104), N'F', N'mpenney@emailcity.com', 1016, 1022, N'mpenney');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'82039391', N'Maureen', N'Curtis', Administration.SetDateOfBirth(-17907), N'F', N'mcurtis@bell.com', 1021, 1016, N'mcurtis');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'97793844', N'Marianne', N'Collette', N'Stonebaker', Administration.SetDateOfBirth(-10732), N'F', N'mstonebaker@gmail.com', 1011, 1033, N'mstonebaker'),
      (N'83005861', N'Arnold',   N'Johnny',   N'Wey',        Administration.SetDateOfBirth(-14583), N'M', N'awey@bell.com',         1010, 1005, N'awey'),
	  (N'42620002', N'Saul',     N'Patrick',  N'Lowe',       Administration.SetDateOfBirth(-9530),  N'M', N'slowe@bell.com',        1017, 1008, N'slowe'),
	  (N'71457131', N'Virginie', N'Marie',    N'Epstein',    Administration.SetDateOfBirth(-11875), N'F', N'vepstein@mailman.com',  1012, 1007, N'vepstein');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'81927307', N'Edmond', N'Plaine', Administration.SetDateOfBirth(-11859), N'M', N'eplaine@gmail.com', 1004, 1014, N'eplaine');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'54660862', N'Martin', N'Simon', N'Berlinger', Administration.SetDateOfBirth(-7009), N'M', N'mberlinger@bell.com', 1002, 1018, N'mberlinger'),
      (N'30124496', N'Timothy', N'Bernard', N'Dogan', Administration.SetDateOfBirth(-17603), N'M', N'tdogan@yahoo.com', 1020, 1004, N'tdogan'),
      (N'50885914', N'Simon', N'Peter', N'Lew', Administration.SetDateOfBirth(-9480), N'M', N'slew@comcast.net', 1019, 1019, N'slew'),
      (N'63368397', N'Octavia', N'Vickie', N'Burton', Administration.SetDateOfBirth(-10602), N'F', N'oburton@emailcity.com', 1021, 1002, N'oburton');
GO
-------------------------------------------------------------------------------
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'10083176', N'Heidy',     N'Chin',    Administration.SetDateOfBirth(-9566),  N'F', N'hchin@googlemail.com',   1012, 1015, N'hchin'),
      (N'91083736', N'Emilienne', N'Lynch',   Administration.SetDateOfBirth(-6738),  N'F', N'elynch@gmail.com',       1004, 1033, N'elynch'),
	  (N'15769452', N'Myra',      N'Brennan', Administration.SetDateOfBirth(-17901), N'F', N'mbrennan@emailcity.com', 1008, 1016, N'mbrennan');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'13580710', N'Helena', N'Roberta', N'Mironenka', Administration.SetDateOfBirth(-9908), N'F', N'hmironenka@earthlink.net', 1016, 1015, N'hmironenka');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'78058819', N'Benjamin', N'Weihl',  Administration.SetDateOfBirth(-17424), N'M', N'bweihl@bell.com',   1019, 1008, N'bweihl'),
      (N'19854480', N'Godfrey',  N'Howard', Administration.SetDateOfBirth(-13122), N'M', N'ghoward@bell.com',  1010, 1025, N'ghoward'),
	  (N'35086180', N'Clark',    N'Carney', Administration.SetDateOfBirth(-8410),  N'M', N'ccarney@yahoo.com', 1004, 1017, N'ccarney');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'48313179', N'Jill', N'Patricia', N'Winston', Administration.SetDateOfBirth(-16135), N'F', N'jwinston@hotmail.com', 1004, 1019, N'jwinston');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'28985837', N'Timothy', N'Florescu', Administration.SetDateOfBirth(-18008), N'M', N'tflorescu@emailcity.com', 1006, 1025, N'tflorescu');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'64203332', N'Nathalie', N'Bannie', N'Judge', Administration.SetDateOfBirth(-10569), N'F', N'njudge@bell.com', 1003, 1008, N'njudge'),
      (N'96030093', N'Arnold', N'Robert', N'Mercier', Administration.SetDateOfBirth(-7262), N'M', N'amercier@earthlink.net', 1009, 1005, N'amercier');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'38723659', N'Peter', N'Yu', Administration.SetDateOfBirth(-9124), N'M', N'pyu@bell.com', 1007, 1030, N'pyu');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'13908149', N'Larry', N'Patrick', N'Merrit', Administration.SetDateOfBirth(-16897), N'M', N'lmerrit@yahoo.com', 1020, 1029, N'lmerrit');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'56176631', N'Shawn', N'Bennett', Administration.SetDateOfBirth(-8899),  N'M', N'sbennett@bell.com',  1018, 1008, N'sbennett'),
      (N'46991747', N'Thomas', N'Levin',  Administration.SetDateOfBirth(-13066), N'M', N'tlevin@comcast.net', 1018, 1029, N'tlevin'),
	  (N'83945044', N'Antoinette', N'Browne', Administration.SetDateOfBirth(-17972), N'F', N'abrowne@hotmail.com', 1008, 1030, N'abrowne');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'18526315', N'Christopher', N'Clark', N'Dowdy', Administration.SetDateOfBirth(-18008), N'M', N'cdowdy@bell.com', 1010, 1014, N'cdowdy');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'48552419', N'Richard',  N'Gayley',    Administration.SetDateOfBirth(-16108), N'M', N'rgayley@earthlink.net',    1009, 1006, N'rgayley'),
      (N'53693222', N'Andrea',   N'Freidman',  Administration.SetDateOfBirth(-13617), N'F', N'afreidman@googlemail.com', 1009, 1024, N'afreidman'),
	  (N'26924699', N'Chris',    N'Smith',     Administration.SetDateOfBirth(-16118), N'M', N'csmith@verizon.net',       1015, 1011, N'csmith'),
	  (N'98245606', N'Arthur',   N'Martinez',  Administration.SetDateOfBirth(-17006), N'M', N'amartinez@bell.com',       1014, 1022, N'amartinez'),
	  (N'26708093', N'Evelyne',  N'Stone',     Administration.SetDateOfBirth(-16738), N'F', N'estone@emailcity.com',     1003, 1012, N'estone'),
	  (N'28667094', N'Angele',   N'Bertins',   Administration.SetDateOfBirth(-15012), N'F', N'abertins@mailman.com',     1007, 1002, N'abertins'),
	  (N'36662954', N'Lucretia', N'Arkin',     Administration.SetDateOfBirth(-13938), N'F', N'larkin@hotmail.com',       1011, 1016, N'larkin'),
	  (N'96811535', N'Jeffrey',  N'Kilbourne', Administration.SetDateOfBirth(-14612), N'M', N'jkilbourne@gmail.com',     1017, 1005, N'jkilbourne');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'57361823', N'Ralph', N'Johnny', N'Friedman', Administration.SetDateOfBirth(-9824), N'M', N'rfriedman@hotmail.com', 1017, 1021, N'rfriedman');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'70737262', N'Jeremy ',   N'Devan', Administration.SetDateOfBirth(-11914), N'M', N'jdevan@gmail.com', 1014, 1002, N'jdevan'),
      (N'41715721', N'Elizabeth', N'Mattoso', Administration.SetDateOfBirth(-12419), N'F', N'emattoso@bell.com', 1017, 1031, N'emattoso');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'95686596', N'Harriett', N'Joan', N'Diehl', Administration.SetDateOfBirth(-7722), N'F', N'hdiehl@bell.com', 1006, 1029, N'hdiehl'),
      (N'49958092', N'Julie ', N'Fannie', N'Bieno', Administration.SetDateOfBirth(-7436), N'F', N'jbieno@yahoo.com', 1016, 1009, N'jbieno');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'52451440', N'Julia',   N'Kossman', Administration.SetDateOfBirth(-12024), N'F', N'jkossman@comcast.net', 1012, 1008, N'jkossman'),
      (N'18451033', N'Gilbert', N'Casey',   Administration.SetDateOfBirth(-13372), N'M', N'gcasey@mailman.com',   1006, 1011, N'gcasey');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'56370876', N'Howard', N'Godfrey', N'Mathis', Administration.SetDateOfBirth(-15581), N'M', N'hmathis@bell.com', 1015, 1033, N'hmathis');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'50916521', N'Julie ',  N'Millstein', Administration.SetDateOfBirth(-6856),  N'F', N'jmillstein@bell.com',    1010, 1015, N'jmillstein'),
      (N'32435272', N'Sarah',   N'Sumner',    Administration.SetDateOfBirth(-14163), N'F', N'ssumner@comcast.net',    1013, 1020, N'ssumner'),
	  (N'37968039', N'Paul',    N'Middleton', Administration.SetDateOfBirth(-15103), N'M', N'pmiddleton@hotmail.com', 1015, 1012, N'pmiddleton'),
	  (N'92178933', N'Matthew', N'Wu',        Administration.SetDateOfBirth(-13303), N'M', N'mwu@verizon.net',        1006, 1033, N'mwu'),
	  (N'14331261', N'Sally',   N'Gastonian', Administration.SetDateOfBirth(-15066), N'M', N'sgastonian@yahoo.com',   1003, 1009, N'sgastonian');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'59563164', N'Marcia', N'Annette', N'Hamilton', Administration.SetDateOfBirth(-9003), N'F', N'mhamilton@bell.com', 1014, 1003, N'mhamilton');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'37696061', N'Edith', N'Klein', Administration.SetDateOfBirth(-17649), N'F', N'eklein@bell.com', 1021, 1008, N'eklein');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'10383399', N'Joe', N'Robert', N'Martino', Administration.SetDateOfBirth(-12045), N'F', N'jmartino@comcast.net', 1013, 1002, N'jmartino');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'92378602', N'Chad ', N'', N'Binns', Administration.SetDateOfBirth(-13387), N'M', N'cbinns@yahoo.com', 1007, 1028, N'cbinns');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'59412893', N'Donald', N'', N'Gifford', Administration.SetDateOfBirth(-11341), N'F', N'dgifford@bell.com', 1012, 1020, N'dgifford');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'81103424', N'Helena', N'', N'Sandford', Administration.SetDateOfBirth(-11295), N'F', N'hsandford@bell.com', 1019, 1011, N'hsandford');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'86870034', N'Fiona', N'', N'Bubber', Administration.SetDateOfBirth(-13268), N'F', N'fbubber@earthlink.net', 1002, 1018, N'fbubber');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'65302352', N'Herbert', N'', N'Templeton', Administration.SetDateOfBirth(-18156), N'F', N'htempleton@comcast.net', 1003, 1031, N'htempleton');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'10786138', N'Gwen', N'', N'Heitman', Administration.SetDateOfBirth(-15620), N'F', N'gheitman@bell.com', 1005, 1027, N'gheitman');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'91799318', N'Arthur', N'David', N'Gilbert', Administration.SetDateOfBirth(-11513), N'F', N'agilbert@gmail.com', 1007, 1022, N'agilbert');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'27969689', N'Franklin', N'', N'Murdoch', Administration.SetDateOfBirth(-8304), N'M', N'fmurdoch@bell.com', 1005, 1026, N'fmurdoch');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'58015822', N'Stacie', N'', N'Davis', Administration.SetDateOfBirth(-10731), N'F', N'sdavis@bell.com', 1021, 1019, N'sdavis');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'48750182', N'Betty', N'', N'Nussbaum', Administration.SetDateOfBirth(-16595), N'F', N'bnussbaum@mailman.com', 1016, 1031, N'bnussbaum');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'51399792', N'Anna', N'', N'Gianelli', Administration.SetDateOfBirth(-10584), N'F', N'agianelli@googlemail.com', 1016, 1023, N'agianelli');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'50374011', N'Gina', N'', N'Erich', Administration.SetDateOfBirth(-9477), N'F', N'gerich@yahoo.com', 1001, 1017, N'gerich');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'57710760', N'Tina', N'', N'Fernandez', Administration.SetDateOfBirth(-10753), N'F', N'tfernandez@emailcity.com', 1007, 1012, N'tfernandez');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'36365122', N'Clarence', N'', N'Alton', Administration.SetDateOfBirth(-17489), N'M', N'calton@gmail.com', 1003, 1025, N'calton');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'26464709', N'Jeff', N'', N'Granger', Administration.SetDateOfBirth(-9845), N'M', N'jgranger@bell.com', 1006, 1025, N'jgranger');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'17178963', N'Denis', N'', N'Paton', Administration.SetDateOfBirth(-7273), N'M', N'dpaton@gmail.com', 1011, 1021, N'dpaton');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'15387717', N'Victoria', N'', N'Gilman', Administration.SetDateOfBirth(-7375), N'F', N'vgilman@bell.com', 1021, 1004, N'vgilman');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'41828207', N'Jonathan ', N'', N'Coughlin', Administration.SetDateOfBirth(-11769), N'M', N'jcoughlin@bell.com', 1005, 1015, N'jcoughlin');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'91242344', N'Mary', N'', N'Naacke', Administration.SetDateOfBirth(-15285), N'F', N'mnaacke@emailcity.com', 1011, 1022, N'mnaacke');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'33633067', N'Simon', N'John', N'Hernandez', Administration.SetDateOfBirth(-15216), N'M', N'shernandez@bell.com', 1014, 1003, N'shernandez');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'27532368', N'Ted', N'', N'Chayken', Administration.SetDateOfBirth(-9878), N'M', N'tchayken@comcast.net', 1009, 1003, N'tchayken');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'17408047', N'Tommy', N'', N'Cart', Administration.SetDateOfBirth(-8156), N'M', N'tcart@gmail.com', 1002, 1033, N'tcart');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'11369435', N'Luis', N'', N'Blasgen', Administration.SetDateOfBirth(-8392), N'M', N'lblasgen@hotmail.com', 1001, 1022, N'lblasgen');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'14012300', N'Gerard', N'', N'Harrison', Administration.SetDateOfBirth(-8269), N'M', N'gharrison@verizon.net', 1016, 1020, N'gharrison');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'43801397', N'Michelle', N'', N'Johnston', Administration.SetDateOfBirth(-9163), N'F', N'mjohnston@earthlink.net', 1016, 1003, N'mjohnston');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'54267273', N'Isaiah', N'', N'Teubner', Administration.SetDateOfBirth(-7142), N'M', N'iteubner@bell.com', 1016, 1017, N'iteubner');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'85392833', N'Margot', N'Emilienne', N'Guttman', Administration.SetDateOfBirth(-7801), N'F', N'mguttman@bell.com', 1010, 1026, N'mguttman');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'74367413', N'Shankar ', N'', N'Caruso', Administration.SetDateOfBirth(-9294), N'M', N'scaruso@bell.com', 1012, 1010, N'scaruso');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'80123518', N'Catherine', N'Terrie', N'Traiger', Administration.SetDateOfBirth(-6657), N'F', N'ctraiger@yahoo.com', 1016, 1008, N'ctraiger');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'55407749', N'Jeffrey', N'', N'Sergent', Administration.SetDateOfBirth(-6857), N'M', N'jsergent@hotmail.com', 1012, 1028, N'jsergent');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'85922533', N'Robert', N'', N'Erbe', Administration.SetDateOfBirth(-9561), N'M', N'rerbe@bell.com', 1013, 1031, N'rerbe');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'33527201', N'Melinda', N'', N'Grossman', Administration.SetDateOfBirth(-9876), N'F', N'mgrossman@bell.com', 1007, 1024, N'mgrossman');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'48798403', N'Jacob', N'', N'Nukalo', Administration.SetDateOfBirth(-9767), N'M', N'jnukalo@googlemail.com', 1004, 1016, N'jnukalo');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'90504697', N'Jay', N'', N'Garcia', Administration.SetDateOfBirth(-8469), N'M', N'jgarcia@yahoo.com', 1010, 1016, N'jgarcia');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'23304485', N'Dinah', N'', N'Gaussman', Administration.SetDateOfBirth(-6892), N'F', N'dgaussman@comcast.net', 1004, 1029, N'dgaussman');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'83298489', N'Ritha', N'', N'Dage', Administration.SetDateOfBirth(-6907), N'F', N'rdage@verizon.net', 1016, 1007, N'rdage');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'69203671', N'Michael', N'Franky', N'Lemper', Administration.SetDateOfBirth(-9132), N'M', N'mlemper@bell.com', 1007, 1010, N'mlemper');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'22605242', N'Nancy', N'', N'Gravano', Administration.SetDateOfBirth(-7876), N'F', N'ngravano@bell.com', 1011, 1013, N'ngravano');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'97164635', N'Jennifer ', N'', N'Harris', Administration.SetDateOfBirth(-9206), N'F', N'jharris@bell.com', 1012, 1007, N'jharris');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'15587027', N'Frank', N'', N'Barrows', Administration.SetDateOfBirth(-8469), N'M', N'fbarrows@googlemail.com', 1010, 1022, N'fbarrows');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'46407570', N'Roger', N'', N'Keulen', Administration.SetDateOfBirth(-8057), N'M', N'rkeulen@bell.com', 1014, 1008, N'rkeulen');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'63987845', N'Marie', N'Annette', N'Brill', Administration.SetDateOfBirth(-9459), N'F', N'mbrill@bell.com', 1014, 1018, N'mbrill');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'58487021', N'Brian', N'', N'Castano', Administration.SetDateOfBirth(-8657), N'M', N'bcastano@bell.com', 1017, 1013, N'bcastano');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'16866544', N'Penelope', N'', N'Haas', Administration.SetDateOfBirth(-9801), N'F', N'phaas@earthlink.net', 1018, 1007, N'phaas');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'57219193', N'Terence', N'', N'MacMillan', Administration.SetDateOfBirth(-8095), N'M', N'tmacmillan@hotmail.com', 1007, 1013, N'tmacmillan');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'85925767', N'Andrew', N'', N'Tobolsky', Administration.SetDateOfBirth(-7494), N'M', N'atobolsky@bell.com', 1021, 1027, N'atobolsky');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'94861046', N'Erik', N'', N'Smith', Administration.SetDateOfBirth(-7131), N'M', N'esmith@bell.com', 1014, 1017, N'esmith');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'10839079', N'Fay', N'', N'Hade', Administration.SetDateOfBirth(-6800), N'F', N'fhade@bell.com', 1014, 1013, N'fhade');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'10402959', N'William', N'', N'Goods', Administration.SetDateOfBirth(-6838), N'M', N'wgoods@bell.com', 1003, 1021, N'wgoods');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'95782920', N'Barbara', N'Leontine', N'Marvin', Administration.SetDateOfBirth(-9596), N'F', N'bmarvin@mailman.com', 1016, 1009, N'bmarvin');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'88106923', N'Diane', N'', N'Haden', Administration.SetDateOfBirth(-7819), N'F', N'dhaden@hotmail.com', 1013, 1027, N'dhaden');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'65890968', N'Marie', N'', N'Hammond', Administration.SetDateOfBirth(-8914), N'F', N'mhammond@comcast.net', 1019, 1008, N'mhammond');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'63025827', N'Chad ', N'', N'Coins', Administration.SetDateOfBirth(-9543), N'M', N'ccoins@gmail.com', 1009, 1029, N'ccoins');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'90734727', N'Rita', N'', N'Brock', Administration.SetDateOfBirth(-9328), N'F', N'rbrock@bell.com', 1012, 1019, N'rbrock');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'14373751', N'Leila', N'', N'Hammer', Administration.SetDateOfBirth(-7105), N'F', N'lhammer@yahoo.com', 1021, 1011, N'lhammer');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'29832130', N'Marcella', N'', N'Reddies', Administration.SetDateOfBirth(-9330), N'F', N'mreddies@googlemail.com', 1017, 1026, N'mreddies');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'47865425', N'Annette', N'', N'Horowitz', Administration.SetDateOfBirth(-10023), N'F', N'ahorowitz@emailcity.com', 1004, 1025, N'ahorowitz');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'78197727', N'Rachel', N'', N'Leod', Administration.SetDateOfBirth(-8835), N'F', N'rleod@yahoo.com', 1010, 1030, N'rleod');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'67140478', N'David', N'', N'Sargent', Administration.SetDateOfBirth(-7365), N'M', N'dsargent@bell.com', 1017, 1008, N'dsargent');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'64963056', N'Gloria', N'', N'Leibnitz', Administration.SetDateOfBirth(-8326), N'F', N'gleibnitz@googlemail.com', 1014, 1018, N'gleibnitz');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'27368389', N'Kevin', N'', N'Hellerstein', Administration.SetDateOfBirth(-6663), N'M', N'khellerstein@gmail.com', 1015, 1004, N'khellerstein');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'43974137', N'Phillippe', N'', N'Drapper', Administration.SetDateOfBirth(-7124), N'M', N'pdrapper@mailman.com', 1018, 1019, N'pdrapper');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'60177511', N'Daniella', N'', N'Catanelli', Administration.SetDateOfBirth(-10057), N'F', N'dcatanelli@emailcity.com', 1011, 1025, N'dcatanelli');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'80107550', N'Dianne', N'', N'Waxman', Administration.SetDateOfBirth(-9764), N'F', N'dwaxman@bell.com', 1017, 1004, N'dwaxman');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'31072843', N'Lydia', N'', N'Xiao', Administration.SetDateOfBirth(-8752), N'F', N'lxiao@earthlink.net', 1020, 1026, N'lxiao');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'78339177', N'Jeffrey', N'Frank', N'Better', Administration.SetDateOfBirth(-9231), N'M', N'jbetter@bell.com', 1006, 1033, N'jbetter');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'70776036', N'Amanda', N'', N'Watson', Administration.SetDateOfBirth(-7270), N'F', N'awatson@googlemail.com', 1004, 1001, N'awatson');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'87794428', N'Laurie', N'', N'James', Administration.SetDateOfBirth(-7029), N'F', N'ljames@bell.com', 1017, 1008, N'ljames');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'49085091', N'Zachary', N'', N'Church', Administration.SetDateOfBirth(-9770), N'M', N'zchurch@bell.com', 1016, 1017, N'zchurch');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'49442610', N'Anthony', N'', N'Sanders', Administration.SetDateOfBirth(-8771), N'M', N'asanders@emailcity.com', 1005, 1022, N'asanders');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'67887627', N'Michael', N'', N'Day', Administration.SetDateOfBirth(-9166), N'M', N'mday@verizon.net', 1002, 1022, N'mday');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'90098855', N'Pamela', N'Gina', N'Cromwell', Administration.SetDateOfBirth(-8618), N'F', N'pcromwell@hotmail.com', 1004, 1027, N'pcromwell');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'76124867', N'William', N'', N'Hedley', Administration.SetDateOfBirth(-6652), N'M', N'whedley@bell.com', 1017, 1018, N'whedley');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'14263352', N'Norman', N'', N'Milan', Administration.SetDateOfBirth(-9649), N'M', N'nmilan@bell.com', 1001, 1008, N'nmilan');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'33262366', N'Danielle', N'Joan', N'Baker', Administration.SetDateOfBirth(-9599), N'F', N'dbaker@hotmail.com', 1014, 1033, N'dbaker');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'32566354', N'Gideon', N'', N'Hurson', Administration.SetDateOfBirth(-10062), N'M', N'ghurson@googlemail.com', 1005, 1013, N'ghurson');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'61251822', N'Pablo', N'', N'Sandersono', Administration.SetDateOfBirth(-7403), N'M', N'psandersono@bell.com', 1008, 1027, N'psandersono');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'49298381', N'Adam', N'', N'Nunn', Administration.SetDateOfBirth(-9207), N'M', N'anunn@bell.com', 1019, 1030, N'anunn');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'78143824', N'Steve', N'', N'Wallach', Administration.SetDateOfBirth(-9204), N'M', N'swallach@verizon.net', 1008, 1002, N'swallach');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'49178496', N'Leontine', N'', N'Partriedge', Administration.SetDateOfBirth(-8433), N'F', N'lpartriedge@yahoo.com', 1015, 1033, N'lpartriedge');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'49431972', N'Keith', N'', N'Hevner', Administration.SetDateOfBirth(-7627), N'M', N'khevner@bell.com', 1002, 1004, N'khevner');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'80408627', N'Joshua', N'', N'Campbell', Administration.SetDateOfBirth(-7084), N'M', N'jcampbell@yahoo.com', 1008, 1029, N'jcampbell');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'17742822', N'Fernando', N'Jonas', N'Sabelli', Administration.SetDateOfBirth(-6866), N'M', N'fsabelli@bell.com', 1015, 1005, N'fsabelli');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'80638518', N'Emilie', N'', N'Harsh', Administration.SetDateOfBirth(-8635), N'F', N'eharsh@bell.com', 1006, 1026, N'eharsh');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'43824380', N'Marianne', N'', N'Frey', Administration.SetDateOfBirth(-8333), N'F', N'mfrey@mailman.com', 1010, 1025, N'mfrey');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'10809655', N'Ebanda', N'', N'Zhou', Administration.SetDateOfBirth(-6610), N'M', N'ezhou@bell.com', 1019, 1022, N'ezhou');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'27117094', N'Naomie', N'', N'Reid', Administration.SetDateOfBirth(-7855), N'F', N'nreid@earthlink.net', 1002, 1023, N'nreid');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'84593692', N'Simonette', N'', N'Banks', Administration.SetDateOfBirth(-8043), N'F', N'sbanks@bell.com', 1002, 1008, N'sbanks');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'68635920', N'Amy', N'Theresa', N'Hersh', Administration.SetDateOfBirth(-8023), N'F', N'ahersh@earthlink.net', 1007, 1013, N'ahersh');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'63174658', N'Jonathan ', N'', N'Greens', Administration.SetDateOfBirth(-7081), N'M', N'jgreens@bell.com', 1019, 1025, N'jgreens');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'86437575', N'Paul', N'', N'Grantt', Administration.SetDateOfBirth(-9235), N'M', N'pgrantt@mailman.com', 1019, 1012, N'pgrantt');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'52760349', N'Carly', N'', N'Castanelli', Administration.SetDateOfBirth(-7538), N'F', N'ccastanelli@bell.com', 1008, 1028, N'ccastanelli');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'42252734', N'Antoinette', N'', N'Hutchins', Administration.SetDateOfBirth(-8420), N'F', N'ahutchins@hotmail.com', 1018, 1004, N'ahutchins');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'60645349', N'Naomy', N'', N'Clemenson', Administration.SetDateOfBirth(-9919), N'F', N'nclemenson@bell.com', 1020, 1031, N'nclemenson');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'86339283', N'Danielle', N'Ginette', N'Bowen', Administration.SetDateOfBirth(-8375), N'F', N'dbowen@yahoo.com', 1012, 1026, N'dbowen');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'75378343', N'Mike', N'', N'Jameson', Administration.SetDateOfBirth(-9249), N'M', N'mjameson@yahoo.com', 1013, 1002, N'mjameson');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'55109095', N'Haliah', N'', N'Hsiao', Administration.SetDateOfBirth(-6735), N'F', N'hhsiao@bell.com', 1012, 1021, N'hhsiao');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'70160227', N'Jeannette', N'', N'Staton', Administration.SetDateOfBirth(-8600), N'F', N'jstaton@hotmail.com', 1005, 1023, N'jstaton');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'93914233', N'Jonathan ', N'Patrick', N'Harris', Administration.SetDateOfBirth(-8814), N'M', N'jharris@bell.com', 1007, 1028, N'jharris');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'37175749', N'Allie', N'', N'Woelk', Administration.SetDateOfBirth(-9088), N'F', N'awoelk@yahoo.com', 1015, 1022, N'awoelk');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'21150665', N'Alex', N'', N'Garfield', Administration.SetDateOfBirth(-9547), N'M', N'agarfield@googlemail.com', 1007, 1012, N'agarfield');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'16547089', N'Carlee', N'', N'Perry', Administration.SetDateOfBirth(-7422), N'F', N'cperry@bell.com', 1014, 1017, N'cperry');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'63043036', N'Ally', N'', N'Robertson', Administration.SetDateOfBirth(-9714), N'F', N'arobertson@mailman.com', 1020, 1024, N'arobertson');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'10617019', N'Lydia', N'', N'Hunt', Administration.SetDateOfBirth(-7302), N'F', N'lhunt@yahoo.com', 1010, 1024, N'lhunt');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'23933187', N'Jessica', N'Molly', N'Wiley', Administration.SetDateOfBirth(-9804), N'F', N'jwiley@bell.com', 1004, 1020, N'jwiley');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'18028333', N'Matthew', N'', N'Call', Administration.SetDateOfBirth(-10203), N'M', N'mcall@verizon.net', 1014, 1016, N'mcall');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'40421143', N'Will', N'', N'Marsland', Administration.SetDateOfBirth(-9052), N'M', N'wmarsland@hotmail.com', 1018, 1026, N'wmarsland');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'79392589', N'Amanda', N'', N'Bright', Administration.SetDateOfBirth(-8289), N'F', N'abright@hotmail.com', 1007, 1031, N'abright');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'52026024', N'Jeffry', N'', N'Malden', Administration.SetDateOfBirth(-7190), N'M', N'jmalden@hotmail.com', 1008, 1017, N'jmalden');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'43742610', N'Idris', N'', N'Whitmore', Administration.SetDateOfBirth(-9199), N'M', N'iwhitmore@mailman.com', 1005, 1004, N'iwhitmore');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'35060490', N'Benio', N'', N'Jimenez', Administration.SetDateOfBirth(-9532), N'M', N'bjimenez@bell.com', 1016, 1024, N'bjimenez');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'45133716', N'Jeannine', N'Murielle', N'Brant', Administration.SetDateOfBirth(-8501), N'F', N'jbrant@comcast.net', 1001, 1013, N'jbrant');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'73299435', N'Jonetta', N'Holly', N'Osborn', Administration.SetDateOfBirth(-9344), N'F', N'josborn@bell.com', 1012, 1025, N'josborn');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'24553301', N'Benjamin', N'', N'Collum', Administration.SetDateOfBirth(-7169), N'M', N'bcollum@yahoo.com', 1014, 1001, N'bcollum');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'13565320', N'Trey', N'', N'Arnold', Administration.SetDateOfBirth(-9777), N'M', N'tarnold@bell.com', 1012, 1025, N'tarnold');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'19086164', N'Daniel', N'', N'Goodson', Administration.SetDateOfBirth(-6891), N'M', N'dgoodson@bell.com', 1020, 1021, N'dgoodson');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'92484722', N'Sarah', N'', N'Mutchler', Administration.SetDateOfBirth(-7761), N'F', N'smutchler@earthlink.net', 1001, 1021, N'smutchler');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'31661625', N'Emilienne', N'Justine', N'Hutchinson', Administration.SetDateOfBirth(-6948), N'F', N'ehutchinson@yahoo.com', 1002, 1010, N'ehutchinson');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'80566648', N'Louis', N'', N'Higgins', Administration.SetDateOfBirth(-9655), N'M', N'lhiggins@bell.com', 1006, 1011, N'lhiggins');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'56707883', N'Ryan', N'', N'Gruenwald', Administration.SetDateOfBirth(-8166), N'M', N'rgruenwald@bell.com', 1003, 1011, N'rgruenwald');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'52039762', N'Steve', N'', N'Fugini', Administration.SetDateOfBirth(-7489), N'M', N'sfugini@mailman.com', 1007, 1012, N'sfugini');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'14514683', N'Marianne', N'Hope', N'Chechniak', Administration.SetDateOfBirth(-16461), N'F', N'mchechniak@bell.com', 1018, 1007, N'mchechniak');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'47745935', N'Kristen', N'', N'Lack', Administration.SetDateOfBirth(-6969), N'F', N'klack@bell.com', 1019, 1027, N'klack');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'10468800', N'Christine', N'', N'Dylan', Administration.SetDateOfBirth(-12436), N'F', N'cdylan@bell.com', 1019, 1017, N'cdylan');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'89925315', N'Sadiah', N'', N'Kemme', Administration.SetDateOfBirth(-16641), N'F', N'skemme@googlemail.com', 1011, 1017, N'skemme');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'72859878', N'Stephanie', N'', N'Dunking', Administration.SetDateOfBirth(-15890), N'F', N'sdunking@yahoo.com', 1012, 1029, N'sdunking');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'55698450', N'Sammeh', N'', N'Barta', Administration.SetDateOfBirth(-6968), N'M', N'sbarta@bell.com', 1004, 1015, N'sbarta');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'50742782', N'Roberta', N'', N'Stanton', Administration.SetDateOfBirth(-12822), N'F', N'rstanton@yahoo.com', 1017, 1022, N'rstanton');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'29604933', N'Martha', N'Bennie', N'Jackson', Administration.SetDateOfBirth(-13432), N'F', N'mjackson@bell.com', 1007, 1023, N'mjackson');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'37924461', N'Emylie', N'', N'Rosen', Administration.SetDateOfBirth(-16093), N'F', N'erosen@bell.com', 1014, 1029, N'erosen');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'42545024', N'Ryan', N'', N'Littman', Administration.SetDateOfBirth(-14282), N'M', N'rlittman@comcast.net', 1014, 1027, N'rlittman');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'75817605', N'Marcus', N'', N'Raimy', Administration.SetDateOfBirth(-13179), N'M', N'mraimy@bell.com', 1021, 1029, N'mraimy');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'47287744', N'Jeaninne', N'', N'Bergmann', Administration.SetDateOfBirth(-8093), N'F', N'jbergmann@bell.com', 1001, 1011, N'jbergmann');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'13792917', N'Steve', N'', N'Kanne', Administration.SetDateOfBirth(-17639), N'M', N'skanne@bell.com', 1012, 1033, N'skanne');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'44319990', N'Tricia', N'Mollie', N'Hart', Administration.SetDateOfBirth(-17928), N'F', N'thart@bell.com', 1012, 1015, N'thart');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'91226750', N'Justin', N'', N'Breitbart', Administration.SetDateOfBirth(-11956), N'M', N'jbreitbart@bell.com', 1010, 1024, N'jbreitbart');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'29572295', N'Edwin', N'', N'Chamberlin', Administration.SetDateOfBirth(-7557), N'M', N'echamberlin@earthlink.net', 1015, 1026, N'echamberlin');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'78026160', N'Marcelline', N'', N'Portman', Administration.SetDateOfBirth(-13448), N'F', N'mportman@comcast.net', 1014, 1013, N'mportman');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'97832062', N'Rebeccah', N'', N'Romer', Administration.SetDateOfBirth(-9337), N'F', N'rromer@bell.com', 1019, 1028, N'rromer');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'43214310', N'Mike', N'', N'Katz', Administration.SetDateOfBirth(-13803), N'M', N'mkatz@bell.com', 1021, 1025, N'mkatz');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'40653391', N'Kathleen', N'Rose', N'Cussack', Administration.SetDateOfBirth(-15197), N'F', N'kcussack@comcast.net', 1006, 1001, N'kcussack');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'25393289', N'Arlette', N'', N'Lin', Administration.SetDateOfBirth(-11593), N'F', N'alin@emailcity.com', 1006, 1025, N'alin');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'53909822', N'Lindsay', N'', N'Busey', Administration.SetDateOfBirth(-12796), N'F', N'lbusey@hotmail.com', 1004, 1008, N'lbusey');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'78498504', N'Rachel', N'', N'Whitmire', Administration.SetDateOfBirth(-8843), N'F', N'rwhitmire@comcast.net', 1021, 1008, N'rwhitmire');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'26039701', N'Allison', N'Faith', N'Taggart', Administration.SetDateOfBirth(-8359), N'F', N'ataggart@hotmail.com', 1007, 1002, N'ataggart');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'37201455', N'Jeff', N'', N'Bohannon', Administration.SetDateOfBirth(-7755), N'M', N'jbohannon@yahoo.com', 1018, 1024, N'jbohannon');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'92369154', N'Molly', N'', N'Guerra', Administration.SetDateOfBirth(-12014), N'F', N'mguerra@bell.com', 1013, 1025, N'mguerra');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'46266554', N'Paul', N'', N'Korth', Administration.SetDateOfBirth(-16737), N'M', N'pkorth@bell.com', 1001, 1017, N'pkorth');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'41892044', N'Jimmy', N'Frank', N'Bochner', Administration.SetDateOfBirth(-8782), N'M', N'jbochner@hotmail.com', 1011, 1003, N'jbochner');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'39433175', N'Brian', N'', N'Reston', Administration.SetDateOfBirth(-9349), N'M', N'breston@gmail.com', 1017, 1014, N'breston');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'67990817', N'Melissa', N'', N'Arenas', Administration.SetDateOfBirth(-9915), N'F', N'marenas@earthlink.net', 1017, 1028, N'marenas');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'81763907', N'Allyson', N'', N'Stone', Administration.SetDateOfBirth(-17667), N'F', N'astone@bell.com', 1007, 1028, N'astone');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'50216963', N'Jane', N'', N'Menard', Administration.SetDateOfBirth(-9989), N'F', N'jmenard@comcast.net', 1010, 1002, N'jmenard');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'45927587', N'Gina', N'', N'Bedelia', Administration.SetDateOfBirth(-10570), N'F', N'gbedelia@verizon.net', 1005, 1013, N'gbedelia');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'36784934', N'Harriet', N'', N'Moerkotte', Administration.SetDateOfBirth(-13206), N'F', N'hmoerkotte@verizon.net', 1002, 1014, N'hmoerkotte');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'23283394', N'Sheyla', N'Joan', N'Graff', Administration.SetDateOfBirth(-8901), N'F', N'sgraff@bell.com', 1001, 1022, N'sgraff');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'12938441', N'Julia', N'Benny', N'Cellari', Administration.SetDateOfBirth(-10716), N'F', N'jcellari@bell.com', 1004, 1028, N'jcellari');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'85416192', N'Lydia', N'', N'Keller', Administration.SetDateOfBirth(-6792), N'F', N'lkeller@yahoo.com', 1017, 1014, N'lkeller');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'15859182', N'Brenda', N'', N'Arrantes', Administration.SetDateOfBirth(-17677), N'F', N'barrantes@mailman.com', 1003, 1010, N'barrantes');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'16972112', N'Ursula', N'', N'Kelley', Administration.SetDateOfBirth(-13185), N'F', N'ukelley@bell.com', 1021, 1028, N'ukelley');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'30135079', N'Alex', N'', N'Sloan', Administration.SetDateOfBirth(-11674), N'M', N'asloan@bell.com', 1012, 1003, N'asloan');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'74441448', N'Lorie', N'', N'Sheen', Administration.SetDateOfBirth(-7872), N'F', N'lsheen@bell.com', 1014, 1016, N'lsheen');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'83683059', N'Angela', N'', N'Sommese', Administration.SetDateOfBirth(-9011), N'F', N'asommese@emailcity.com', 1007, 1015, N'asommese');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'63157226', N'Charles', N'', N'Steen', Administration.SetDateOfBirth(-6684), N'M', N'csteen@verizon.net', 1019, 1009, N'csteen');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'21589199', N'Marvin', N'', N'Stappleton', Administration.SetDateOfBirth(-15363), N'M', N'mstappleton@bell.com', 1021, 1010, N'mstappleton');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'86397627', N'Dorothy', N'', N'Shapiro', Administration.SetDateOfBirth(-10669), N'F', N'dshapiro@googlemail.com', 1010, 1022, N'dshapiro');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'99322424', N'Ann', N'', N'Goldstein', Administration.SetDateOfBirth(-17468), N'F', N'agoldstein@comcast.net', 1018, 1002, N'agoldstein');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'26866050', N'Willie', N'', N'Rhoads', Administration.SetDateOfBirth(-15853), N'F', N'wrhoads@yahoo.com', 1021, 1019, N'wrhoads');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'78890802', N'Joel', N'', N'August', Administration.SetDateOfBirth(-7707), N'M', N'jaugust@yahoo.com', 1020, 1016, N'jaugust');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'31124776', N'Nelly', N'', N'Patino', Administration.SetDateOfBirth(-15500), N'F', N'npatino@bell.com', 1003, 1018, N'npatino');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'39894996', N'Alfred', N'', N'Wright', Administration.SetDateOfBirth(-15855), N'M', N'awright@bell.com', 1009, 1016, N'awright');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'66825691', N'Jessica', N'Rosette', N'Druschel', Administration.SetDateOfBirth(-14118), N'F', N'jdruschel@bell.com', 1013, 1004, N'jdruschel');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'58689294', N'Joanne', N'', N'Verona', Administration.SetDateOfBirth(-13751), N'F', N'jverona@bell.com', 1019, 1001, N'jverona');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'63101592', N'Angelle', N'', N'Bogamin', Administration.SetDateOfBirth(-10666), N'F', N'abogamin@bell.com', 1021, 1001, N'abogamin');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'66928071', N'Georgia', N'Catherine', N'Matthews', Administration.SetDateOfBirth(-13754), N'F', N'gmatthews@googlemail.com', 1013, 1026, N'gmatthews');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'22190539', N'Jeff', N'', N'Yao', Administration.SetDateOfBirth(-14323), N'M', N'jyao@hotmail.com', 1011, 1019, N'jyao');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'59072762', N'Charles', N'', N'Emmet', Administration.SetDateOfBirth(-18024), N'M', N'cemmet@bell.com', 1004, 1009, N'cemmet');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'62422529', N'Nellie', N'', N'Essina', Administration.SetDateOfBirth(-14191), N'F', N'nessina@bell.com', 1016, 1028, N'nessina');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'14193215', N'Marie-Joan', N'', N'Effras', Administration.SetDateOfBirth(-17103), N'F', N'meffras@hotmail.com', 1007, 1014, N'meffras');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'26101313', N'Dorothée', N'', N'Ndolo', Administration.SetDateOfBirth(-6623), N'F', N'dndolo@emailcity.com', 1019, 1015, N'dndolo');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'78415015', N'Margareth', N'', N'Wong', Administration.SetDateOfBirth(-11558), N'F', N'mwong@bell.com', 1005, 1024, N'mwong');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'93563254', N'Walter', N'James', N'Manzies', Administration.SetDateOfBirth(-16636), N'M', N'wmanzies@bell.com', 1003, 1004, N'wmanzies');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'95872166', N'Laurie', N'', N'Cattell', Administration.SetDateOfBirth(-10710), N'F', N'lcattell@comcast.net', 1006, 1015, N'lcattell');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'84115480', N'Anthony', N'', N'Berg', Administration.SetDateOfBirth(-17430), N'M', N'aberg@bell.com', 1008, 1001, N'aberg');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'86390839', N'Heidie', N'', N'Conklin', Administration.SetDateOfBirth(-7905), N'F', N'hconklin@bell.com', 1017, 1010, N'hconklin');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'71637021', N'Carl', N'', N'Nielsen', Administration.SetDateOfBirth(-10708), N'M', N'cnielsen@hotmail.com', 1013, 1014, N'cnielsen');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'44325641', N'Alan', N'Jules', N'Drey', Administration.SetDateOfBirth(-11803), N'M', N'adrey@hotmail.com', 1009, 1022, N'adrey');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'95325308', N'Ursulla', N'', N'Copeland', Administration.SetDateOfBirth(-10582), N'F', N'ucopeland@hotmail.com', 1011, 1019, N'ucopeland');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'62957771', N'Kim', N'', N'Blink', Administration.SetDateOfBirth(-13652), N'F', N'kblink@bell.com', 1001, 1021, N'kblink');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'22482370', N'Marie-Anne', N'', N'Levine', Administration.SetDateOfBirth(-8411), N'F', N'mlevine@googlemail.com', 1006, 1004, N'mlevine');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'39196666', N'Benita', N'', N'Vodianova', Administration.SetDateOfBirth(-12290), N'F', N'bvodianova@bell.com', 1018, 1033, N'bvodianova');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'92910924', N'Nicky', N'', N'McCall', Administration.SetDateOfBirth(-14192), N'F', N'nmccall@verizon.net', 1020, 1014, N'nmccall');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'69028775', N'Solomon', N'', N'Leary', Administration.SetDateOfBirth(-17544), N'M', N'sleary@bell.com', 1005, 1010, N'sleary');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'11545331', N'Isaiah', N'', N'Bonnevie', Administration.SetDateOfBirth(-10401), N'M', N'ibonnevie@earthlink.net', 1017, 1029, N'ibonnevie');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'11685409', N'Roberta', N'', N'Daring', Administration.SetDateOfBirth(-7585), N'F', N'rdaring@bell.com', 1017, 1019, N'rdaring');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'44123272', N'Jeffrey', N'', N'Leeson', Administration.SetDateOfBirth(-12236), N'M', N'jleeson@emailcity.com', 1007, 1024, N'jleeson');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'17996653', N'Judith', N'', N'Ward', Administration.SetDateOfBirth(-11655), N'F', N'jward@earthlink.net', 1007, 1029, N'jward');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'91685196', N'Steve', N'', N'Martelli', Administration.SetDateOfBirth(-13344), N'M', N'smartelli@yahoo.com', 1014, 1028, N'smartelli');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'24115743', N'Maurice', N'', N'Levin', Administration.SetDateOfBirth(-15376), N'M', N'mlevin@bell.com', 1001, 1029, N'mlevin');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'93874337', N'Mimie', N'', N'Osborne', Administration.SetDateOfBirth(-13474), N'F', N'mosborne@bell.com', 1021, 1003, N'mosborne');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'85206348', N'Emilie', N'', N'Cecchinni', Administration.SetDateOfBirth(-16291), N'F', N'ececchinni@verizon.net', 1009, 1015, N'ececchinni');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'39846199', N'Howard', N'', N'Borr', Administration.SetDateOfBirth(-16458), N'M', N'hborr@googlemail.com', 1006, 1019, N'hborr');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'71284642', N'William', N'Jeffrey', N'Dillon ', Administration.SetDateOfBirth(-9814), N'M', N'wdillon @comcast.net', 1009, 1007, N'wdillon ');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'44630345', N'Willy', N'', N'Hubbard', Administration.SetDateOfBirth(-11812), N'M', N'whubbard@verizon.net', 1004, 1002, N'whubbard');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'68316890', N'Louis', N'', N'Martinez', Administration.SetDateOfBirth(-8414), N'M', N'lmartinez@bell.com', 1005, 1018, N'lmartinez');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'56699910', N'Robert', N'', N'Meyers', Administration.SetDateOfBirth(-13447), N'M', N'rmeyers@bell.com', 1011, 1031, N'rmeyers');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'97892851', N'Kimberly', N'Anne', N'Simmons', Administration.SetDateOfBirth(-10428), N'F', N'ksimmons@hotmail.com', 1012, 1017, N'ksimmons');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'31179476', N'Candy', N'', N'Howell', Administration.SetDateOfBirth(-7669), N'F', N'chowell@bell.com', 1012, 1011, N'chowell');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'80407788', N'Nina', N'', N'Leason', Administration.SetDateOfBirth(-7105), N'F', N'nleason@gmail.com', 1010, 1019, N'nleason');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'32317594', N'Judith', N'', N'Kwong', Administration.SetDateOfBirth(-12563), N'F', N'jkwong@bell.com', 1005, 1016, N'jkwong');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'14138878', N'Sophia', N'', N'Dunston', Administration.SetDateOfBirth(-12735), N'F', N'sdunston@gmail.com', 1009, 1030, N'sdunston');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'82909585', N'Audrey', N'', N'Morrison', Administration.SetDateOfBirth(-8807), N'F', N'amorrison@gmail.com', 1011, 1025, N'amorrison');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'36774846', N'Dorothy', N'', N'Milner', Administration.SetDateOfBirth(-10334), N'F', N'dmilner@comcast.net', 1020, 1015, N'dmilner');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'18521599', N'Jeanne', N'Marie', N'Lowery', Administration.SetDateOfBirth(-17918), N'F', N'jlowery@yahoo.com', 1017, 1023, N'jlowery');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'64283007', N'Renee', N'', N'Welch', Administration.SetDateOfBirth(-6843), N'F', N'rwelch@bell.com', 1001, 1022, N'rwelch');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'42824013', N'Denis', N'', N'Gott', Administration.SetDateOfBirth(-14607), N'M', N'dgott@bell.com', 1004, 1008, N'dgott');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'83235415', N'Nicholas', N'', N'Thrashler', Administration.SetDateOfBirth(-15593), N'M', N'nthrashler@hotmail.com', 1020, 1004, N'nthrashler');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'66685851', N'Therese', N'', N'Baldwin', Administration.SetDateOfBirth(-11785), N'F', N'tbaldwin@bell.com', 1001, 1003, N'tbaldwin');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'94295415', N'Sophie', N'', N'Curtis', Administration.SetDateOfBirth(-9224), N'F', N'scurtis@bell.com', 1018, 1003, N'scurtis');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'84640485', N'Daniel', N'', N'Friel', Administration.SetDateOfBirth(-7844), N'M', N'dfriel@hotmail.com', 1016, 1033, N'dfriel');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'45990431', N'Mary-Jane', N'', N'Maruzzo', Administration.SetDateOfBirth(-16316), N'F', N'mmaruzzo@bell.com', 1004, 1026, N'mmaruzzo');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'38803152', N'Jesse', N'', N'Belack', Administration.SetDateOfBirth(-6910), N'M', N'jbelack@yahoo.com', 1011, 1022, N'jbelack');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'19965527', N'Stephen', N'Joseph', N'Mullins', Administration.SetDateOfBirth(-9114), N'M', N'smullins@comcast.net', 1020, 1016, N'smullins');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'81741867', N'Theresa', N'', N'Charles', Administration.SetDateOfBirth(-8182), N'F', N'tcharles@emailcity.com', 1009, 1005, N'tcharles');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'42759593', N'Andrea', N'', N'Rollenhaggen', Administration.SetDateOfBirth(-7585), N'F', N'arollenhaggen@hotmail.com', 1017, 1010, N'arollenhaggen');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'25117160', N'Freida', N'', N'Alvarez', Administration.SetDateOfBirth(-6884), N'F', N'falvarez@yahoo.com', 1010, 1008, N'falvarez');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'25513152', N'Carolyn', N'', N'Dry', Administration.SetDateOfBirth(-7117), N'F', N'cdry@hotmail.com', 1001, 1030, N'cdry');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'50880216', N'Dominic', N'', N'Greenwood', Administration.SetDateOfBirth(-7373), N'M', N'dgreenwood@googlemail.com', 1012, 1033, N'dgreenwood');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'13206385', N'Theresa', N'', N'Malten', Administration.SetDateOfBirth(-8188), N'F', N'tmalten@bell.com', 1002, 1030, N'tmalten');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'78843834', N'Mary', N'', N'Faith', Administration.SetDateOfBirth(-7727), N'f', N'mfaith@hotmail.com', 1016, 1022, N'mfaith');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'64194753', N'Ella', N'', N'Herrington', Administration.SetDateOfBirth(-8802), N'F', N'eherrington@bell.com', 1013, 1001, N'eherrington');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'22469714', N'Charly', N'', N'Tasevski', Administration.SetDateOfBirth(-8266), N'F', N'ctasevski@hotmail.com', 1003, 1024, N'ctasevski');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'83323280', N'Frieda', N'', N'Hursburgh', Administration.SetDateOfBirth(-7493), N'F', N'fhursburgh@bell.com', 1021, 1007, N'fhursburgh');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'14966078', N'Kevin', N'', N'Bradley', Administration.SetDateOfBirth(-7487), N'M', N'kbradley@googlemail.com', 1006, 1002, N'kbradley');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'59498446', N'Morris', N'', N'Benneyton', Administration.SetDateOfBirth(-8185), N'M', N'mbenneyton@bell.com', 1019, 1021, N'mbenneyton');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'23803067', N'Bobbie', N'', N'Cobbs', Administration.SetDateOfBirth(-8253), N'F', N'bcobbs@hotmail.com', 1008, 1015, N'bcobbs');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'81294535', N'Todd', N'', N'Baldwynn', Administration.SetDateOfBirth(-8196), N'M', N'tbaldwynn@mailman.com', 1009, 1021, N'tbaldwynn');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'86930732', N'Edgar', N'Maurice', N'Haze', Administration.SetDateOfBirth(-8736), N'M', N'ehaze@hotmail.com', 1004, 1030, N'ehaze');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'10072219', N'Shanice', N'', N'Bratberg', Administration.SetDateOfBirth(-7997), N'F', N'sbratberg@mailman.com', 1011, 1005, N'sbratberg');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'10086459', N'Bill', N'Frank', N'Portnow', Administration.SetDateOfBirth(-8480), N'M', N'bportnow@bell.com', 1002, 1007, N'bportnow');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'58496635', N'Gilbert', N'', N'Hudson', Administration.SetDateOfBirth(-6709), N'M', N'ghudson@verizon.net', 1005, 1009, N'ghudson');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'62769261', N'Mary-Jeanne', N'', N'Robinson', Administration.SetDateOfBirth(-8057), N'F', N'mrobinson@emailcity.com', 1007, 1016, N'mrobinson');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'36456629', N'John', N'', N'Negro', Administration.SetDateOfBirth(-6919), N'M', N'jnegro@hotmail.com', 1012, 1010, N'jnegro');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'32635074', N'Janice', N'', N'Young', Administration.SetDateOfBirth(-8269), N'F', N'jyoung@bell.com', 1019, 1027, N'jyoung');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'55678546', N'James', N'', N'Close', Administration.SetDateOfBirth(-6880), N'M', N'jclose@hotmail.com', 1008, 1028, N'jclose');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'22855895', N'Annie', N'Denise', N'Morzzi', Administration.SetDateOfBirth(-7244), N'F', N'amorzzi@comcast.net', 1001, 1031, N'amorzzi');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'27919231', N'Edward', N'', N'Corone', Administration.SetDateOfBirth(-8850), N'M', N'ecorone@googlemail.com', 1011, 1014, N'ecorone');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'21841686', N'Emmie', N'', N'Hagerty', Administration.SetDateOfBirth(-8561), N'F', N'ehagerty@comcast.net', 1012, 1028, N'ehagerty');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'25753091', N'Marc', N'', N'Watts', Administration.SetDateOfBirth(-7778), N'M', N'mwatts@bell.com', 1017, 1033, N'mwatts');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'28262141', N'Charlene', N'', N'Brooks', Administration.SetDateOfBirth(-7090), N'F', N'cbrooks@emailcity.com', 1005, 1024, N'cbrooks');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'92829962', N'Aaron', N'', N'Forester', Administration.SetDateOfBirth(-7126), N'M', N'aforester@bell.com', 1003, 1020, N'aforester');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'50715353', N'Charlie', N'', N'Klugmann', Administration.SetDateOfBirth(-7046), N'F', N'cklugmann@verizon.net', 1019, 1029, N'cklugmann');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'21629543', N'Marcus', N'Lukas', N'McGrego', Administration.SetDateOfBirth(-8613), N'M', N'mmcgrego@verizon.net', 1018, 1024, N'mmcgrego');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'64725556', N'Joe', N'', N'Baron', Administration.SetDateOfBirth(-6972), N'M', N'jbaron@bell.com', 1014, 1022, N'jbaron');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'64805500', N'Jennifer ', N'', N'Signoll', Administration.SetDateOfBirth(-7141), N'F', N'jsignoll@verizon.net', 1012, 1010, N'jsignoll');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'26401353', N'Caroline', N'Denise', N'Streiss', Administration.SetDateOfBirth(-6796), N'F', N'cstreiss@bell.com', 1007, 1025, N'cstreiss');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'29813834', N'Mark', N'', N'Woodhall', Administration.SetDateOfBirth(-7013), N'M', N'mwoodhall@bell.com', 1007, 1021, N'mwoodhall');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'10839966', N'David', N'', N'Russell', Administration.SetDateOfBirth(-7552), N'M', N'drussell@hotmail.com', 1020, 1013, N'drussell');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'99073688', N'Emile', N'', N'Boaz', Administration.SetDateOfBirth(-8045), N'F', N'eboaz@bell.com', 1010, 1012, N'eboaz');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'77767469', N'Molie', N'Sheryl', N'Hamilton', Administration.SetDateOfBirth(-9020), N'F', N'mhamilton@bell.com', 1001, 1015, N'mhamilton');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'87271291', N'Ally', N'', N'Faithfull', Administration.SetDateOfBirth(-7525), N'F', N'afaithfull@bell.com', 1005, 1025, N'afaithfull');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'97319452', N'William', N'', N'Deerfield', Administration.SetDateOfBirth(-6887), N'M', N'wdeerfield@yahoo.com', 1010, 1033, N'wdeerfield');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'68075163', N'Esther', N'', N'Redds', Administration.SetDateOfBirth(-8638), N'F', N'eredds@googlemail.com', 1020, 1024, N'eredds');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'22976243', N'Mauricette', N'', N'Fleming', Administration.SetDateOfBirth(-7044), N'F', N'mfleming@bell.com', 1008, 1003, N'mfleming');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'55255138', N'Lynne', N'', N'Riehle', Administration.SetDateOfBirth(-7491), N'F', N'lriehle@bell.com', 1020, 1013, N'lriehle');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'25741029', N'Allie', N'', N'Younger', Administration.SetDateOfBirth(-6730), N'F', N'ayounger@bell.com', 1002, 1011, N'ayounger');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'77418122', N'Beatrice', N'Annie', N'Howell', Administration.SetDateOfBirth(-8646), N'F', N'bhowell@hotmail.com', 1002, 1019, N'bhowell');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'19566695', N'Matilda', N'', N'Jones-Cox', Administration.SetDateOfBirth(-6714), N'F', N'mjones-cox@hotmail.com', 1003, 1022, N'mjones-cox');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'69472689', N'Ruth', N'', N'Osmont', Administration.SetDateOfBirth(-6619), N'F', N'rosmont@verizon.net', 1017, 1018, N'rosmont');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'11386069', N'Adam', N'', N'Volare', Administration.SetDateOfBirth(-7129), N'M', N'avolare@hotmail.com', 1020, 1021, N'avolare');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'96111921', N'Jessie', N'', N'Holder', Administration.SetDateOfBirth(-8604), N'F', N'jholder@googlemail.com', 1003, 1001, N'jholder');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'52830188', N'Roger', N'', N'Hawksworth', Administration.SetDateOfBirth(-8264), N'M', N'rhawksworth@earthlink.net', 1006, 1016, N'rhawksworth');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'52445146', N'Claire', N'', N'Weinert', Administration.SetDateOfBirth(-6887), N'F', N'cweinert@bell.com', 1006, 1026, N'cweinert');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'46962937', N'Kenneth', N'', N'Montes', Administration.SetDateOfBirth(-8310), N'M', N'kmontes@verizon.net', 1008, 1030, N'kmontes');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'17167367', N'Jonathan', N'Peter', N'Frame', Administration.SetDateOfBirth(-8459), N'M', N'jframe@bell.com', 1004, 1033, N'jframe');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'40121556', N'Michael', N'', N'Darling', Administration.SetDateOfBirth(-9085), N'M', N'mdarling@bell.com', 1005, 1020, N'mdarling');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'56125627', N'Chris', N'', N'Jones-Cox', Administration.SetDateOfBirth(-8830), N'M', N'cjones-cox@gmail.com', 1006, 1008, N'cjones-cox');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'99348350', N'Charlie', N'', N'Lane', Administration.SetDateOfBirth(-7640), N'F', N'clane@earthlink.net', 1002, 1022, N'clane');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'69833211', N'Aaron', N'', N'Gunn', Administration.SetDateOfBirth(-6782), N'M', N'agunn@bell.com', 1014, 1033, N'agunn');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'15216285', N'Sonnie', N'', N'Foley', Administration.SetDateOfBirth(-8368), N'F', N'sfoley@gmail.com', 1017, 1026, N'sfoley');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'59567112', N'Caroline', N'Mauricette', N'Navathe', Administration.SetDateOfBirth(-7408), N'F', N'cnavathe@bell.com', 1013, 1008, N'cnavathe');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'78881868', N'Janice', N'', N'Halbrook', Administration.SetDateOfBirth(-7801), N'F', N'jhalbrook@hotmail.com', 1011, 1031, N'jhalbrook');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'90977255', N'Caroline', N'', N'Guglielmi', Administration.SetDateOfBirth(-8468), N'F', N'cguglielmi@emailcity.com', 1015, 1004, N'cguglielmi');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'69973776', N'Larry', N'', N'Martino', Administration.SetDateOfBirth(-7702), N'M', N'lmartino@gmail.com', 1007, 1019, N'lmartino');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'79687459', N'Bobby', N'', N'Dunn', Administration.SetDateOfBirth(-8883), N'M', N'bdunn@bell.com', 1009, 1023, N'bdunn');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'30059335', N'Beatrice', N'', N'Jaco', Administration.SetDateOfBirth(-7081), N'F', N'bjaco@earthlink.net', 1021, 1002, N'bjaco');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'48526193', N'Maria', N'Shania', N'Szymanki', Administration.SetDateOfBirth(-6811), N'F', N'mszymanki@bell.com', 1005, 1011, N'mszymanki');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'13123883', N'Harry', N'', N'Peck', Administration.SetDateOfBirth(-8065), N'M', N'hpeck@hotmail.com', 1009, 1012, N'hpeck');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'56405712', N'Leslie', N'', N'Bonz', Administration.SetDateOfBirth(-6575), N'F', N'lbonz@comcast.net', 1011, 1022, N'lbonz');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'95382331', N'Larry', N'', N'Guns', Administration.SetDateOfBirth(-8530), N'M', N'lguns@hotmail.com', 1005, 1008, N'lguns');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'78820341', N'James', N'', N'Thompson', Administration.SetDateOfBirth(-7950), N'M', N'jthompson@hotmail.com', 1014, 1025, N'jthompson');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'88619042', N'Vickie', N'', N'Hoffman', Administration.SetDateOfBirth(-9069), N'F', N'vhoffman@bell.com', 1012, 1022, N'vhoffman');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'69913023', N'Marya', N'', N'Brantley', Administration.SetDateOfBirth(-8909), N'F', N'mbrantley@bell.com', 1019, 1012, N'mbrantley');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'98789290', N'Khalla', N'', N'Sridhara', Administration.SetDateOfBirth(-8767), N'F', N'ksridhara@verizon.net', 1013, 1013, N'ksridhara');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'62024899', N'Jeremy', N'', N'Graves', Administration.SetDateOfBirth(-7529), N'M', N'jgraves@bell.com', 1017, 1021, N'jgraves');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'77672183', N'George', N'', N'Carter', Administration.SetDateOfBirth(-6936), N'M', N'gcarter@bell.com', 1005, 1022, N'gcarter');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'50566154', N'Felicia', N'', N'Call', Administration.SetDateOfBirth(-7329), N'F', N'fcall@verizon.net', 1005, 1025, N'fcall');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'65326450', N'Leon', N'', N'Parker', Administration.SetDateOfBirth(-8015), N'M', N'lparker@googlemail.com', 1001, 1016, N'lparker');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'49192352', N'Sudhir', N'', N'Golden', Administration.SetDateOfBirth(-8539), N'M', N'sgolden@bell.com', 1021, 1025, N'sgolden');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'40349856', N'Myriam', N'Rebeccah', N'North', Administration.SetDateOfBirth(-6915), N'F', N'mnorth@bell.com', 1006, 1013, N'mnorth');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'20650841', N'Amanda', N'', N'Sesvold', Administration.SetDateOfBirth(-7249), N'F', N'asesvold@yahoo.com', 1007, 1024, N'asesvold');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'64479937', N'Erik', N'', N'Holbrook', Administration.SetDateOfBirth(-6680), N'M', N'eholbrook@hotmail.com', 1018, 1025, N'eholbrook');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'75007181', N'Horace', N'', N'Worth', Administration.SetDateOfBirth(-7134), N'M', N'hworth@gmail.com', 1009, 1013, N'hworth');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'45310067', N'Rebeccah', N'Josephine', N'Innerny', Administration.SetDateOfBirth(-8452), N'F', N'rinnerny@gmail.com', 1010, 1001, N'rinnerny');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'98030903', N'Colleen', N'', N'Sullivan', Administration.SetDateOfBirth(-7991), N'F', N'csullivan@bell.com', 1006, 1024, N'csullivan');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'49547816', N'Nick', N'', N'Kenzle', Administration.SetDateOfBirth(-7029), N'M', N'nkenzle@bell.com', 1009, 1015, N'nkenzle');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'34804597', N'Nina', N'', N'Bonfanti', Administration.SetDateOfBirth(-8231), N'F', N'nbonfanti@mailman.com', 1005, 1001, N'nbonfanti');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'19982483', N'Jimmy', N'', N'Liskow', Administration.SetDateOfBirth(-7262), N'M', N'jliskow@gmail.com', 1004, 1017, N'jliskow');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'40225656', N'Joanne', N'Josephine', N'Kortan', Administration.SetDateOfBirth(-8475), N'F', N'jkortan@gmail.com', 1010, 1028, N'jkortan');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'40787552', N'Frank', N'', N'Wilder', Administration.SetDateOfBirth(-6909), N'M', N'fwilder@hotmail.com', 1007, 1004, N'fwilder');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'81193061', N'Annette', N'', N'Burkholder', Administration.SetDateOfBirth(-8992), N'F', N'aburkholder@bell.com', 1007, 1002, N'aburkholder');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'80732033', N'Gabriel', N'', N'Wells', Administration.SetDateOfBirth(-7822), N'M', N'gwells@bell.com', 1020, 1019, N'gwells');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'54971730', N'Robert', N'', N'Dreammer', Administration.SetDateOfBirth(-6911), N'M', N'rdreammer@gmail.com', 1015, 1022, N'rdreammer');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'25751908', N'Evelyne', N'', N'Hill', Administration.SetDateOfBirth(-8189), N'F', N'ehill@emailcity.com', 1013, 1029, N'ehill');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'45727678', N'Hector', N'', N'Conway', Administration.SetDateOfBirth(-6624), N'M', N'hconway@bell.com', 1011, 1023, N'hconway');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'17707178', N'Donald', N'', N'Ross', Administration.SetDateOfBirth(-7993), N'M', N'dross@mailman.com', 1008, 1033, N'dross');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'34248051', N'Sanjeev', N'', N'Bradley ', Administration.SetDateOfBirth(-7817), N'M', N'sbradley @bell.com', 1002, 1029, N'sbradley ');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'18029409', N'Wilson', N'', N'Childs', Administration.SetDateOfBirth(-7256), N'M', N'wchilds@bell.com', 1002, 1019, N'wchilds');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'64651560', N'Jennie', N'', N'Stripper', Administration.SetDateOfBirth(-6723), N'F', N'jstripper@verizon.net', 1020, 1028, N'jstripper');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'66645236', N'Elenia', N'', N'Martins', Administration.SetDateOfBirth(-8838), N'M', N'emartins@yahoo.com', 1015, 1013, N'emartins');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'72013540', N'James', N'', N'Yorg', Administration.SetDateOfBirth(-7946), N'F', N'jyorg@verizon.net', 1002, 1014, N'jyorg');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'35455812', N'Megan', N'', N'Penner', Administration.SetDateOfBirth(-14395), N'F', N'mpenner@hotmail.com', 1010, 1030, N'mpenner');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'30350483', N'Peter', N'', N'Cochrane', Administration.SetDateOfBirth(-7640), N'M', N'pcochrane@verizon.net', 1001, 1025, N'pcochrane');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'10001687', N'Marc', N'Joseph', N'Nanga', Administration.SetDateOfBirth(-17208), N'M', N'mnanga@bell.com', 1013, 1006, N'mnanga');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'59489272', N'Ashley', N'', N'Redgrave', Administration.SetDateOfBirth(-11600), N'F', N'aredgrave@verizon.net', 1002, 1011, N'aredgrave');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'71748621', N'Gabriella', N'', N'Bryvni', Administration.SetDateOfBirth(-11647), N'F', N'gbryvni@bell.com', 1018, 1008, N'gbryvni');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'57241899', N'Betty', N'', N'Welles', Administration.SetDateOfBirth(-10355), N'F', N'bwelles@googlemail.com', 1015, 1003, N'bwelles');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'17021427', N'Irene', N'Patricia', N'McCabe', Administration.SetDateOfBirth(-17743), N'F', N'imccabe@earthlink.net', 1021, 1004, N'imccabe');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'63358761', N'Martin', N'', N'Aldredge', Administration.SetDateOfBirth(-6887), N'M', N'maldredge@bell.com', 1019, 1012, N'maldredge');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'62886100', N'Elena', N'', N'Collin', Administration.SetDateOfBirth(-8995), N'F', N'ecollin@comcast.net', 1004, 1029, N'ecollin');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'98174663', N'John', N'', N'Christensen', Administration.SetDateOfBirth(-16701), N'M', N'jchristensen@hotmail.com', 1002, 1027, N'jchristensen');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'70930779', N'Johan', N'', N'Kar ', Administration.SetDateOfBirth(-17406), N'M', N'jkar @yahoo.com', 1002, 1024, N'jkar ');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'64392466', N'Juliana', N'', N'Murphy', Administration.SetDateOfBirth(-16090), N'F', N'jmurphy@gmail.com', 1014, 1005, N'jmurphy');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'17755057', N'Joan', N'', N'Wilds', Administration.SetDateOfBirth(-13825), N'F', N'jwilds@hotmail.com', 1011, 1021, N'jwilds');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'77526039', N'Douglas', N'', N'Rourcke', Administration.SetDateOfBirth(-15152), N'M', N'drourcke@bell.com', 1017, 1033, N'drourcke');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'55989883', N'Irina', N'', N'Heroes', Administration.SetDateOfBirth(-10138), N'F', N'iheroes@yahoo.com', 1010, 1003, N'iheroes');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'33093780', N'Albert', N'', N'Noord', Administration.SetDateOfBirth(-8267), N'M', N'anoord@earthlink.net', 1004, 1029, N'anoord');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'92367018', N'Carl', N'', N'Riggs', Administration.SetDateOfBirth(-14793), N'M', N'criggs@mailman.com', 1014, 1007, N'criggs');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'80045036', N'Iritha', N'', N'Taylor', Administration.SetDateOfBirth(-17370), N'F', N'itaylor@bell.com', 1012, 1017, N'itaylor');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'45689510', N'Daniel', N'Eric', N'Luessenthrop', Administration.SetDateOfBirth(-15142), N'M', N'dluessenthrop@emailcity.com', 1018, 1029, N'dluessenthrop');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'93044945', N'Aurelia', N'', N'Richards', Administration.SetDateOfBirth(-9972), N'F', N'arichards@yahoo.com', 1015, 1021, N'arichards');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'71055655', N'Eva', N'', N'Archer', Administration.SetDateOfBirth(-8542), N'F', N'earcher@bell.com', 1005, 1010, N'earcher');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'38319893', N'Alberta', N'', N'Casseus', Administration.SetDateOfBirth(-7220), N'F', N'acasseus@hotmail.com', 1012, 1002, N'acasseus');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'36791952', N'Iona', N'', N'Mundy', Administration.SetDateOfBirth(-7114), N'F', N'imundy@mailman.com', 1013, 1014, N'imundy');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'87257829', N'Danielle', N'', N'Brown', Administration.SetDateOfBirth(-15230), N'F', N'dbrown@googlemail.com', 1002, 1021, N'dbrown');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'22533338', N'Gabrielle', N'', N'Berler', Administration.SetDateOfBirth(-17071), N'F', N'gberler@hotmail.com', 1020, 1021, N'gberler');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'66046693', N'Kate', N'', N'Dollies', Administration.SetDateOfBirth(-7583), N'F', N'kdollies@googlemail.com', 1019, 1009, N'kdollies');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'38726849', N'Patrick', N'', N'Early', Administration.SetDateOfBirth(-10376), N'M', N'pearly@emailcity.com', 1009, 1024, N'pearly');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'64171334', N'David', N'', N'Balter', Administration.SetDateOfBirth(-14182), N'M', N'dbalter@bell.com', 1004, 1001, N'dbalter');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'59058640', N'Liza', N'', N'Lobell', Administration.SetDateOfBirth(-13897), N'F', N'llobell@gmail.com', 1006, 1001, N'llobell');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'38362672', N'Patricia', N'', N'Herman', Administration.SetDateOfBirth(-13820), N'F', N'pherman@yahoo.com', 1007, 1004, N'pherman');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'54105199', N'Helena', N'', N'Bernstein', Administration.SetDateOfBirth(-12771), N'F', N'hbernstein@bell.com', 1002, 1006, N'hbernstein');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'92052325', N'Jonathan', N'', N'Emery', Administration.SetDateOfBirth(-11897), N'M', N'jemery@bell.com', 1019, 1024, N'jemery');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'62013351', N'Emmanuel', N'', N'Woods', Administration.SetDateOfBirth(-15473), N'M', N'ewoods@gmail.com', 1005, 1019, N'ewoods');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'52629641', N'Keith', N'', N'Miller', Administration.SetDateOfBirth(-7303), N'M', N'kmiller@googlemail.com', 1006, 1002, N'kmiller');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'17399506', N'Richard', N'Tony', N'Schaesch', Administration.SetDateOfBirth(-9746), N'M', N'rschaesch@bell.com', 1021, 1010, N'rschaesch');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'84131305', N'Luis', N'', N'Skues', Administration.SetDateOfBirth(-8629), N'M', N'lskues@emailcity.com', 1015, 1015, N'lskues');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'45607972', N'Juliette', N'', N'Lee', Administration.SetDateOfBirth(-12416), N'F', N'jlee@gmail.com', 1017, 1030, N'jlee');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'89807872', N'Annette', N'', N'Harris', Administration.SetDateOfBirth(-13979), N'F', N'aharris@bell.com', 1011, 1015, N'aharris');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'42906603', N'Heather', N'', N'Ring', Administration.SetDateOfBirth(-17700), N'F', N'hring@hotmail.com', 1007, 1013, N'hring');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'48316219', N'Linda', N'', N'Powell', Administration.SetDateOfBirth(-8695), N'F', N'lpowell@yahoo.com', 1002, 1002, N'lpowell');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'53209462', N'Anne', N'', N'Hayden', Administration.SetDateOfBirth(-12911), N'F', N'ahayden@verizon.net', 1010, 1024, N'ahayden');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'69416009', N'Clarck', N'', N'Berry', Administration.SetDateOfBirth(-12631), N'M', N'cberry@hotmail.com', 1003, 1029, N'cberry');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'39440089', N'Nia', N'', N'Shepherd', Administration.SetDateOfBirth(-8859), N'F', N'nshepherd@mailman.com', 1013, 1006, N'nshepherd');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'50397722', N'Carlie', N'', N'Carradine', Administration.SetDateOfBirth(-17716), N'F', N'ccarradine@earthlink.net', 1012, 1004, N'ccarradine');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'80304988', N'Marcus', N'Luke', N'Ware', Administration.SetDateOfBirth(-12596), N'M', N'mware@mailman.com', 1004, 1025, N'mware');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'10654625', N'Nellie', N'', N'Engolo', Administration.SetDateOfBirth(-10267), N'F', N'nengolo@hotmail.com', 1018, 1015, N'nengolo');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'78236366', N'Vina', N'', N'Mortensen', Administration.SetDateOfBirth(-9212), N'F', N'vmortensen@yahoo.com', 1019, 1003, N'vmortensen');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'34153094', N'Francesca', N'', N'Bates', Administration.SetDateOfBirth(-8665), N'F', N'fbates@bell.com', 1006, 1004, N'fbates');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'89374117', N'Philippe', N'', N'Zuylen', Administration.SetDateOfBirth(-14097), N'M', N'pzuylen@hotmail.com', 1001, 1005, N'pzuylen');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'89672229', N'Brian', N'', N'Blakeley', Administration.SetDateOfBirth(-15362), N'M', N'bblakeley@bell.com', 1020, 1015, N'bblakeley');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'58866850', N'Amanda', N'', N'May', Administration.SetDateOfBirth(-8789), N'F', N'amay@googlemail.com', 1006, 1016, N'amay');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'35132606', N'Doreen', N'', N'Biggs', Administration.SetDateOfBirth(-7251), N'F', N'dbiggs@bell.com', 1004, 1012, N'dbiggs');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'73433508', N'Guy', N'', N'York', Administration.SetDateOfBirth(-8278), N'M', N'gyork@bell.com', 1016, 1026, N'gyork');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'57186235', N'Steven', N'Joseph', N'Beatty', Administration.SetDateOfBirth(-8966), N'M', N'sbeatty@earthlink.net', 1010, 1021, N'sbeatty');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'89169954', N'John', N'', N'Hermann', Administration.SetDateOfBirth(-7486), N'M', N'jhermann@bell.com', 1004, 1001, N'jhermann');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'86213295', N'Mary', N'', N'Curtis', Administration.SetDateOfBirth(-7234), N'F', N'mcurtis@mailman.com', 1010, 1018, N'mcurtis');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'53487441', N'Marina', N'', N'Ealy', Administration.SetDateOfBirth(-9669), N'F', N'mealy@gmail.com', 1012, 1008, N'mealy');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'44579520', N'Louis', N'', N'Wey', Administration.SetDateOfBirth(-11506), N'M', N'lwey@bell.com', 1015, 1018, N'lwey');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'97594460', N'Sofia', N'', N'Lowe', Administration.SetDateOfBirth(-8872), N'F', N'slowe@bell.com', 1004, 1029, N'slowe');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'21708859', N'Lisette', N'', N'Woods', Administration.SetDateOfBirth(-11538), N'F', N'lwoods@bell.com', 1006, 1009, N'lwoods');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'36994243', N'Britney', N'', N'Plaine', Administration.SetDateOfBirth(-8925), N'F', N'bplaine@yahoo.com', 1016, 1022, N'bplaine');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'70706228', N'Ritha', N'', N'Berlinger', Administration.SetDateOfBirth(-8938), N'F', N'rberlinger@yahoo.com', 1019, 1003, N'rberlinger');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'99514906', N'Louisa', N'', N'Richardson', Administration.SetDateOfBirth(-10204), N'F', N'lrichardson@yahoo.com', 1014, 1004, N'lrichardson');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'30711740', N'Nelson', N'', N'Berries', Administration.SetDateOfBirth(-11245), N'M', N'nberries@bell.com', 1013, 1005, N'nberries');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'18242540', N'Johnny', N'', N'Domba', Administration.SetDateOfBirth(-11672), N'M', N'jdomba@emailcity.com', 1002, 1030, N'jdomba');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'55096872', N'Julia', N'', N'Lew', Administration.SetDateOfBirth(-10391), N'F', N'jlew@gmail.com', 1009, 1014, N'jlew');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'16836939', N'Marina', N'', N'Burton', Administration.SetDateOfBirth(-7222), N'F', N'mburton@bell.com', 1020, 1033, N'mburton');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'94290549', N'Nelly', N'', N'Austin', Administration.SetDateOfBirth(-7980), N'F', N'naustin@bell.com', 1015, 1023, N'naustin');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'16066014', N'Lizette', N'Deborah', N'Moore', Administration.SetDateOfBirth(-10154), N'F', N'lmoore@bell.com', 1021, 1015, N'lmoore');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'72080009', N'Georgia', N'', N'Brennan', Administration.SetDateOfBirth(-8531), N'F', N'gbrennan@mailman.com', 1003, 1016, N'gbrennan');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'59963130', N'Lucas', N'', N'Mironenka', Administration.SetDateOfBirth(-8299), N'M', N'lmironenka@gmail.com', 1009, 1020, N'lmironenka');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'40131217', N'Mitch', N'', N'Madden', Administration.SetDateOfBirth(-8795), N'M', N'mmadden@gmail.com', 1014, 1017, N'mmadden');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'81129487', N'Natasha', N'', N'Howard', Administration.SetDateOfBirth(-8168), N'F', N'nhoward@bell.com', 1001, 1008, N'nhoward');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'86803631', N'David', N'', N'Depillis', Administration.SetDateOfBirth(-18188), N'M', N'ddepillis@hotmail.com', 1018, 1027, N'ddepillis');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'68571699', N'Margareth', N'', N'Winston', Administration.SetDateOfBirth(-13188), N'F', N'mwinston@bell.com', 1017, 1029, N'mwinston');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'16780312', N'Tanya', N'', N'Judge', Administration.SetDateOfBirth(-15594), N'F', N'tjudge@bell.com', 1014, 1019, N'tjudge');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'26335910', N'Irene', N'Denise', N'Torrens', Administration.SetDateOfBirth(-11391), N'F', N'itorrens@bell.com', 1004, 1004, N'itorrens');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'73648875', N'Ingrid', N'', N'Colvin', Administration.SetDateOfBirth(-6669), N'F', N'icolvin@bell.com', 1014, 1013, N'icolvin');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'30119730', N'Bradford', N'', N'Schweitzer', Administration.SetDateOfBirth(-16936), N'M', N'bschweitzer@bell.com', 1007, 1031, N'bschweitzer');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'26744046', N'Lynda', N'', N'Bennett', Administration.SetDateOfBirth(-16374), N'F', N'lbennett@yahoo.com', 1007, 1024, N'lbennett');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'42519135', N'Nicholas', N'', N'Levin', Administration.SetDateOfBirth(-9170), N'M', N'nlevin@yahoo.com', 1008, 1001, N'nlevin');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'43897968', N'Keith', N'', N'Sidman', Administration.SetDateOfBirth(-14575), N'M', N'ksidman@emailcity.com', 1017, 1016, N'ksidman');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'53790032', N'Michael', N'', N'Kauffman', Administration.SetDateOfBirth(-11924), N'M', N'mkauffman@hotmail.com', 1019, 1023, N'mkauffman');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'58387906', N'Rose', N'', N'Dowdy', Administration.SetDateOfBirth(-11994), N'F', N'rdowdy@gmail.com', 1011, 1004, N'rdowdy');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'59483451', N'Eric', N'', N'Fisher', Administration.SetDateOfBirth(-15290), N'M', N'efisher@emailcity.com', 1011, 1033, N'efisher');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'95723993', N'Lucie', N'', N'Gayley', Administration.SetDateOfBirth(-17115), N'F', N'lgayley@mailman.com', 1018, 1021, N'lgayley');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'38043017', N'Craig', N'Anthony', N'Sommer', Administration.SetDateOfBirth(-10951), N'M', N'csommer@googlemail.com', 1006, 1009, N'csommer');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'37862842', N'Maya', N'', N'Smith', Administration.SetDateOfBirth(-8823), N'F', N'msmith@gmail.com', 1010, 1016, N'msmith');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'29037010', N'Ron', N'', N'Antonelli', Administration.SetDateOfBirth(-17785), N'M', N'rantonelli@bell.com', 1003, 1015, N'rantonelli');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'49260756', N'Elsie', N'', N'Sudderman', Administration.SetDateOfBirth(-12442), N'F', N'esudderman@hotmail.com', 1005, 1015, N'esudderman');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'50938998', N'Kathleen', N'', N'Schell', Administration.SetDateOfBirth(-17807), N'F', N'kschell@gmail.com', 1015, 1006, N'kschell');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'41974723', N'Wanda', N'', N'Stone', Administration.SetDateOfBirth(-7076), N'F', N'wstone@hotmail.com', 1011, 1014, N'wstone');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'90697843', N'Kenneth', N'', N'Fischer', Administration.SetDateOfBirth(-13489), N'M', N'kfischer@verizon.net', 1015, 1023, N'kfischer');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'69700925', N'Vita', N'', N'Arkin', Administration.SetDateOfBirth(-10709), N'F', N'varkin@gmail.com', 1012, 1010, N'varkin');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'70878335', N'Lennie', N'', N'Renato', Administration.SetDateOfBirth(-7405), N'F', N'lrenato@bell.com', 1021, 1029, N'lrenato');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'76088478', N'Tricia', N'Catherine', N'Anderson', Administration.SetDateOfBirth(-9703), N'F', N'tanderson@bell.com', 1016, 1024, N'tanderson');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'11547001', N'Mirina', N'', N'Kilbourne', Administration.SetDateOfBirth(-14596), N'F', N'mkilbourne@bell.com', 1017, 1023, N'mkilbourne');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'45583670', N'Jane', N'', N'Devan', Administration.SetDateOfBirth(-6661), N'F', N'jdevan@bell.com', 1017, 1018, N'jdevan');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'95217459', N'Byron', N'', N'Capps', Administration.SetDateOfBirth(-17760), N'M', N'bcapps@yahoo.com', 1013, 1025, N'bcapps');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'79848234', N'Richard', N'', N'Diehl', Administration.SetDateOfBirth(-15783), N'M', N'rdiehl@gmail.com', 1013, 1028, N'rdiehl');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'22251267', N'Diana', N'', N'Bieno', Administration.SetDateOfBirth(-6667), N'F', N'dbieno@verizon.net', 1011, 1009, N'dbieno');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'60244732', N'Todd', N'', N'Cudlin', Administration.SetDateOfBirth(-6961), N'M', N'tcudlin@bell.com', 1016, 1020, N'tcudlin');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'60292484', N'Simon', N'Philippe', N'Mathis', Administration.SetDateOfBirth(-6625), N'M', N'smathis@emailcity.com', 1008, 1025, N'smathis');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'85697280', N'Janos', N'', N'Pelagatti', Administration.SetDateOfBirth(-7181), N'M', N'jpelagatti@comcast.net', 1005, 1001, N'jpelagatti');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'81031048', N'Charles', N'', N'Felder', Administration.SetDateOfBirth(-7197), N'M', N'cfelder@yahoo.com', 1017, 1028, N'cfelder');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'12424080', N'Dorrin', N'', N'Sumner', Administration.SetDateOfBirth(-6606), N'F', N'dsumner@bell.com', 1003, 1019, N'dsumner');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'33826359', N'Scott', N'', N'Middleton', Administration.SetDateOfBirth(-6910), N'M', N'smiddleton@bell.com', 1008, 1007, N'smiddleton');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'97480982', N'Sandy', N'', N'Freed', Administration.SetDateOfBirth(-7074), N'F', N'sfreed@yahoo.com', 1015, 1004, N'sfreed');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'42356515', N'Mark', N'', N'Nussbaum', Administration.SetDateOfBirth(-7150), N'M', N'mnussbaum@hotmail.com', 1002, 1001, N'mnussbaum');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'56706731', N'Donna', N'', N'Graham', Administration.SetDateOfBirth(-7046), N'F', N'dgraham@bell.com', 1021, 1015, N'dgraham');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'30303419', N'Melissa', N'', N'Hamilton', Administration.SetDateOfBirth(-6658), N'F', N'mhamilton@bell.com', 1013, 1005, N'mhamilton');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'71394099', N'Ezechiel', N'', N'Binns', Administration.SetDateOfBirth(-6910), N'M', N'ebinns@verizon.net', 1016, 1003, N'ebinns');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'92926035', N'Jeannette', N'', N'Cherniak', Administration.SetDateOfBirth(-7030), N'F', N'jcherniak@bell.com', 1021, 1022, N'jcherniak');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'68903849', N'Katherine', N'Jennie', N'Sandford', Administration.SetDateOfBirth(-6932), N'F', N'ksandford@earthlink.net', 1012, 1006, N'ksandford');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'53564481', N'Seth', N'', N'Godfrey', Administration.SetDateOfBirth(-6776), N'M', N'sgodfrey@bell.com', 1005, 1028, N'sgodfrey');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'23893265', N'Kenneth', N'', N'Bubber', Administration.SetDateOfBirth(-6679), N'M', N'kbubber@emailcity.com', 1019, 1023, N'kbubber');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'76706186', N'Anastasia', N'Cathy', N'Heitman', Administration.SetDateOfBirth(-6721), N'F', N'aheitman@bell.com', 1013, 1011, N'aheitman');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'14401814', N'Sandie', N'', N'Kiviath', Administration.SetDateOfBirth(-6873), N'F', N'skiviath@mailman.com', 1010, 1007, N'skiviath');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'30550140', N'Peter', N'', N'Murdoch', Administration.SetDateOfBirth(-7028), N'M', N'pmurdoch@bell.com', 1017, 1002, N'pmurdoch');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'47730138', N'Anna', N'', N'Davis', Administration.SetDateOfBirth(-7162), N'F', N'adavis@bell.com', 1021, 1031, N'adavis');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'23166808', N'Jeannine', N'', N'Mckenna', Administration.SetDateOfBirth(-7073), N'F', N'jmckenna@bell.com', 1010, 1022, N'jmckenna');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'20113253', N'David', N'Ray', N'Gianelli', Administration.SetDateOfBirth(-6939), N'M', N'dgianelli@hotmail.com', 1006, 1005, N'dgianelli');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'86093339', N'Janet', N'', N'Keogh', Administration.SetDateOfBirth(-7086), N'F', N'jkeogh@bell.com', 1011, 1008, N'jkeogh');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'95079457', N'Justin', N'', N'fromson', Administration.SetDateOfBirth(-6631), N'M', N'jfromson@hotmail.com', 1020, 1006, N'jfromson');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'13277481', N'Desirée', N'', N'Erich', Administration.SetDateOfBirth(-6681), N'F', N'derich@bell.com', 1011, 1031, N'derich');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'14005299', N'Edward', N'', N'Alton', Administration.SetDateOfBirth(-6662), N'M', N'ealton@googlemail.com', 1020, 1006, N'ealton');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'89936758', N'Gary', N'', N'Dingfelder', Administration.SetDateOfBirth(-7000), N'M', N'gdingfelder@yahoo.com', 1002, 1010, N'gdingfelder');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'56709085', N'Aelita', N'', N'Granger', Administration.SetDateOfBirth(-7063), N'F', N'agranger@hotmail.com', 1010, 1005, N'agranger');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'71463418', N'Marc', N'', N'Gilman', Administration.SetDateOfBirth(-6739), N'M', N'mgilman@bell.com', 1015, 1008, N'mgilman');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'84104921', N'John', N'', N'Little', Administration.SetDateOfBirth(-6691), N'M', N'jlittle@bell.com', 1017, 1028, N'jlittle');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'57181634', N'Ezekiel', N'', N'Hammett', Administration.SetDateOfBirth(-6749), N'M', N'ehammett@gmail.com', 1019, 1004, N'ehammett');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'21396774', N'Maria', N'', N'Jacobson', Administration.SetDateOfBirth(-6581), N'F', N'mjacobson@hotmail.com', 1005, 1006, N'mjacobson');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'65295832', N'Bianca', N'', N'Hernandez', Administration.SetDateOfBirth(-6865), N'F', N'bhernandez@gmail.com', 1018, 1030, N'bhernandez');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'16560540', N'Janet', N'', N'Sonn', Administration.SetDateOfBirth(-7214), N'F', N'jsonn@bell.com', 1003, 1003, N'jsonn');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'21292006', N'Alexander', N'Bernard', N'Chayken', Administration.SetDateOfBirth(-6969), N'M', N'achayken@googlemail.com', 1013, 1005, N'achayken');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'45030121', N'Nathalia', N'', N'Harrison', Administration.SetDateOfBirth(-6834), N'F', N'nharrison@bell.com', 1020, 1017, N'nharrison');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'68704272', N'Juanita', N'', N'Mondello', Administration.SetDateOfBirth(-6886), N'F', N'jmondello@bell.com', 1018, 1012, N'jmondello');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'73681897', N'Liana', N'', N'Johnston', Administration.SetDateOfBirth(-6765), N'F', N'ljohnston@bell.com', 1021, 1023, N'ljohnston');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'83383154', N'Justinne', N'', N'Moyer', Administration.SetDateOfBirth(-7067), N'F', N'jmoyer@hotmail.com', 1006, 1002, N'jmoyer');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'13362960', N'George', N'', N'Guttman', Administration.SetDateOfBirth(-6775), N'M', N'gguttman@bell.com', 1017, 1029, N'gguttman');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'74978845', N'Cinthia', N'', N'Caruso', Administration.SetDateOfBirth(-6972), N'F', N'ccaruso@earthlink.net', 1003, 1005, N'ccaruso');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'49170580', N'Steve', N'', N'Pearlberg', Administration.SetDateOfBirth(-6877), N'M', N'spearlberg@bell.com', 1016, 1014, N'spearlberg');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'24953838', N'Natalya', N'', N'Sergent', Administration.SetDateOfBirth(-7102), N'F', N'nsergent@emailcity.com', 1010, 1010, N'nsergent');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'57640432', N'Natasha', N'', N'Pazzani', Administration.SetDateOfBirth(-7241), N'F', N'npazzani@yahoo.com', 1019, 1010, N'npazzani');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'48068962', N'Randy', N'James', N'Ritzel', Administration.SetDateOfBirth(-7155), N'M', N'rritzel@bell.com', 1001, 1009, N'rritzel');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'12260861', N'Daniela', N'', N'Erbe', Administration.SetDateOfBirth(-7154), N'F', N'derbe@bell.com', 1008, 1021, N'derbe');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'58110800', N'Alexandria', N'', N'Nukalo', Administration.SetDateOfBirth(-7196), N'F', N'anukalo@bell.com', 1013, 1010, N'anukalo');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'19199723', N'Isabella', N'', N'Warminsky', Administration.SetDateOfBirth(-7003), N'F', N'iwarminsky@bell.com', 1020, 1018, N'iwarminsky');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'47523504', N'James', N'', N'Garcia', Administration.SetDateOfBirth(-6665), N'M', N'jgarcia@comcast.net', 1018, 1008, N'jgarcia');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'28735768', N'Marianne', N'', N'West', Administration.SetDateOfBirth(-6951), N'F', N'mwest@bell.com', 1008, 1013, N'mwest');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'10781781', N'Michelle', N'', N'Lemper', Administration.SetDateOfBirth(-7468), N'F', N'mlemper@bell.com', 1003, 1029, N'mlemper');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'35168673', N'Annette', N'', N'Hartman', Administration.SetDateOfBirth(-9410), N'F', N'ahartman@bell.com', 1011, 1003, N'ahartman');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'34971796', N'Larry', N'Edmond', N'Olszewski', Administration.SetDateOfBirth(-8327), N'M', N'lolszewski@emailcity.com', 1014, 1001, N'lolszewski');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'72319828', N'Mirna', N'', N'Cox', Administration.SetDateOfBirth(-9860), N'F', N'mcox@gmail.com', 1018, 1031, N'mcox');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'78592832', N'Audrey', N'', N'Barrows', Administration.SetDateOfBirth(-10696), N'F', N'abarrows@verizon.net', 1004, 1016, N'abarrows');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'88632957', N'Claudia', N'', N'Brill', Administration.SetDateOfBirth(-10078), N'F', N'cbrill@bell.com', 1021, 1017, N'cbrill');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'99665943', N'Steve', N'', N'Zodaz', Administration.SetDateOfBirth(-8629), N'M', N'szodaz@gmail.com', 1013, 1005, N'szodaz');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'85998925', N'Lanikha', N'', N'MacMillan', Administration.SetDateOfBirth(-10516), N'F', N'lmacmillan@bell.com', 1011, 1006, N'lmacmillan');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'63055440', N'Jimmy', N'', N'Calvert', Administration.SetDateOfBirth(-8349), N'M', N'jcalvert@bell.com', 1005, 1033, N'jcalvert');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'73665396', N'Stanley', N'', N'Tobolsky', Administration.SetDateOfBirth(-8937), N'M', N'stobolsky@comcast.net', 1018, 1023, N'stobolsky');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'29840647', N'Cynthia', N'', N'Smith', Administration.SetDateOfBirth(-7864), N'F', N'csmith@bell.com', 1006, 1016, N'csmith');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'79291143', N'Christinne', N'', N'Goldman', Administration.SetDateOfBirth(-10485), N'F', N'cgoldman@verizon.net', 1016, 1001, N'cgoldman');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'64192951', N'Nathaly', N'Roxanne', N'Atkins', Administration.SetDateOfBirth(-10310), N'F', N'natkins@yahoo.com', 1014, 1012, N'natkins');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'34814585', N'Nelson', N'Cedar', N'Haven', Administration.SetDateOfBirth(-7413), N'M', N'nhaven@bell.com', 1006, 1003, N'nhaven');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'54353726', N'Lena', N'', N'Marvin', Administration.SetDateOfBirth(-9816), N'F', N'lmarvin@bell.com', 1013, 1002, N'lmarvin');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'26312283', N'Lynn', N'', N'Gonzalez', Administration.SetDateOfBirth(-10653), N'F', N'lgonzalez@bell.com', 1021, 1009, N'lgonzalez');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'90784755', N'Nadia', N'', N'Haden', Administration.SetDateOfBirth(-9651), N'F', N'nhaden@earthlink.net', 1010, 1017, N'nhaden');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'46656351', N'Charles', N'', N'Coins', Administration.SetDateOfBirth(-10724), N'M', N'ccoins@comcast.net', 1008, 1004, N'ccoins');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'49243458', N'Anne', N'', N'Woodsen', Administration.SetDateOfBirth(-8876), N'F', N'awoodsen@gmail.com', 1013, 1033, N'awoodsen');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'45693311', N'Arthetia', N'', N'Jones', Administration.SetDateOfBirth(-7717), N'F', N'ajones@yahoo.com', 1003, 1018, N'ajones');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'33362001', N'Leonika', N'', N'Reddies', Administration.SetDateOfBirth(-10164), N'F', N'lreddies@verizon.net', 1021, 1023, N'lreddies');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'11584149', N'David', N'', N'Atwood', Administration.SetDateOfBirth(-9475), N'M', N'datwood@googlemail.com', 1008, 1009, N'datwood');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'30377992', N'Cindy', N'', N'Horowitz', Administration.SetDateOfBirth(-6760), N'F', N'chorowitz@hotmail.com', 1006, 1013, N'chorowitz');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'51325403', N'Paul', N'', N'Goldmann', Administration.SetDateOfBirth(-11432), N'M', N'pgoldmann@bell.com', 1001, 1006, N'pgoldmann');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'19360666', N'Sheldon', N'', N'Sargent', Administration.SetDateOfBirth(-7251), N'M', N'ssargent@bell.com', 1006, 1028, N'ssargent');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'40686475', N'Kyle', N'Jonathan', N'Leibnitz', Administration.SetDateOfBirth(-8221), N'M', N'kleibnitz@mailman.com', 1017, 1017, N'kleibnitz');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'68308160', N'Derek', N'', N'Wooden', Administration.SetDateOfBirth(-10664), N'M', N'dwooden@googlemail.com', 1018, 1005, N'dwooden');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'66292570', N'Nathalie', N'', N'Drapper', Administration.SetDateOfBirth(-8082), N'f', N'ndrapper@comcast.net', 1020, 1016, N'ndrapper');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'38228045', N'Nadya', N'', N'Waxman', Administration.SetDateOfBirth(-9950), N'F', N'nwaxman@bell.com', 1017, 1016, N'nwaxman');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'11695368', N'Teresa', N'', N'Godenz', Administration.SetDateOfBirth(-8494), N'F', N'tgodenz@bell.com', 1018, 1025, N'tgodenz');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'27502508', N'Jason', N'', N'Better', Administration.SetDateOfBirth(-10187), N'M', N'jbetter@bell.com', 1008, 1006, N'jbetter');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'38901091', N'Marianne', N'Lynda', N'Walker', Administration.SetDateOfBirth(-7797), N'F', N'mwalker@mailman.com', 1020, 1028, N'mwalker');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'54820155', N'Kristina', N'', N'Watson', Administration.SetDateOfBirth(-8507), N'F', N'kwatson@yahoo.com', 1010, 1009, N'kwatson');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'63564195', N'Edmond', N'', N'Church', Administration.SetDateOfBirth(-7983), N'M', N'echurch@earthlink.net', 1014, 1007, N'echurch');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'93524732', N'Anne', N'Melinda', N'Day', Administration.SetDateOfBirth(-9806), N'F', N'aday@comcast.net', 1008, 1009, N'aday');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'56978372', N'Douglas', N'', N'Mitchell', Administration.SetDateOfBirth(-11265), N'M', N'dmitchell@googlemail.com', 1010, 1025, N'dmitchell');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'26796093', N'Louis', N'', N'Metcalf', Administration.SetDateOfBirth(-9904), N'M', N'lmetcalf@googlemail.com', 1011, 1027, N'lmetcalf');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'47992546', N'Leah', N'', N'Milan', Administration.SetDateOfBirth(-10869), N'F', N'lmilan@gmail.com', 1005, 1028, N'lmilan');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'85127539', N'Scott', N'', N'Reid', Administration.SetDateOfBirth(-9508), N'M', N'sreid@bell.com', 1020, 1006, N'sreid');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'71143848', N'Thérèse', N'Elise', N'Hart', Administration.SetDateOfBirth(-8613), N'F', N'thart@bell.com', 1013, 1021, N'thart');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'75253432', N'Timothy', N'', N'Baker', Administration.SetDateOfBirth(-8502), N'M', N'tbaker@bell.com', 1021, 1033, N'tbaker');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'20541767', N'David', N'', N'Reys', Administration.SetDateOfBirth(-6786), N'M', N'dreys@earthlink.net', 1009, 1024, N'dreys');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'33698450', N'Christopher', N'', N'Starr', Administration.SetDateOfBirth(-11741), N'M', N'cstarr@bell.com', 1004, 1008, N'cstarr');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'16848151', N'Jeffrey', N'', N'Wallach', Administration.SetDateOfBirth(-9502), N'M', N'jwallach@emailcity.com', 1001, 1023, N'jwallach');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'55119387', N'Rosemarie', N'', N'Holtz', Administration.SetDateOfBirth(-11726), N'F', N'rholtz@bell.com', 1008, 1001, N'rholtz');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'50385678', N'Howard', N'', N'Partriedge', Administration.SetDateOfBirth(-9899), N'M', N'hpartriedge@bell.com', 1016, 1025, N'hpartriedge');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'70376629', N'Christina', N'', N'Campbell', Administration.SetDateOfBirth(-11426), N'F', N'ccampbell@yahoo.com', 1010, 1020, N'ccampbell');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'16434193', N'Nick', N'', N'Reed', Administration.SetDateOfBirth(-9612), N'M', N'nreed@hotmail.com', 1019, 1021, N'nreed');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'75064972', N'Jacob', N'David', N'Glover', Administration.SetDateOfBirth(-9730), N'M', N'jglover@bell.com', 1002, 1020, N'jglover');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'94240858', N'Denise', N'', N'Frey', Administration.SetDateOfBirth(-6597), N'F', N'dfrey@googlemail.com', 1003, 1007, N'dfrey');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'61877646', N'Barbara', N'', N'Hickling', Administration.SetDateOfBirth(-8061), N'F', N'bhickling@yahoo.com', 1014, 1006, N'bhickling');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'84024491', N'Freida', N'', N'Reid', Administration.SetDateOfBirth(-6681), N'F', N'freid@emailcity.com', 1004, 1006, N'freid');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'37173084', N'Martinne', N'', N'Pelley', Administration.SetDateOfBirth(-6777), N'F', N'mpelley@gmail.com', 1005, 1002, N'mpelley');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'68865860', N'Charlene', N'Germaine', N'Levine', Administration.SetDateOfBirth(-9115), N'F', N'clevine@bell.com', 1021, 1014, N'clevine');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'26725704', N'Barbara', N'Rachel', N'Greens', Administration.SetDateOfBirth(-8385), N'F', N'bgreens@bell.com', 1019, 1026, N'bgreens');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'68007066', N'Stephen', N'Grantt', Administration.SetDateOfBirth(-7945), N'M', N'sgrantt@comcast.net', 1014, 1017, N'sgrantt');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'23070749', N'Ron', N'Merrit', Administration.SetDateOfBirth(-7790), N'M', N'rmerrit@verizon.net', 1001, 1003, N'rmerrit');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'30081575', N'Gregg', N'Clemenson', Administration.SetDateOfBirth(-8351), N'M', N'gclemenson@bell.com', 1004, 1021, N'gclemenson');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'45601142', N'Geoffrey', N'Jonathan', N'Bowen', Administration.SetDateOfBirth(-8558), N'M', N'gbowen@yahoo.com', 1001, 1014, N'gbowen');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'71660176', N'Daniela', N'', N'Reeds', Administration.SetDateOfBirth(-7364), N'F', N'dreeds@googlemail.com', 1008, 1027, N'dreeds');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'19824576', N'Alicia', N'Sidonie', N'Jameson', Administration.SetDateOfBirth(-7964), N'F', N'ajameson@bell.com', 1021, 1025, N'ajameson');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'97981145', N'Carlos', N'', N'Pacio', Administration.SetDateOfBirth(-7660), N'M', N'cpacio@bell.com', 1007, 1007, N'cpacio');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'75888205', N'Eric', N'', N'Harris', Administration.SetDateOfBirth(-7884), N'M', N'eharris@comcast.net', 1021, 1024, N'eharris');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'38988133', N'John', N'', N'Gold', Administration.SetDateOfBirth(-7384), N'M', N'jgold@emailcity.com', 1009, 1010, N'jgold');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'97015794', N'Aaron', N'', N'Garfield', Administration.SetDateOfBirth(-8224), N'M', N'agarfield@bell.com', 1003, 1029, N'agarfield');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'41744911', N'Daniel', N'', N'Perry', Administration.SetDateOfBirth(-8240), N'M', N'dperry@verizon.net', 1001, 1028, N'dperry');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'69636827', N'Ken', N'', N'McAndrews', Administration.SetDateOfBirth(-7248), N'M', N'kmcandrews@earthlink.net', 1010, 1025, N'kmcandrews');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'96907993', N'Donald', N'Anthony', N'Robertson', Administration.SetDateOfBirth(-8015), N'M', N'drobertson@verizon.net', 1013, 1015, N'drobertson');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'53696942', N'John', N'', N'Carrier', Administration.SetDateOfBirth(-7061), N'M', N'jcarrier@bell.com', 1021, 1021, N'jcarrier');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'62828485', N'Luke', N'', N'Wiley', Administration.SetDateOfBirth(-8107), N'M', N'lwiley@hotmail.com', 1020, 1006, N'lwiley');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'11844939', N'Sonny', N'', N'Call', Administration.SetDateOfBirth(-6942), N'M', N'scall@bell.com', 1006, 1017, N'scall');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'55926156', N'Danilo', N'', N'Hernandez', Administration.SetDateOfBirth(-7904), N'M', N'dhernandez@bell.com', 1015, 1022, N'dhernandez');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'55776325', N'Brian', N'', N'Groover', Administration.SetDateOfBirth(-9187), N'M', N'bgroover@gmail.com', 1005, 1026, N'bgroover');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'91166243', N'Ronald', N'', N'Duperrey', Administration.SetDateOfBirth(-6726), N'M', N'rduperrey@bell.com', 1001, 1003, N'rduperrey');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'34116853', N'Romeo', N'', N'Hatfield', Administration.SetDateOfBirth(-7906), N'M', N'rhatfield@earthlink.net', 1018, 1028, N'rhatfield');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'91932441', N'Joanne', N'Roxie', N'Brant', Administration.SetDateOfBirth(-7965), N'F', N'jbrant@bell.com', 1011, 1019, N'jbrant');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'22327912', N'Vincent', N'', N'Osborn', Administration.SetDateOfBirth(-9064), N'M', N'vosborn@hotmail.com', 1008, 1019, N'vosborn');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'77554203', N'Paul', N'', N'Hate', Administration.SetDateOfBirth(-7249), N'M', N'phate@verizon.net', 1016, 1011, N'phate');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'20997505', N'Dorothy', N'', N'Arnold', Administration.SetDateOfBirth(-8954), N'F', N'darnold@earthlink.net', 1014, 1007, N'darnold');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'79791032', N'Martha', N'Denise', N'Fields', Administration.SetDateOfBirth(-6692), N'F', N'mfields@verizon.net', 1007, 1015, N'mfields');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'71579671', N'Stephen', N'', N'Goodson', Administration.SetDateOfBirth(-8721), N'M', N'sgoodson@gmail.com', 1018, 1018, N'sgoodson');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'32705977', N'Daniel', N'', N'Hutchinson', Administration.SetDateOfBirth(-8813), N'M', N'dhutchinson@bell.com', 1017, 1030, N'dhutchinson');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'43076552', N'Ashley', N'', N'Yates', Administration.SetDateOfBirth(-6705), N'F', N'ayates@hotmail.com', 1001, 1030, N'ayates');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'21592872', N'Michele', N'', N'Franklynn', Administration.SetDateOfBirth(-6734), N'F', N'mfranklynn@verizon.net', 1006, 1004, N'mfranklynn');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'47748427', N'Anny', N'', N'Higgins', Administration.SetDateOfBirth(-7738), N'F', N'ahiggins@bell.com', 1019, 1010, N'ahiggins');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'38822305', N'Marthe', N'Bernardette', N'Hands', Administration.SetDateOfBirth(-7131), N'F', N'mhands@verizon.net', 1005, 1019, N'mhands');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'91004129', N'Kevin', N'', N'Chechniak', Administration.SetDateOfBirth(-8033), N'M', N'kchechniak@bell.com', 1008, 1009, N'kchechniak');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'70090580', N'Alfred', N'', N'Lack', Administration.SetDateOfBirth(-7651), N'M', N'alack@comcast.net', 1018, 1004, N'alack');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'64792690', N'Michael', N'', N'Dylan', Administration.SetDateOfBirth(-7444), N'M', N'mdylan@yahoo.com', 1020, 1016, N'mdylan');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'84119105', N'Thomas', N'Robert', N'Dunking', Administration.SetDateOfBirth(-8326), N'M', N'tdunking@googlemail.com', 1017, 1020, N'tdunking');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'54625384', N'Moses', N'', N'Stanton', Administration.SetDateOfBirth(-6988), N'M', N'mstanton@emailcity.com', 1008, 1017, N'mstanton');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'38774875', N'Bruce', N'', N'Boswell', Administration.SetDateOfBirth(-8611), N'M', N'bboswell@yahoo.com', 1012, 1029, N'bboswell');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'26423701', N'Steve', N'', N'Witherspoon', Administration.SetDateOfBirth(-9239), N'M', N'switherspoon@googlemail.com', 1020, 1006, N'switherspoon');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'93611980', N'Marc', N'', N'Deloach', Administration.SetDateOfBirth(-7876), N'M', N'mdeloach@bell.com', 1017, 1033, N'mdeloach');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'19959333', N'Brad', N'', N'Rosen', Administration.SetDateOfBirth(-8047), N'M', N'brosen@yahoo.com', 1008, 1008, N'brosen');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'94725442', N'Jessie', N'', N'Kelley', Administration.SetDateOfBirth(-7126), N'F', N'jkelley@mailman.com', 1002, 1033, N'jkelley');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'84359951', N'Maurice', N'', N'Bergmann', Administration.SetDateOfBirth(-8917), N'M', N'mbergmann@earthlink.net', 1014, 1014, N'mbergmann');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'23795848', N'Edward', N'', N'Martins', Administration.SetDateOfBirth(-6681), N'M', N'emartins@bell.com', 1005, 1027, N'emartins');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'81541827', N'Dennis', N'Jacob', N'Hart', Administration.SetDateOfBirth(-9154), N'M', N'dhart@gmail.com', 1014, 1014, N'dhart');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'84308356', N'Dave', N'', N'Duprey', Administration.SetDateOfBirth(-7394), N'M', N'dduprey@hotmail.com', 1019, 1027, N'dduprey');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'82403679', N'Lester', N'', N'Holliday', Administration.SetDateOfBirth(-8727), N'M', N'lholliday@bell.com', 1020, 1003, N'lholliday');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'83622454', N'Martha', N'', N'Romer', Administration.SetDateOfBirth(-15459), N'F', N'mromer@gmail.com', 1012, 1006, N'mromer');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'14334942', N'James', N'', N'Cussack', Administration.SetDateOfBirth(-11532), N'M', N'jcussack@googlemail.com', 1019, 1026, N'jcussack');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'20498627', N'Paula', N'', N'Pellicanos', Administration.SetDateOfBirth(-10747), N'F', N'ppellicanos@yahoo.com', 1012, 1028, N'ppellicanos');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'60589751', N'Ryan', N'', N'Busey', Administration.SetDateOfBirth(-9484), N'M', N'rbusey@comcast.net', 1010, 1007, N'rbusey');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'48733018', N'Mark', N'', N'Whitmire', Administration.SetDateOfBirth(-10238), N'M', N'mwhitmire@verizon.net', 1002, 1029, N'mwhitmire');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'13667323', N'Annie', N'', N'Taggart', Administration.SetDateOfBirth(-11436), N'F', N'ataggart@bell.com', 1019, 1020, N'ataggart');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'81494008', N'Christoffer', N'James', N'Bostitch', Administration.SetDateOfBirth(-17723), N'M', N'cbostitch@googlemail.com', 1003, 1017, N'cbostitch');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'42476418', N'Paul', N'Moses', N'Guerra', Administration.SetDateOfBirth(-12508), N'M', N'pguerra@bell.com', 1020, 1011, N'pguerra');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'15319581', N'Louis', N'', N'Bochner', Administration.SetDateOfBirth(-15776), N'M', N'lbochner@bell.com', 1007, 1006, N'lbochner');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'13470973', N'Fred', N'', N'Keller', Administration.SetDateOfBirth(-15595), N'M', N'fkeller@emailcity.com', 1016, 1005, N'fkeller');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'31421180', N'Alex', N'', N'Martinach', Administration.SetDateOfBirth(-14096), N'M', N'amartinach@comcast.net', 1008, 1030, N'amartinach');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'32034263', N'James', N'', N'Stone', Administration.SetDateOfBirth(-12188), N'M', N'jstone@gmail.com', 1009, 1017, N'jstone');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'44511598', N'Lucie', N'Karyn', N'Menard', Administration.SetDateOfBirth(-11941), N'F', N'lmenard@bell.com', 1010, 1006, N'lmenard');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'94645234', N'Bob', N'John', N'Bedelia', Administration.SetDateOfBirth(-17075), N'M', N'bbedelia@bell.com', 1007, 1011, N'bbedelia');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'79074246', N'Catherine', N'', N'Mendelshon', Administration.SetDateOfBirth(-15491), N'F', N'cmendelshon@bell.com', 1008, 1031, N'cmendelshon');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'48490775', N'Bertrand', N'', N'Graff', Administration.SetDateOfBirth(-10544), N'M', N'bgraff@bell.com', 1008, 1031, N'bgraff');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'33480649', N'Jaquelyne', N'Lucie', N'Arrantes', Administration.SetDateOfBirth(-10258), N'F', N'jarrantes@bell.com', 1010, 1027, N'jarrantes');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'70821169', N'William', N'', N'Black', Administration.SetDateOfBirth(-12769), N'M', N'wblack@gmail.com', 1002, 1017, N'wblack');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'72262434', N'Michael', N'', N'Hillerman', Administration.SetDateOfBirth(-10660), N'M', N'mhillerman@mailman.com', 1013, 1023, N'mhillerman');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'27191368', N'Deborah', N'', N'Loggins', Administration.SetDateOfBirth(-11479), N'F', N'dloggins@bell.com', 1001, 1012, N'dloggins');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'27844725', N'Diana', N'', N'Jackson', Administration.SetDateOfBirth(-10035), N'F', N'djackson@bell.com', 1007, 1015, N'djackson');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'25085230', N'Anthony', N'John', N'Kaan', Administration.SetDateOfBirth(-16294), N'M', N'akaan@verizon.net', 1004, 1021, N'akaan');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'91930049', N'Madeleine', N'', N'Mulaney', Administration.SetDateOfBirth(-11401), N'F', N'mmulaney@bell.com', 1001, 1013, N'mmulaney');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'95311244', N'Virginia', N'', N'Franklin', Administration.SetDateOfBirth(-7571), N'F', N'vfranklin@yahoo.com', 1005, 1006, N'vfranklin');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'25519939', N'Joelle', N'', N'Khan', Administration.SetDateOfBirth(-10975), N'F', N'jkhan@googlemail.com', 1010, 1021, N'jkhan');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'97579552', N'Gary', N'', N'Ross', Administration.SetDateOfBirth(-17572), N'M', N'gross@emailcity.com', 1004, 1013, N'gross');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'71990476', N'Hope', N'', N'Brien', Administration.SetDateOfBirth(-16225), N'F', N'hbrien@emailcity.com', 1014, 1028, N'hbrien');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'58926440', N'Benny', N'Georgia', N'Rhoads', Administration.SetDateOfBirth(-16114), N'F', N'brhoads@bell.com', 1006, 1031, N'brhoads');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'19768742', N'Paul', N'', N'August', Administration.SetDateOfBirth(-10611), N'M', N'paugust@yahoo.com', 1011, 1009, N'paugust');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'89060742', N'Scott', N'', N'Zeitlin', Administration.SetDateOfBirth(-13879), N'M', N'szeitlin@mailman.com', 1019, 1029, N'szeitlin');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'98503028', N'Kenneth', N'Gregory', N'Wright', Administration.SetDateOfBirth(-13344), N'M', N'kwright@mailman.com', 1003, 1031, N'kwright');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'84264806', N'Joseph', N'', N'Burr', Administration.SetDateOfBirth(-16793), N'M', N'jburr@googlemail.com', 1017, 1017, N'jburr');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'55671141', N'Timothy', N'', N'Addy', Administration.SetDateOfBirth(-6986), N'M', N'taddy@gmail.com', 1020, 1021, N'taddy');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'98149965', N'Rosemarie', N'', N'Matthews', Administration.SetDateOfBirth(-12569), N'F', N'rmatthews@bell.com', 1007, 1002, N'rmatthews');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'16688214', N'Victoria', N'', N'White', Administration.SetDateOfBirth(-13471), N'F', N'vwhite@comcast.net', 1015, 1033, N'vwhite');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'65937552', N'Eric', N'', N'Valli', Administration.SetDateOfBirth(-11663), N'M', N'evalli@hotmail.com', 1016, 1004, N'evalli');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'69028807', N'Kevin', N'Jonathan', N'Harrell', Administration.SetDateOfBirth(-13120), N'M', N'kharrell@emailcity.com', 1009, 1021, N'kharrell');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'13630264', N'Alicia', N'', N'Walters', Administration.SetDateOfBirth(-10311), N'F', N'awalters@hotmail.com', 1014, 1005, N'awalters');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'52476354', N'Elizabeth', N'', N'Brian', Administration.SetDateOfBirth(-6649), N'F', N'ebrian@bell.com', 1018, 1010, N'ebrian');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'96344036', N'Venicia', N'', N'Noble', Administration.SetDateOfBirth(-8573), N'F', N'vnoble@gmail.com', 1005, 1022, N'vnoble');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'67153337', N'Oliver', N'', N'Orley', Administration.SetDateOfBirth(-13074), N'M', N'oorley@bell.com', 1003, 1030, N'oorley');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'52288245', N'John', N'Trevor', N'Bergstein', Administration.SetDateOfBirth(-15638), N'M', N'jbergstein@comcast.net', 1003, 1012, N'jbergstein');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'83849695', N'Jacquelinne', N'', N'Holtzmann', Administration.SetDateOfBirth(-11185), N'F', N'jholtzmann@earthlink.net', 1012, 1019, N'jholtzmann');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'99902070', N'Jacob', N'Andrew', N'Blacks', Administration.SetDateOfBirth(-13130), N'M', N'jblacks@emailcity.com', 1008, 1030, N'jblacks');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'94556496', N'David', N'', N'Drey', Administration.SetDateOfBirth(-15152), N'M', N'ddrey@comcast.net', 1001, 1018, N'ddrey');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'79276102', N'Claudia', N'Andrea', N'Blink', Administration.SetDateOfBirth(-7769), N'F', N'cblink@yahoo.com', 1021, 1009, N'cblink');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'87186702', N'Mary', N'Evelyne', N'Wainwright', Administration.SetDateOfBirth(-16534), N'F', N'mwainwright@bell.com', 1009, 1031, N'mwainwright');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'62457400', N'Fandie', N'', N'Levine', Administration.SetDateOfBirth(-7573), N'F', N'flevine@comcast.net', 1012, 1016, N'flevine');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'76794695', N'Micah', N'', N'Danforth', Administration.SetDateOfBirth(-7721), N'M', N'mdanforth@bell.com', 1004, 1031, N'mdanforth');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'84680547', N'Cindie', N'', N'Patrick', Administration.SetDateOfBirth(-7720), N'F', N'cpatrick@hotmail.com', 1010, 1024, N'cpatrick');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'75311046', N'Nancy', N'', N'Delight', Administration.SetDateOfBirth(-6645), N'F', N'ndelight@googlemail.com', 1021, 1012, N'ndelight');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'44905281', N'Gregory', N'', N'Sumner', Administration.SetDateOfBirth(-7497), N'M', N'gsumner@verizon.net', 1015, 1033, N'gsumner');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'32940885', N'Josephine', N'', N'Leary', Administration.SetDateOfBirth(-7744), N'F', N'jleary@googlemail.com', 1014, 1033, N'jleary');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'18437354', N'Paul', N'George', N'Daring', Administration.SetDateOfBirth(-6925), N'M', N'pdaring@earthlink.net', 1021, 1007, N'pdaring');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'32479430', N'Donald', N'Gregg', N'Hurd', Administration.SetDateOfBirth(-7804), N'M', N'dhurd@bell.com', 1010, 1005, N'dhurd');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'24376156', N'Christopher', N'', N'Mullins', Administration.SetDateOfBirth(-6904), N'M', N'cmullins@bell.com', 1020, 1021, N'cmullins');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'21761606', N'William', N'', N'Osborne', Administration.SetDateOfBirth(-7396), N'M', N'wosborne@yahoo.com', 1001, 1025, N'wosborne');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'66225472', N'Randy', N'', N'Guttman', Administration.SetDateOfBirth(-8241), N'M', N'rguttman@bell.com', 1011, 1022, N'rguttman');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'50553435', N'Peter', N'Andrew', N'Cecchinni', Administration.SetDateOfBirth(-8144), N'M', N'pcecchinni@bell.com', 1017, 1017, N'pcecchinni');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'90926559', N'Keith', N'James', N'Willbard', Administration.SetDateOfBirth(-8139), N'M', N'kwillbard@verizon.net', 1011, 1028, N'kwillbard');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'81178788', N'Lois', N'Fannie', N'Fitzerald', Administration.SetDateOfBirth(-8241), N'F', N'lfitzerald@hotmail.com', 1012, 1007, N'lfitzerald');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'53944273', N'Craig', N'', N'Meyers', Administration.SetDateOfBirth(-7551), N'M', N'cmeyers@yahoo.com', 1009, 1013, N'cmeyers');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'81704992', N'Jaqueline', N'', N'Dies', Administration.SetDateOfBirth(-8164), N'F', N'jdies@verizon.net', 1021, 1001, N'jdies');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'35365359', N'Melinda', N'', N'Robertson', Administration.SetDateOfBirth(-7515), N'F', N'mrobertson@earthlink.net', 1015, 1025, N'mrobertson');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'17992879', N'Joel', N'Kevin', N'Simmons', Administration.SetDateOfBirth(-8232), N'M', N'jsimmons@bell.com', 1021, 1021, N'jsimmons');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'56757214', N'Kellie', N'Eva', N'Howell', Administration.SetDateOfBirth(-7793), N'F', N'khowell@earthlink.net', 1003, 1017, N'khowell');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'85240188', N'Jeffrey', N'', N'Kwong', Administration.SetDateOfBirth(-7973), N'M', N'jkwong@bell.com', 1010, 1001, N'jkwong');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'31897935', N'Nancy', N'', N'Criss', Administration.SetDateOfBirth(-7497), N'F', N'ncriss@hotmail.com', 1018, 1017, N'ncriss');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'95136621', N'Laura', N'Andrea', N'Dunston', Administration.SetDateOfBirth(-6590), N'F', N'ldunston@hotmail.com', 1018, 1026, N'ldunston');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'26246673', N'Bobbie', N'', N'Morrison', Administration.SetDateOfBirth(-7068), N'F', N'bmorrison@bell.com', 1016, 1013, N'bmorrison');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'61565082', N'Cindy', N'', N'Vashty', Administration.SetDateOfBirth(-7528), N'F', N'cvashty@gmail.com', 1014, 1027, N'cvashty');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'65368214', N'Catherinne', N'Veronica', N'Welch', Administration.SetDateOfBirth(-6717), N'F', N'cwelch@comcast.net', 1018, 1008, N'cwelch');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'97097837', N'Augustine', N'', N'Springs', Administration.SetDateOfBirth(-7992), N'F', N'asprings@bell.com', 1015, 1011, N'asprings');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'39604257', N'Scott', N'', N'Erglund', Administration.SetDateOfBirth(-7084), N'M', N'serglund@mailman.com', 1008, 1018, N'serglund');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'45651292', N'Gregg', N'Kevin', N'Baldwin', Administration.SetDateOfBirth(-7281), N'M', N'gbaldwin@yahoo.com', 1011, 1002, N'gbaldwin');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'13071073', N'Daniel', N'Alan', N'Young', Administration.SetDateOfBirth(-15895), N'M', N'dyoung@earthlink.net', 1015, 1026, N'dyoung');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'73568665', N'Kate', N'', N'Curtis', Administration.SetDateOfBirth(-12334), N'F', N'kcurtis@verizon.net', 1012, 1021, N'kcurtis');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'61118649', N'Randy', N'', N'Springer', Administration.SetDateOfBirth(-17769), N'M', N'rspringer@bell.com', 1010, 1005, N'rspringer');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'37249054', N'Murielle', N'Sheryl', N'Maruzzo', Administration.SetDateOfBirth(-14794), N'F', N'mmaruzzo@bell.com', 1012, 1025, N'mmaruzzo');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'44472969', N'Richard', N'', N'Belack', Administration.SetDateOfBirth(-14422), N'M', N'rbelack@hotmail.com', 1003, 1014, N'rbelack');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'31901896', N'Lauren', N'', N'James', Administration.SetDateOfBirth(-13283), N'F', N'ljames@hotmail.com', 1008, 1020, N'ljames');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'65167512', N'Nancie', N'', N'Rollenhaggen', Administration.SetDateOfBirth(-17366), N'F', N'nrollenhaggen@bell.com', 1011, 1014, N'nrollenhaggen');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'97657511', N'Dennis', N'', N'Dry', Administration.SetDateOfBirth(-14697), N'M', N'ddry@yahoo.com', 1014, 1024, N'ddry');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'92542497', N'Roger', N'Aaron', N'Lyonne', Administration.SetDateOfBirth(-14832), N'M', N'rlyonne@comcast.net', 1011, 1010, N'rlyonne');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'71294186', N'Brice', N'', N'Greenwood', Administration.SetDateOfBirth(-8750), N'M', N'bgreenwood@bell.com', 1007, 1003, N'bgreenwood');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'38914249', N'Candy', N'', N'Malten', Administration.SetDateOfBirth(-13565), N'F', N'cmalten@verizon.net', 1017, 1015, N'cmalten');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'22615165', N'David', N'', N'Spatscheck', Administration.SetDateOfBirth(-8775), N'M', N'dspatscheck@verizon.net', 1016, 1002, N'dspatscheck');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'93122918', N'Anne', N'', N'Benning', Administration.SetDateOfBirth(-13082), N'F', N'abenning@mailman.com', 1018, 1033, N'abenning');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'48786478', N'John', N'', N'Herrington', Administration.SetDateOfBirth(-13680), N'M', N'jherrington@bell.com', 1003, 1022, N'jherrington');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'91553422', N'Mike', N'Robert', N'Winter', Administration.SetDateOfBirth(-18103), N'M', N'mwinter@gmail.com', 1012, 1030, N'mwinter');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'31657493', N'Katrina', N'Julia', N'Lukas', Administration.SetDateOfBirth(-15860), N'F', N'klukas@verizon.net', 1015, 1006, N'klukas');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'77437398', N'Alfred', N'Fred', N'Bradley', Administration.SetDateOfBirth(-16962), N'M', N'abradley@emailcity.com', 1003, 1003, N'abradley');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'34389608', N'Charles', N'Anthony', N'Reason', Administration.SetDateOfBirth(-8733), N'M', N'creason@verizon.net', 1013, 1010, N'creason');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'13221420', N'Maureen', N'Jane', N'Cobbs', Administration.SetDateOfBirth(-7643), N'F', N'mcobbs@bell.com', 1006, 1006, N'mcobbs');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'29671882', N'Stacey', N'', N'Ofrio', Administration.SetDateOfBirth(-14988), N'F', N'sofrio@hotmail.com', 1001, 1022, N'sofrio');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'63728279', N'Vince', N'', N'Bancillion', Administration.SetDateOfBirth(-16859), N'M', N'vbancillion@comcast.net', 1007, 1001, N'vbancillion');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'88214130', N'Troy', N'Lester', N'Ginn', Administration.SetDateOfBirth(-15016), N'M', N'tginn@gmail.com', 1003, 1025, N'tginn');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'13700411', N'Catherine', N'Christine', N'Copeland', Administration.SetDateOfBirth(-12408), N'F', N'ccopeland@gmail.com', 1018, 1015, N'ccopeland');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'43400188', N'Marielle', N'Anne', N'Povinelly', Administration.SetDateOfBirth(-11594), N'F', N'mpovinelly@emailcity.com', 1001, 1006, N'mpovinelly');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'29216557', N'Kelly', N'', N'Robinson', Administration.SetDateOfBirth(-6961), N'F', N'krobinson@yahoo.com', 1013, 1013, N'krobinson');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'52600070', N'Augustin', N'David', N'Negro', Administration.SetDateOfBirth(-9189), N'M', N'anegro@hotmail.com', 1006, 1003, N'anegro');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'18335472', N'Michael', N'James', N'Close', Administration.SetDateOfBirth(-10219), N'F', N'mclose@comcast.net', 1003, 1030, N'mclose');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'88579707', N'Richard', N'', N'Redd', Administration.SetDateOfBirth(-7552), N'M', N'rredd@bell.com', 1002, 1020, N'rredd');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'51770100', N'Karen', N'Lucie', N'Rankin', Administration.SetDateOfBirth(-7744), N'F', N'krankin@hotmail.com', 1013, 1031, N'krankin');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'84635826', N'Mark', N'', N'Hagerty', Administration.SetDateOfBirth(-9959), N'M', N'mhagerty@hotmail.com', 1012, 1002, N'mhagerty');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'56585713', N'Cathy', N'', N'Brooks', Administration.SetDateOfBirth(-9596), N'F', N'cbrooks@bell.com', 1004, 1001, N'cbrooks');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'90488425', N'Raymond', N'Edward', N'Klugmann', Administration.SetDateOfBirth(-8110), N'M', N'rklugmann@bell.com', 1001, 1025, N'rklugmann');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'19201450', N'Fernand', N'Arnold', N'Baron', Administration.SetDateOfBirth(-8829), N'M', N'fbaron@bell.com', 1021, 1025, N'fbaron');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'36589254', N'Samuel', N'', N'James', Administration.SetDateOfBirth(-6874), N'M', N'sjames@bell.com', 1004, 1030, N'sjames');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'28887482', N'Margareth', N'', N'Comer', Administration.SetDateOfBirth(-8771), N'F', N'mcomer@earthlink.net', 1001, 1018, N'mcomer');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'14372989', N'Robert', N'Richard', N'Degg', Administration.SetDateOfBirth(-7179), N'M', N'rdegg@googlemail.com', 1015, 1029, N'rdegg');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'62634141', N'Vincent', N'', N'Streiss', Administration.SetDateOfBirth(-7315), N'M', N'vstreiss@bell.com', 1008, 1018, N'vstreiss');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'29000894', N'Lilly', N'Jane', N'Woods', Administration.SetDateOfBirth(-9125), N'M', N'lwoods@mailman.com', 1009, 1009, N'lwoods');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'37145239', N'Brunot', N'Andrew', N'Russell', Administration.SetDateOfBirth(-7911), N'M', N'brussell@googlemail.com', 1006, 1003, N'brussell');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'20347598', N'Richie', N'Patrick', N'Ollie', Administration.SetDateOfBirth(-6767), N'M', N'rollie@comcast.net', 1018, 1006, N'rollie');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'64702716', N'Frank', N'', N'Alton', Administration.SetDateOfBirth(-8347), N'M', N'falton@bell.com', 1012, 1025, N'falton');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'82686603', N'Henry', N'', N'Donahue', Administration.SetDateOfBirth(-9517), N'M', N'hdonahue@comcast.net', 1008, 1025, N'hdonahue');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'33486419', N'Kimberley', N'', N'Minarch', Administration.SetDateOfBirth(-6676), N'F', N'kminarch@bell.com', 1021, 1025, N'kminarch');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'11598273', N'James', N'Peter', N'Blaustein', Administration.SetDateOfBirth(-6910), N'M', N'jblaustein@bell.com', 1021, 1030, N'jblaustein');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'74615576', N'Gary', N'William', N'Coughlin', Administration.SetDateOfBirth(-9005), N'M', N'gcoughlin@yahoo.com', 1021, 1025, N'gcoughlin');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'22309462', N'William', N'Philippe', N'Bliss', Administration.SetDateOfBirth(-7549), N'M', N'wbliss@hotmail.com', 1003, 1024, N'wbliss');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'58004713', N'Esther', N'', N'Friedrich', Administration.SetDateOfBirth(-9892), N'F', N'efriedrich@yahoo.com', 1005, 1003, N'efriedrich');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'34307206', N'Jerry', N'', N'Hernandez', Administration.SetDateOfBirth(-7352), N'M', N'jhernandez@earthlink.net', 1020, 1026, N'jhernandez');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'16718418', N'Rosemarie', N'Veronica', N'Walker', Administration.SetDateOfBirth(-6665), N'F', N'rwalker@bell.com', 1019, 1027, N'rwalker');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'47759733', N'Augustinne', N'Sylvie', N'Caruso', Administration.SetDateOfBirth(-7481), N'F', N'acaruso@bell.com', 1003, 1007, N'acaruso');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'82845723', N'Loren', N'', N'Qualls', Administration.SetDateOfBirth(-8346), N'F', N'lqualls@googlemail.com', 1013, 1031, N'lqualls');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'13226339', N'Ray', N'', N'Bartlett', Administration.SetDateOfBirth(-7806), N'M', N'rbartlett@googlemail.com', 1016, 1020, N'rbartlett');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'21050936', N'Mark', N'', N'Nukalo', Administration.SetDateOfBirth(-8237), N'M', N'mnukalo@mailman.com', 1019, 1013, N'mnukalo');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'93429168', N'Pamela', N'', N'Keulen', Administration.SetDateOfBirth(-8005), N'F', N'pkeulen@bell.com', 1002, 1016, N'pkeulen');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'63160801', N'Bernardette', N'Julie', N'Bride', Administration.SetDateOfBirth(-7076), N'F', N'bbride@bell.com', 1004, 1028, N'bbride');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'75148692', N'Todd', N'James', N'Cartwright', Administration.SetDateOfBirth(-8052), N'M', N'tcartwright@bell.com', 1009, 1002, N'tcartwright');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'17288484', N'Kurt', N'Andrew', N'Severn', Administration.SetDateOfBirth(-8158), N'M', N'ksevern@yahoo.com', 1016, 1016, N'ksevern');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'41608915', N'Russ', N'Luke', N'Cooper', Administration.SetDateOfBirth(-6734), N'M', N'rcooper@bell.com', 1001, 1006, N'rcooper');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'82465411', N'Heydie', N'Rebeccah', N'Simpson', Administration.SetDateOfBirth(-8388), N'F', N'hsimpson@yahoo.com', 1012, 1027, N'hsimpson');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'20194502', N'Judith', N'', N'Harris', Administration.SetDateOfBirth(-6733), N'F', N'jharris@gmail.com', 1010, 1002, N'jharris');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'61942540', N'Ann', N'', N'Appers', Administration.SetDateOfBirth(-8000), N'F', N'aappers@bell.com', 1004, 1025, N'aappers');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'56053006', N'Catherine', N'Paulette', N'Povre', Administration.SetDateOfBirth(-7889), N'F', N'cpovre@gmail.com', 1004, 1011, N'cpovre');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'52283857', N'Raymond', N'', N'Herrington', Administration.SetDateOfBirth(-7411), N'M', N'rherrington@hotmail.com', 1005, 1028, N'rherrington');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'55765415', N'Paul', N'Frederick', N'Charboneau', Administration.SetDateOfBirth(-7395), N'M', N'pcharboneau@bell.com', 1021, 1027, N'pcharboneau');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'22461455', N'Scott', N'Andrew', N'McBride', Administration.SetDateOfBirth(-8308), N'M', N'smcbride@bell.com', 1018, 1006, N'smcbride');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'14808741', N'Karin', N'', N'Fernandez', Administration.SetDateOfBirth(-7983), N'F', N'kfernandez@yahoo.com', 1010, 1009, N'kfernandez');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'15852067', N'Kimberly', N'Susie', N'Bess', Administration.SetDateOfBirth(-8161), N'F', N'kbess@bell.com', 1015, 1018, N'kbess');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'78309323', N'Mary', N'Patricia', N'Beardsley', Administration.SetDateOfBirth(-6972), N'F', N'mbeardsley@bell.com', 1002, 1017, N'mbeardsley');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'54042691', N'George', N'Bernard', N'Reedies', Administration.SetDateOfBirth(-6929), N'M', N'greedies@comcast.net', 1010, 1001, N'greedies');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'65426483', N'Bradley', N'', N'Malone', Administration.SetDateOfBirth(-6749), N'M', N'bmalone@yahoo.com', 1004, 1023, N'bmalone');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'56931880', N'Michael', N'', N'Molina', Administration.SetDateOfBirth(-8316), N'M', N'mmolina@comcast.net', 1018, 1031, N'mmolina');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'77033311', N'Joseph', N'', N'Pattinson', Administration.SetDateOfBirth(-7273), N'M', N'jpattinson@bell.com', 1001, 1028, N'jpattinson');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'35815827', N'Frank', N'', N'Bolanga', Administration.SetDateOfBirth(-7761), N'M', N'fbolanga@comcast.net', 1020, 1009, N'fbolanga');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'93877201', N'Bill', N'', N'Lopez', Administration.SetDateOfBirth(-11583), N'M', N'blopez@comcast.net', 1002, 1025, N'blopez');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'16270824', N'Kevin', N'John', N'Wayne', Administration.SetDateOfBirth(-13859), N'M', N'kwayne@gmail.com', 1018, 1010, N'kwayne');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'18103762', N'Anne', N'', N'Garber', Administration.SetDateOfBirth(-11818), N'F', N'agarber@bell.com', 1019, 1020, N'agarber');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'80588272', N'Bernard', N'', N'Sobol', Administration.SetDateOfBirth(-15669), N'M', N'bsobol@bell.com', 1015, 1004, N'bsobol');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'55814623', N'Natalia', N'', N'Gray', Administration.SetDateOfBirth(-9323), N'F', N'ngray@yahoo.com', 1013, 1015, N'ngray');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'96658216', N'Gary', N'Antoine', N'Gilman', Administration.SetDateOfBirth(-15656), N'M', N'ggilman@bell.com', 1004, 1017, N'ggilman');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'41429654', N'Keith', N'', N'Stamp', Administration.SetDateOfBirth(-16494), N'M', N'kstamp@googlemail.com', 1021, 1015, N'kstamp');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'83327224', N'Michelle', N'Rosa', N'Sawyers', Administration.SetDateOfBirth(-10280), N'F', N'msawyers@emailcity.com', 1005, 1017, N'msawyers');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'80612431', N'Karynne', N'Lucy', N'White', Administration.SetDateOfBirth(-8197), N'F', N'kwhite@bell.com', 1002, 1016, N'kwhite');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'41200693', N'Nancy', N'', N'Downs', Administration.SetDateOfBirth(-16633), N'F', N'ndowns@bell.com', 1016, 1023, N'ndowns');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'76102341', N'Mark', N'', N'Arsau', Administration.SetDateOfBirth(-10566), N'M', N'marsau@bell.com', 1010, 1030, N'marsau');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'16647768', N'Richard', N'', N'Bailey', Administration.SetDateOfBirth(-18038), N'M', N'rbailey@bell.com', 1020, 1018, N'rbailey');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'75880477', N'Heidy', N'Gabrielle', N'Jones', Administration.SetDateOfBirth(-12907), N'F', N'hjones@verizon.net', 1012, 1002, N'hjones');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'61399249', N'Natalie', N'Veronica', N'Barton', Administration.SetDateOfBirth(-10197), N'F', N'nbarton@comcast.net', 1013, 1030, N'nbarton');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'21520514', N'Christopher', N'James', N'Norman', Administration.SetDateOfBirth(-7504), N'M', N'cnorman@comcast.net', 1017, 1005, N'cnorman');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'49205065', N'Martin', N'', N'Greens', Administration.SetDateOfBirth(-6846), N'M', N'mgreens@bell.com', 1019, 1028, N'mgreens');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'38262803', N'Jay', N'', N'Boswich', Administration.SetDateOfBirth(-15882), N'M', N'jboswich@yahoo.com', 1007, 1030, N'jboswich');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'86039852', N'Steve', N'', N'Manegold', Administration.SetDateOfBirth(-10917), N'M', N'smanegold@bell.com', 1015, 1028, N'smanegold');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'48128031', N'John', N'', N'Baruch', Administration.SetDateOfBirth(-16532), N'M', N'jbaruch@earthlink.net', 1002, 1003, N'jbaruch');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'90012787', N'Frank', N'Gabriel', N'Saunders', Administration.SetDateOfBirth(-15312), N'M', N'fsaunders@comcast.net', 1015, 1028, N'fsaunders');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'71213424', N'James', N'Philippe', N'Clays', Administration.SetDateOfBirth(-14686), N'M', N'jclays@bell.com', 1015, 1029, N'jclays');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'73321046', N'Eric', N'Luke', N'Willingham', Administration.SetDateOfBirth(-17771), N'M', N'ewillingham@hotmail.com', 1021, 1030, N'ewillingham');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'86779767', N'Annie', N'', N'Pinsky', Administration.SetDateOfBirth(-10087), N'F', N'apinsky@yahoo.com', 1001, 1010, N'apinsky');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'57018218', N'Amanda', N'Lucie', N'Waters', Administration.SetDateOfBirth(-17133), N'F', N'awaters@bell.com', 1010, 1007, N'awaters');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'23607619', N'Jennifer', N'', N'Abiatti', Administration.SetDateOfBirth(-13041), N'F', N'jabiatti@verizon.net', 1005, 1024, N'jabiatti');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'23884042', N'Kim', N'Helene', N'Dwyer', Administration.SetDateOfBirth(-9440), N'F', N'kdwyer@emailcity.com', 1007, 1007, N'kdwyer');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'32668650', N'Barbara', N'', N'Wisdom', Administration.SetDateOfBirth(-11745), N'F', N'bwisdom@comcast.net', 1003, 1012, N'bwisdom');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'32658213', N'Rose', N'', N'Ribeiro', Administration.SetDateOfBirth(-8392), N'F', N'rribeiro@bell.com', 1021, 1009, N'rribeiro');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'17795852', N'Jeffrey', N'Paul', N'Winnick', Administration.SetDateOfBirth(-16567), N'M', N'jwinnick@hotmail.com', 1015, 1027, N'jwinnick');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'48004791', N'Peggy', N'', N'Edmora', Administration.SetDateOfBirth(-13278), N'F', N'pedmora@bell.com', 1013, 1017, N'pedmora');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'48512596', N'Brianna', N'Gretchen', N'Boland', Administration.SetDateOfBirth(-10776), N'F', N'bboland@googlemail.com', 1008, 1021, N'bboland');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'28641351', N'Kenneth', N'', N'Pedersen', Administration.SetDateOfBirth(-12728), N'M', N'kpedersen@gmail.com', 1018, 1014, N'kpedersen');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'46214817', N'Nicole', N'Susie', N'Rhys', Administration.SetDateOfBirth(-10790), N'F', N'nrhys@bell.com', 1008, 1014, N'nrhys');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'69631417', N'Simonne', N'', N'Alvaro', Administration.SetDateOfBirth(-12186), N'F', N'salvaro@bell.com', 1004, 1031, N'salvaro');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'91133889', N'Nickie', N'', N'Styles', Administration.SetDateOfBirth(-11210), N'F', N'nstyles@emailcity.com', 1019, 1019, N'nstyles');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'69130779', N'Raymond', N'', N'Cerami', Administration.SetDateOfBirth(-7917), N'M', N'rcerami@comcast.net', 1019, 1024, N'rcerami');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'57282127', N'Ronald', N'', N'Butler', Administration.SetDateOfBirth(-10218), N'M', N'rbutler@earthlink.net', 1006, 1017, N'rbutler');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'60469055', N'Nathan', N'Ezekiel', N'Goods', Administration.SetDateOfBirth(-14257), N'M', N'ngoods@comcast.net', 1020, 1007, N'ngoods');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'76537334', N'Glen', N'', N'Batton', Administration.SetDateOfBirth(-16271), N'M', N'gbatton@yahoo.com', 1017, 1009, N'gbatton');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'58968782', N'Carlos', N'David', N'Hendricks', Administration.SetDateOfBirth(-10478), N'M', N'chendricks@bell.com', 1006, 1021, N'chendricks');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'88847357', N'Jason', N'', N'Atkinson', Administration.SetDateOfBirth(-16677), N'M', N'jatkinson@verizon.net', 1001, 1004, N'jatkinson');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'96506505', N'April', N'', N'Welsh', Administration.SetDateOfBirth(-15739), N'F', N'awelsh@bell.com', 1021, 1029, N'awelsh');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'12974473', N'Iliana', N'Rosalina', N'Ayad', Administration.SetDateOfBirth(-9122), N'F', N'iayad@comcast.net', 1016, 1005, N'iayad');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'67170496', N'Harold', N'', N'Babcock', Administration.SetDateOfBirth(-6678), N'M', N'hbabcock@yahoo.com', 1019, 1023, N'hbabcock');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'88185933', N'Peggie', N'Veronica', N'Thomas', Administration.SetDateOfBirth(-14915), N'F', N'pthomas@bell.com', 1007, 1013, N'pthomas');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'20273604', N'Eugene', N'', N'Heller', Administration.SetDateOfBirth(-17744), N'M', N'eheller@bell.com', 1020, 1001, N'eheller');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'50601510', N'Stephen', N'', N'Neto', Administration.SetDateOfBirth(-11625), N'M', N'sneto@verizon.net', 1011, 1013, N'sneto');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'27373646', N'Paul', N'', N'Fraser', Administration.SetDateOfBirth(-13574), N'M', N'pfraser@mailman.com', 1003, 1004, N'pfraser');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'17906467', N'Randy', N'Alphonse', N'Battini', Administration.SetDateOfBirth(-17111), N'M', N'rbattini@hotmail.com', 1005, 1019, N'rbattini');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'42132916', N'Julian', N'', N'Naughton', Administration.SetDateOfBirth(-6634), N'M', N'jnaughton@bell.com', 1004, 1018, N'jnaughton');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'28797538', N'Laurie', N'Lucie', N'Fenton', Administration.SetDateOfBirth(-15117), N'F', N'lfenton@bell.com', 1014, 1014, N'lfenton');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'22680550', N'James', N'Andrew', N'Argawal', Administration.SetDateOfBirth(-9485), N'M', N'jargawal@bell.com', 1018, 1019, N'jargawal');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'12012774', N'Michael', N'James', N'Krishnan', Administration.SetDateOfBirth(-9136), N'M', N'mkrishnan@comcast.net', 1002, 1016, N'mkrishnan');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'44080142', N'Catherine', N'Debbie', N'Anderson', Administration.SetDateOfBirth(-7515), N'F', N'canderson@yahoo.com', 1007, 1004, N'canderson');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'11010603', N'Frank', N'', N'Bummell', Administration.SetDateOfBirth(-10777), N'M', N'fbummell@earthlink.net', 1007, 1022, N'fbummell');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'48006556', N'Nicole', N'Jasmine', N'Conklin', Administration.SetDateOfBirth(-8493), N'F', N'nconklin@bell.com', 1003, 1012, N'nconklin');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'94885538', N'Peter', N'', N'Codd', Administration.SetDateOfBirth(-8169), N'M', N'pcodd@bell.com', 1017, 1025, N'pcodd');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'54973300', N'Ilianna', N'Jennie', N'Mann', Administration.SetDateOfBirth(-7886), N'F', N'imann@bell.com', 1019, 1007, N'imann'),
      (N'83480485', N'Juan', N'Laeticia', N'Burdis', Administration.SetDateOfBirth(-10597), N'M', N'jburdis@bell.com', 1010, 1003, N'jburdis'),
      (N'24234677', N'Leonard', N'David', N'Wong', Administration.SetDateOfBirth(-9987), N'M', N'lwong@emailcity.com', 1002, 1017, N'lwong'),
      (N'71437043', N'Christopher', N'James', N'Bayer', Administration.SetDateOfBirth(-10476), N'M', N'cbayer@emailcity.com', 1012, 1021, N'cbayer'),
      (N'73412336', N'Nora', N'Lucia', N'Kemp', Administration.SetDateOfBirth(-10624), N'F', N'nkemp@gmail.com', 1012, 1003, N'nkemp'),
      (N'58805885', N'Lilie', N'Roberta', N'Dearden', Administration.SetDateOfBirth(-11209), N'F', N'ldearden@googlemail.com', 1020, 1020, N'ldearden');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'25240891', N'Antonis', N'', N'Asari', Administration.SetDateOfBirth(-6685), N'M', N'aasari@hotmail.com', 1020, 1013, N'aasari');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'90336220', N'Judith', N'Marthe', N'Petersen', Administration.SetDateOfBirth(-11807), N'F', N'jpetersen@comcast.net', 1002, 1029, N'jpetersen');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'45088542', N'Conny', N'', N'Bieri', Administration.SetDateOfBirth(-7183), N'F', N'cbieri@googlemail.com', 1009, 1020, N'cbieri');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'60786088', N'Agnes', N'Roberta', N'Hellers', Administration.SetDateOfBirth(-8285), N'F', N'ahellers@emailcity.com', 1005, 1012, N'ahellers');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'82148095', N'June', N'Allison', N'Kuprin', Administration.SetDateOfBirth(-9946), N'F', N'jkuprin@bell.com', 1018, 1014, N'jkuprin');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'94097741', N'Darren', N'', N'Rhies', Administration.SetDateOfBirth(-10192), N'M', N'drhies@bell.com', 1003, 1013, N'drhies');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'96810534', N'Karyn', N'Gretchen', N'Shing', Administration.SetDateOfBirth(-10351), N'F', N'kshing@mailman.com', 1014, 1029, N'kshing');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'84369185', N'Joe', N'', N'Siberski', Administration.SetDateOfBirth(-11269), N'M', N'jsiberski@yahoo.com', 1021, 1019, N'jsiberski');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'75756057', N'Robert', N'Lester', N'Miers', Administration.SetDateOfBirth(-10536), N'M', N'rmiers@earthlink.net', 1005, 1027, N'rmiers');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'93318025', N'Shaya', N'', N'Kumar', Administration.SetDateOfBirth(-9412), N'F', N'skumar@emailcity.com', 1004, 1004, N'skumar');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'70902367', N'Lynda', N'Fanny', N'Cristensen', Administration.SetDateOfBirth(-7750), N'F', N'lcristensen@gmail.com', 1018, 1017, N'lcristensen');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'87076952', N'Harry', N'', N'Greenes', Administration.SetDateOfBirth(-11304), N'M', N'hgreenes@bell.com', 1007, 1016, N'hgreenes');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'34688610', N'Julie', N'Veronica', N'Baldwynn', Administration.SetDateOfBirth(-11995), N'F', N'jbaldwynn@yahoo.com', 1014, 1008, N'jbaldwynn');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'71973343', N'Nicolette', N'', N'Spriggs', Administration.SetDateOfBirth(-13663), N'F', N'nspriggs@bell.com', 1002, 1021, N'nspriggs');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'52421474', N'Catherinne', N'Sylvia', N'Newcomer', Administration.SetDateOfBirth(-8477), N'F', N'cnewcomer@googlemail.com', 1006, 1002, N'cnewcomer');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'53834640', N'David', N'', N'Blake', Administration.SetDateOfBirth(-17167), N'M', N'dblake@bell.com', 1018, 1010, N'dblake');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'89077973', N'Harry', N'', N'Wolfe', Administration.SetDateOfBirth(-16395), N'M', N'hwolfe@earthlink.net', 1008, 1016, N'hwolfe');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'12391295', N'Matthew', N'Jeremy', N'Higgins', Administration.SetDateOfBirth(-10243), N'M', N'mhiggins@bell.com', 1021, 1023, N'mhiggins');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'82718323', N'Mark', N'Isidore', N'Blakeman', Administration.SetDateOfBirth(-17360), N'M', N'mblakeman@bell.com', 1007, 1007, N'mblakeman');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'59553463', N'Peter', N'', N'Ritchy', Administration.SetDateOfBirth(-9735), N'M', N'pritchy@yahoo.com', 1001, 1024, N'pritchy');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'66555848', N'Aaron', N'', N'Clauder', Administration.SetDateOfBirth(-17394), N'M', N'aclauder@bell.com', 1008, 1031, N'aclauder');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'34380689', N'Kelly', N'Brenda', N'Hall', Administration.SetDateOfBirth(-14703), N'F', N'khall@bell.com', 1012, 1033, N'khall');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'32657770', N'Peter', N'Paul', N'Herniack', Administration.SetDateOfBirth(-7040), N'M', N'pherniack@bell.com', 1007, 1023, N'pherniack');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'39944308', N'David', N'', N'Cox', Administration.SetDateOfBirth(-6758), N'M', N'dcox@yahoo.com', 1007, 1021, N'dcox');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'25644470', N'Terence', N'', N'Bell', Administration.SetDateOfBirth(-7007), N'M', N'tbell@mailman.com', 1020, 1022, N'tbell');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'43057602', N'Lucie', N'', N'Dogherty', Administration.SetDateOfBirth(-6607), N'F', N'ldogherty@comcast.net', 1015, 1025, N'ldogherty');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'56272432', N'Samuel', N'Aaron', N'Newborn', Administration.SetDateOfBirth(-7010), N'F', N'snewborn@bell.com', 1012, 1023, N'snewborn');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'86074922', N'Roberto', N'', N'Banagos', Administration.SetDateOfBirth(-6940), N'M', N'rbanagos@bell.com', 1002, 1020, N'rbanagos');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'27044715', N'Bobbie', N'Marcelline', N'Heskey', Administration.SetDateOfBirth(-6848), N'F', N'bheskey@gmail.com', 1001, 1029, N'bheskey');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'27853790', N'Horace', N'', N'Andreovski', Administration.SetDateOfBirth(-6595), N'F', N'handreovski@comcast.net', 1009, 1024, N'handreovski');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'29565572', N'Alan', N'Gary', N'Broder', Administration.SetDateOfBirth(-7076), N'F', N'abroder@bell.com', 1007, 1009, N'abroder');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'75456480', N'Stan', N'', N'Gehrke', Administration.SetDateOfBirth(-6884), N'F', N'sgehrke@bell.com', 1008, 1003, N'sgehrke');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'54186088', N'Steve', N'', N'Fairbairn', Administration.SetDateOfBirth(-6746), N'F', N'sfairbairn@bell.com', 1013, 1014, N'sfairbairn');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'86416833', N'David', N'', N'Meersbergen', Administration.SetDateOfBirth(-6708), N'M', N'dmeersbergen@hotmail.com', 1001, 1008, N'dmeersbergen');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'12782461', N'Donah', N'Goldie', N'Pays', Administration.SetDateOfBirth(-6705), N'F', N'dpays@gmail.com', 1004, 1019, N'dpays');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'48971879', N'Clarence', N'', N'Greens', Administration.SetDateOfBirth(-6924), N'M', N'cgreens@hotmail.com', 1010, 1020, N'cgreens');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'26686584', N'Peter', N'', N'Paoly', Administration.SetDateOfBirth(-6589), N'M', N'ppaoly@verizon.net', 1013, 1027, N'ppaoly');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'52713675', N'Douglas', N'', N'Friedrich', Administration.SetDateOfBirth(-14011), N'M', N'dfriedrich@bell.com', 1020, 1013, N'dfriedrich');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'18235949', N'Dennis', N'James', N'Laeton', Administration.SetDateOfBirth(-9567), N'M', N'dlaeton@bell.com', 1010, 1019, N'dlaeton');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'86915598', N'Linda', N'Jessica', N'Green', Administration.SetDateOfBirth(-13769), N'F', N'lgreen@yahoo.com', 1004, 1012, N'lgreen');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'66389105', N'Susie', N'Lucie', N'Ching', Administration.SetDateOfBirth(-6822), N'F', N'sching@emailcity.com', 1020, 1013, N'sching');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'21212253', N'Gloria', N'Rebeccah', N'Isgar', Administration.SetDateOfBirth(-11516), N'F', N'gisgar@bell.com', 1004, 1027, N'gisgar');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'95777154', N'Anthony', N'', N'Jacobs', Administration.SetDateOfBirth(-12347), N'M', N'ajacobs@bell.com', 1014, 1020, N'ajacobs');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'29549233', N'Saul', N'', N'Barber', Administration.SetDateOfBirth(-16896), N'M', N'sbarber@bell.com', 1014, 1027, N'sbarber');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'67955704', N'Emilie', N'Eugenie', N'Pieven', Administration.SetDateOfBirth(-13251), N'F', N'epieven@gmail.com', 1014, 1005, N'epieven');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'95674378', N'Marianne', N'Roberta', N'Ritchie', Administration.SetDateOfBirth(-7567), N'F', N'mritchie@gmail.com', 1003, 1012, N'mritchie');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'12006439', N'Roberta', N'', N'Paz', Administration.SetDateOfBirth(-17360), N'F', N'rpaz@hotmail.com', 1007, 1031, N'rpaz');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'29264797', N'Denise', N'Annette', N'Olech', Administration.SetDateOfBirth(-16609), N'F', N'dolech@googlemail.com', 1018, 1022, N'dolech');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'86944573', N'Holly', N'Faith', N'Briscoe', Administration.SetDateOfBirth(-14928), N'F', N'hbriscoe@yahoo.com', 1002, 1008, N'hbriscoe');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'13182178', N'Edward', N'', N'Sheng', Administration.SetDateOfBirth(-7039), N'M', N'esheng@earthlink.net', 1013, 1015, N'esheng');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'51422430', N'Glen', N'', N'Favilla', Administration.SetDateOfBirth(-6784), N'M', N'gfavilla@googlemail.com', 1016, 1026, N'gfavilla');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'96098589', N'Peggy', N'', N'Chang', Administration.SetDateOfBirth(-6969), N'F', N'pchang@bell.com', 1009, 1029, N'pchang');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'86358877', N'Connie', N'Judith', N'Hudson', Administration.SetDateOfBirth(-6834), N'F', N'chudson@yahoo.com', 1017, 1011, N'chudson');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'81269473', N'Lucy', N'', N'Otto', Administration.SetDateOfBirth(-6722), N'F', N'lotto@mailman.com', 1012, 1019, N'lotto');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'27499759', N'John', N'Danny', N'Halsey', Administration.SetDateOfBirth(-6805), N'M', N'jhalsey@hotmail.com', 1010, 1012, N'jhalsey');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'89984078', N'Mark', N'Gary', N'Hung', Administration.SetDateOfBirth(-6583), N'M', N'mhung@bell.com', 1008, 1023, N'mhung');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'63365826', N'Peter', N'', N'Houghton', Administration.SetDateOfBirth(-6994), N'M', N'phoughton@bell.com', 1014, 1024, N'phoughton');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'80901746', N'Hank', N'', N'Green', Administration.SetDateOfBirth(-6751), N'M', N'hgreen@gmail.com', 1011, 1012, N'hgreen');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'63471864', N'Raymond', N'Mark', N'Chance', Administration.SetDateOfBirth(-6995), N'M', N'rchance@bell.com', 1018, 1023, N'rchance');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'91171547', N'Richard', N'', N'Pavlidis', Administration.SetDateOfBirth(-6917), N'M', N'rpavlidis@gmail.com', 1017, 1013, N'rpavlidis');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'54582044', N'Karen', N'Vicky', N'Segal', Administration.SetDateOfBirth(-7024), N'F', N'ksegal@hotmail.com', 1011, 1015, N'ksegal');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'76066736', N'Sandrine', N'Emilienne', N'Naylor', Administration.SetDateOfBirth(-6781), N'F', N'snaylor@emailcity.com', 1009, 1021, N'snaylor');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'20097260', N'David', N'', N'Godenzi', Administration.SetDateOfBirth(-6677), N'M', N'dgodenzi@gmail.com', 1016, 1023, N'dgodenzi');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'23290274', N'Rachel', N'', N'Cake', Administration.SetDateOfBirth(-6650), N'F', N'rcake@bell.com', 1010, 1027, N'rcake');
GO
INSERT INTO Admissions.UndergraduateStudents(StudentNumber, FirstName, MiddleName, LastName, BirthDate, Gender, EmailAddress, MajorID, MinorID, Username)
VALUES(N'37070916', N'Lindsay', N'Judith', N'Hinston', Administration.SetDateOfBirth(-6871), N'F', N'lhinston@bell.com', 1013, 1022, N'lhinston'),
      (N'31744344', N'Veronica', N'Francesca', N'Perez', Administration.SetDateOfBirth(-6836), N'F', N'vperez@verizon.net', 1021, 1011, N'vperez'),
      (N'91919499', N'Fanny', N'Justine', N'Sedgman', Administration.SetDateOfBirth(-6576), N'F', N'fsedgman@comcast.net', 1001, 1005, N'fsedgman'),
      (N'41810884', N'Samuel', N'David', N'Devant', Administration.SetDateOfBirth(-7701), N'M', N'sdevant@comcast.net', 1008, 1027, N'sdevant'),
      (N'50852494', N'Emile', N'David', N'Clymont', Administration.SetDateOfBirth(-7112), N'M', N'eclymont@bell.com', 1007, 1023, N'eclymont');
GO
------------------------------------------------------------------------------------
INSERT INTO Catalogs.UndergraduateSchedules(UndergraduateScheduleID, SemesterID, StartDate, EndDate, TeacherNumber, CourseCode, CourseDeliveryTypeCode, LocationCode)
VALUES(NEXT VALUE FOR SeqSchedules, 101, N'20120109', N'20120205', N'820384', N'LBRS 100', N'L', N'ONLNE'),
	  (NEXT VALUE FOR SeqSchedules, 101, N'20120109', N'20120205', N'979384', N'LBRS 100', N'L', N'ONLNE'),
	  (NEXT VALUE FOR SeqSchedules, 101, N'20120109', N'20120205', N'447406', N'LBRS 100', N'L', N'ONLNE'),
	  (NEXT VALUE FOR SeqSchedules, 101, N'20120109', N'20120205', N'639482', N'LBRS 100', N'L', N'ONLNE'),
	  (NEXT VALUE FOR SeqSchedules, 101, N'20120109', N'20120205', N'920747', N'LBRS 100', N'L', N'ONLNE'),
	  (NEXT VALUE FOR SeqSchedules, 101, N'20120213', N'20120311', N'979384', N'LBRS 100', N'L', N'ONLNE'),
	  (NEXT VALUE FOR SeqSchedules, 101, N'20120213', N'20120311', N'820384', N'LBRS 100', N'L', N'ONLNE'),
	  (NEXT VALUE FOR SeqSchedules, 101, N'20120213', N'20120311', N'447406', N'LBRS 100', N'L', N'ONLNE'),
	  (NEXT VALUE FOR SeqSchedules, 101, N'20120213', N'20120311', N'639482', N'LBRS 100', N'L', N'ONLNE');
GO
INSERT INTO Catalogs.UndergraduateSchedules(UndergraduateScheduleID, SemesterID, StartDate, EndDate, StartTime, EndTime, Weekdays, TeacherNumber, CourseCode, CourseDeliveryTypeCode, LocationCode, RoomNumber)
VALUES(NEXT VALUE FOR SeqSchedules, 101, N'20120109', N'20120318', N'08:15', N'10:10', N'M-W', N'293804', N'WRTG 101', N'F', N'LATAC', N'204'),
	  (NEXT VALUE FOR SeqSchedules, 101, N'20120109', N'20120318', N'10:25', N'12:20', N'M-W', N'293804', N'WRTG 101', N'F', N'LATAC', N'104'),
	  (NEXT VALUE FOR SeqSchedules, 101, N'20120109', N'20120318', N'15:35', N'17:30', N'M-W', N'293804', N'WRTG 101', N'F', N'LATAC', N'204'),
	  (NEXT VALUE FOR SeqSchedules, 101, N'20120109', N'20120226', N'08:15', N'10:10', N'M-W-F', N'293804', N'WRTG 101', N'F', N'LATAC', N'102'),
	  (NEXT VALUE FOR SeqSchedules, 101, N'20120109', N'20120226', N'10:25', N'12:20', N'M-W-F', N'293804', N'WRTG 101', N'F', N'LATAC', N'102'),
	  (NEXT VALUE FOR SeqSchedules, 101, N'20120109', N'20120226', N'08:15', N'10:10', N'M-W-F', N'972940', N'WRTG 101', N'F', N'LATAC', N'106'),
	  (NEXT VALUE FOR SeqSchedules, 101, N'20120109', N'20120226', N'10:25', N'12:20', N'M-W-F', N'972940', N'WRTG 101', N'F', N'LATAC', N'108'),
	  (NEXT VALUE FOR SeqSchedules, 101, N'20120109', N'20120318', N'10:25', N'12:20', N'M-W', N'520203', N'MATH 106', N'F', N'LATAC', N'102'),
	  (NEXT VALUE FOR SeqSchedules, 101, N'20120109', N'20120318', N'08:15', N'10:10', N'T-H', N'520203', N'MATH 106', N'F', N'LATAC', N'104'),
	  (NEXT VALUE FOR SeqSchedules, 101, N'20120109', N'20120318', N'13:25', N'15:20', N'T-H', N'640840', N'MATH 106', N'F', N'LATAC', N'106'),
	  (NEXT VALUE FOR SeqSchedules, 101, N'20120109', N'20120318', N'10:25', N'12:20', N'T-H', N'520203', N'MATH 106', N'F', N'LATAC', N'104'),
	  (NEXT VALUE FOR SeqSchedules, 101, N'20120109', N'20120318', N'08:15', N'10:10', N'M-W', N'520203', N'MATH 106', N'F', N'LATAC', N'108'),
	  (NEXT VALUE FOR SeqSchedules, 101, N'20120109', N'20120318', N'10:25', N'12:20', N'T-H', N'640840', N'MATH 106', N'F', N'LATAC', N'106'),
	  (NEXT VALUE FOR SeqSchedules, 101, N'20120109', N'20120318', N'08:15', N'10:10', N'M-W', N'928007', N'MATH 106', N'F', N'LATAC', N'108'),
	  (NEXT VALUE FOR SeqSchedules, 101, N'20120109', N'20120318', N'13:25', N'15:20', N'M-W', N'928007', N'MATH 106', N'F', N'LATAC', N'105'),
	  (NEXT VALUE FOR SeqSchedules, 101, N'20120109', N'20120318', N'15:35', N'17:30', N'M-W', N'928007', N'MATH 106', N'F', N'LATAC', N'105'),
	  (NEXT VALUE FOR SeqSchedules, 101, N'20120109', N'20120318', N'13:25', N'15:20', N'T-H', N'928007', N'MATH 106', N'F', N'LATAC', N'107'),
	  (NEXT VALUE FOR SeqSchedules, 101, N'20120109', N'20120318', N'15:35', N'17:30', N'T-H', N'928007', N'MATH 106', N'F', N'LATAC', N'107'),
	  (NEXT VALUE FOR SeqSchedules, 101, N'20120109', N'20120318', N'13:25', N'15:30', N'T-H', N'603925', N'EDPD 100', N'F', N'HMNSS', N'104'),
	  (NEXT VALUE FOR SeqSchedules, 101, N'20120109', N'20120318', N'15:35', N'17:30', N'T-H', N'603925', N'EDPD 100', N'F', N'HMNSS', N'104'),
	  (NEXT VALUE FOR SeqSchedules, 101, N'20120109', N'20120318', N'13:25', N'15:30', N'M-W', N'603925', N'EDPD 100', N'F', N'HMNSS', N'102'),
	  (NEXT VALUE FOR SeqSchedules, 101, N'20120109', N'20120318', N'15:35', N'17:30', N'M-W', N'603925', N'EDPD 100', N'F', N'HMNSS', N'102'),
	  (NEXT VALUE FOR SeqSchedules, 101, N'20120109', N'20120318', N'13:25', N'15:30', N'T-H', N'263648', N'EDPD 100', N'F', N'HMNSS', N'101'),
	  (NEXT VALUE FOR SeqSchedules, 101, N'20120109', N'20120318', N'15:35', N'17:30', N'T-H', N'263648', N'EDPD 100', N'F', N'HMNSS', N'101'),
	  (NEXT VALUE FOR SeqSchedules, 101, N'20120109', N'20120318', N'13:25', N'15:30', N'M-W', N'263648', N'EDPD 100', N'F', N'HMNSS', N'103'),
	  (NEXT VALUE FOR SeqSchedules, 101, N'20120109', N'20120318', N'15:35', N'17:30', N'M-W', N'263648', N'EDPD 100', N'F', N'HMNSS', N'103'),
	  (NEXT VALUE FOR SeqSchedules, 101, N'20120109', N'20120318', N'13:25', N'15:30', N'M-W', N'708848', N'EDPD 100', N'F', N'HMNSS', N'105'),
	  (NEXT VALUE FOR SeqSchedules, 101, N'20120109', N'20120318', N'08:00', N'17:00', N'M-T-W-H-F', N'283048', N'CMIS 110', N'F', N'SEAMT', N'210');
GO

ALTER SEQUENCE SeqSchedules
RESTART WITH 10201
INCREMENT BY 1;
GO

INSERT INTO Catalogs.UndergraduateSchedules(UndergraduateScheduleID, SemesterID, StartDate, EndDate, StartTime, EndTime, Weekdays, TeacherNumber, CourseCode, CourseDeliveryTypeCode, LocationCode, RoomNumber)
VALUES(NEXT VALUE FOR SeqSchedules, 102, N'20120514', N'20120708', N'08:15', N'10:10', N'M-W', N'293804', N'WRTG 101', N'F', N'LATAC', N'204'),
(NEXT VALUE FOR SeqSchedules, 102, N'20120514', N'20120708', N'10:25', N'12:20', N'M-W', N'603925', N'EDPD 100', N'F', N'HMNSS', N'101'),
(NEXT VALUE FOR SeqSchedules, 102, N'20120514', N'20120708', N'08:15', N'10:10', N'T-H', N'520203', N'MATH 106', N'F', N'LATAC', N'104');
GO
INSERT INTO Catalogs.UndergraduateSchedules(UndergraduateScheduleID, SemesterID, StartDate, EndDate, TeacherNumber, CourseCode, CourseDeliveryTypeCode, LocationCode)
VALUES(NEXT VALUE FOR SeqSchedules, 102, N'20120514', N'20120205', N'820384', N'LBRS 100', N'L', N'ONLNE');
INSERT INTO Catalogs.UndergraduateSchedules(UndergraduateScheduleID, SemesterID, StartDate, EndDate, StartTime, EndTime, Weekdays, TeacherNumber, CourseCode, CourseDeliveryTypeCode, LocationCode, RoomNumber)
VALUES(NEXT VALUE FOR SeqSchedules, 102, N'20120514', N'20120708', N'08:15', N'10:10', N'M-W', N'408044', N'BMGT 304', N'F', N'SMALC', N'102'),
	  (NEXT VALUE FOR SeqSchedules, 102, N'20120514', N'20120708', N'15:35', N'17:30', N'M-W', N'202942', N'BMGT 110', N'F', N'HMNSS', N'303'),
	  (NEXT VALUE FOR SeqSchedules, 102, N'20120514', N'20120708', N'15:35', N'17:30', N'M-W', N'796137', N'ENGL 105', N'F', N'SMALC', N'101'),
	  (NEXT VALUE FOR SeqSchedules, 102, N'20120514', N'20120708', N'10:25', N'12:20', N'T-H', N'601084', N'ANTH 201', N'F', N'HMNSS', N'205'),
	  (NEXT VALUE FOR SeqSchedules, 102, N'20120514', N'20120708', N'13:25', N'15:20', N'M-W', N'297940', N'MATH 115', N'F', N'NAASB', N'102');
GO
INSERT INTO Catalogs.UndergraduateSchedules(UndergraduateScheduleID, SemesterID, StartDate, EndDate, StartTime, EndTime, Weekdays, TeacherNumber, TANumber, CourseCode, CourseDeliveryTypeCode, LocationCode, RoomNumber)
VALUES(NEXT VALUE FOR SeqSchedules, 102, N'20120514', N'20120708', N'08:15', N'10:10', N'T-H', N'283029', N'280385', N'HIST 140', N'F', N'HMNSS', N'103'),
	  (NEXT VALUE FOR SeqSchedules, 102, N'20120514', N'20120708', N'10:25', N'12:20', N'T-H', N'283029', N'280385', N'HIST 140', N'F', N'HMNSS', N'103'),
	  (NEXT VALUE FOR SeqSchedules, 102, N'20120514', N'20120708', N'13:25', N'15:20', N'T-H', N'283029', N'280385', N'HIST 140', N'F', N'HMNSS', N'105'),
	  (NEXT VALUE FOR SeqSchedules, 102, N'20120514', N'20120708', N'15:35', N'17:30', N'T-H', N'283029', N'280385', N'HIST 140', N'F', N'HMNSS', N'105');
GO
INSERT INTO Catalogs.UndergraduateSchedules(UndergraduateScheduleID, SemesterID, StartDate, EndDate, StartTime, EndTime, Weekdays, TeacherNumber, CourseCode, CourseDeliveryTypeCode, LocationCode, RoomNumber)
VALUES(NEXT VALUE FOR SeqSchedules, 102, N'20120514', N'20120708', N'08:15', N'10:10', N'M-W', N'839228', N'SOCY 100', N'F', N'HMNSS', N'101'),
	  (NEXT VALUE FOR SeqSchedules, 102, N'20120514', N'20120708', N'10:25', N'12:20', N'M-W', N'839228', N'SOCY 100', N'F', N'HMNSS', N'101'),
	  (NEXT VALUE FOR SeqSchedules, 102, N'20120514', N'20120708', N'08:15', N'10:10', N'T-H', N'839228', N'SOCY 100', N'F', N'HMNSS', N'102'),
	  (NEXT VALUE FOR SeqSchedules, 102, N'20120514', N'20120708', N'08:15', N'10:10', N'T-H', N'800704', N'STAT 101', N'F', N'HMNSS', N'202'),
	  (NEXT VALUE FOR SeqSchedules, 102, N'20120514', N'20120708', N'08:15', N'10:10', N'T-H', N'494020', N'STAT 201', N'F', N'NAASB', N'105'),
	  (NEXT VALUE FOR SeqSchedules, 102, N'20120514', N'20120708', N'10:25', N'12:20', N'T-H', N'793847', N'STAT 110', N'F', N'NAASB', N'109');
GO
INSERT INTO Catalogs.UndergraduateSchedules(UndergraduateScheduleID, SemesterID, StartDate, EndDate, TeacherNumber, CourseCode, CourseDeliveryTypeCode, LocationCode)
VALUES(NEXT VALUE FOR SeqSchedules, 102, N'20120514', N'20120205', N'979384', N'LBRS 100', N'L', N'ONLNE');
GO
INSERT INTO Catalogs.UndergraduateSchedules(UndergraduateScheduleID, SemesterID, StartDate, EndDate, StartTime, EndTime, Weekdays, TeacherNumber, CourseCode, CourseDeliveryTypeCode, LocationCode, RoomNumber)
VALUES(NEXT VALUE FOR SeqSchedules, 102, N'20120514', N'20120708', N'13:25', N'15:20', N'M-W', N'820384', N'ECON 101', N'F', N'HMNSS', N'103'),
	  (NEXT VALUE FOR SeqSchedules, 102, N'20120514', N'20120708', N'13:25', N'15:20', N'M-W', N'397480', N'ECON 200', N'F', N'HMNSS', N'301'),
	  (NEXT VALUE FOR SeqSchedules, 102, N'20120514', N'20120708', N'13:25', N'15:20', N'M-W', N'796137', N'ENGL 240', N'F', N'SMALC', N'101'),
	  (NEXT VALUE FOR SeqSchedules, 102, N'20120514', N'20120708', N'10:25', N'12:20', N'M-W', N'249382', N'GVPS 140', N'F', N'HMNSS', N'107'),
	  (NEXT VALUE FOR SeqSchedules, 102, N'20120514', N'20120708', N'13:25', N'15:20', N'M-W', N'202942', N'BMGT 110', N'F', N'HMNSS', N'303'),
	  (NEXT VALUE FOR SeqSchedules, 102, N'20120514', N'20120708', N'15:35', N'17:30', N'T-H', N'588030', N'WRTG 102', N'F', N'LATAC', N'305'),
	  (NEXT VALUE FOR SeqSchedules, 102, N'20120514', N'20120708', N'10:25', N'12:20', N'T-H', N'520203', N'MATH 106', N'F', N'LATAC', N'104'),
	  (NEXT VALUE FOR SeqSchedules, 102, N'20120514', N'20120708', N'10:25', N'12:20', N'M-W', N'293804', N'WRTG 101', N'F', N'LATAC', N'206'),
	  (NEXT VALUE FOR SeqSchedules, 102, N'20120514', N'20120708', N'13:25', N'15:20', N'T-H', N'283048', N'CMIS 102', N'F', N'SEAMT', N'210'),
	  (NEXT VALUE FOR SeqSchedules, 102, N'20120514', N'20120708', N'13:25', N'15:20', N'M-W', N'538405', N'PSYC 100', N'F', N'HMNSS', N'104'),
	  (NEXT VALUE FOR SeqSchedules, 102, N'20120514', N'20120708', N'13:25', N'15:20', N'M-W', N'538405', N'GERO 100', N'F', N'HMNSS', N'106'),
	  (NEXT VALUE FOR SeqSchedules, 102, N'20120514', N'20120708', N'15:35', N'17:30', N'M-W', N'820384', N'FINA 101', N'F', N'HMNSS', N'101'),
	  (NEXT VALUE FOR SeqSchedules, 102, N'20120514', N'20120708', N'15:35', N'17:30', N'M-W', N'249382', N'GVPS 100', N'F', N'HMNSS', N'107'),
	  (NEXT VALUE FOR SeqSchedules, 102, N'20120514', N'20120708', N'13:25', N'15:20', N'M-W', N'802604', N'GEOG 101', N'F', N'SMALC', N'203'),
(NEXT VALUE FOR SeqSchedules, 102, N'20120514', N'20120708', N'15:35', N'17:30', N'M-W', N'283029', N'HIST 101', N'F', N'HMNSS', N'105'),
(NEXT VALUE FOR SeqSchedules, 102, N'20120514', N'20120708', N'15:35', N'17:30', N'T-H', N'283048', N'CMIS 101', N'F', N'SEAMT', N'201'),
(NEXT VALUE FOR SeqSchedules, 102, N'20120514', N'20120708', N'15:35', N'17:30', N'M-W', N'588030', N'ENGL 302', N'F', N'LATAC', N'305'),
(NEXT VALUE FOR SeqSchedules, 102, N'20120514', N'20120708', N'15:35', N'17:30', N'T-H', N'202080', N'BIOL 101', N'F', N'NAASB', N'110'),
(NEXT VALUE FOR SeqSchedules, 102, N'20120514', N'20120708', N'17:35', N'18:30', N'T-H', N'202080', N'BIOL 102', N'F', N'NAASB', N'111'),
(NEXT VALUE FOR SeqSchedules, 102, N'20120514', N'20120708', N'10:25', N'12:20', N'T-H', N'803085', N'SPAN 101', N'F', N'LATAC', N'103'),
(NEXT VALUE FOR SeqSchedules, 102, N'20120514', N'20120708', N'10:25', N'12:20', N'T-H', N'297035', N'ACCT 220', N'F', N'NAASB', N'105'),
(NEXT VALUE FOR SeqSchedules, 102, N'20120514', N'20120708', N'10:25', N'12:20', N'M-W', N'402888', N'CMIT 101', N'F', N'SEAMT', N'205'),
(NEXT VALUE FOR SeqSchedules, 102, N'20120514', N'20120708', N'13:25', N'15:20', N'T-H', N'300428', N'CJLE 100', N'F', N'HMNSS', N'202'),
(NEXT VALUE FOR SeqSchedules, 102, N'20120723', N'20120727', N'08:00', N'17:00', N'M-T-W-H-F', N'283048', N'CMIS 110', N'F', N'SEAMT', N'210'),
(NEXT VALUE FOR SeqSchedules, 102, N'20120723', N'20120727', N'08:00', N'17:00', N'M-T-W-H-F', N'220280', N'CMIS 110', N'F', N'SEAMT', N'212'),
(NEXT VALUE FOR SeqSchedules, 102, N'20120514', N'20120708', N'10:25', N'12:20', N'T-H', N'249382', N'GVPS 140', N'F', N'HMNSS', N'107'),
(NEXT VALUE FOR SeqSchedules, 102, N'20120514', N'20120708', N'15:35', N'17:30', N'T-H', N'397480', N'ECON 200', N'F', N'HMNSS', N'301'),
(NEXT VALUE FOR SeqSchedules, 102, N'20120514', N'20120708', N'08:15', N'10:10', N'T-H', N'293804', N'WRTG 101', N'F', N'LATAC', N'204'),
(NEXT VALUE FOR SeqSchedules, 102, N'20120514', N'20120708', N'10:25', N'12:20', N'T-H', N'293804', N'WRTG 101', N'F', N'LATAC', N'206'),
(NEXT VALUE FOR SeqSchedules, 102, N'20120514', N'20120708', N'15:35', N'17:30', N'M-W', N'974037', N'LNGS 201', N'F', N'LATAC', N'101'),
(NEXT VALUE FOR SeqSchedules, 102, N'20120514', N'20120708', N'08:15', N'10:10', N'M-W', N'397480', N'ECON 152', N'F', N'HMNSS', N'303'),
(NEXT VALUE FOR SeqSchedules, 102, N'20120514', N'20120708', N'08:15', N'10:10', N'T-H', N'482685', N'PSYC 300', N'F', N'LATAC', N'107'),
(NEXT VALUE FOR SeqSchedules, 102, N'20120514', N'20120708', N'10:25', N'12:20', N'T-H', N'700800', N'PHIL 100', N'F', N'LATAC', N'109'),
(NEXT VALUE FOR SeqSchedules, 102, N'20120730', N'20120803', N'08:00', N'17:00', N'M-T-W-H-F', N'283048', N'CMIS 110', N'F', N'SEAMT', N'210');
GO

ALTER SEQUENCE SeqSchedules
RESTART WITH 10301
INCREMENT BY 1;
GO

INSERT INTO Catalogs.UndergraduateSchedules(UndergraduateScheduleID, SemesterID, StartDate, EndDate, StartTime, EndTime, Weekdays, TeacherNumber, CourseCode, CourseDeliveryTypeCode, LocationCode, RoomNumber)
VALUES(NEXT VALUE FOR SeqSchedules, 103, N'20120917', N'20121114', N'08:15', N'10:10', N'M-W', N'408044', N'BMGT 304', N'F', N'SMALC', N'102'),
	  (NEXT VALUE FOR SeqSchedules, 103, N'20120917', N'20121114', N'10:25', N'12:20', N'M-W', N'640840', N'MATH 106', N'F', N'LATAC', N'106');
GO
INSERT INTO Catalogs.UndergraduateSchedules(UndergraduateScheduleID, SemesterID, StartDate, EndDate, StartTime, EndTime, Weekdays, TeacherNumber, TANumber, CourseCode, CourseDeliveryTypeCode, LocationCode, RoomNumber)
VALUES(NEXT VALUE FOR SeqSchedules, 103, N'20120917', N'20121114', N'13:25', N'15:20', N'M-W', N'283029', N'280385', N'HIST 140', N'F', N'HMNSS', N'103'),
	  (NEXT VALUE FOR SeqSchedules, 103, N'20120917', N'20121114', N'13:25', N'15:20', N'T-H', N'283029', N'280385', N'HIST 140', N'F', N'HMNSS', N'103');
GO
INSERT INTO Catalogs.UndergraduateSchedules(UndergraduateScheduleID, SemesterID, StartDate, EndDate, StartTime, EndTime, Weekdays, TeacherNumber, CourseCode, CourseDeliveryTypeCode, LocationCode, RoomNumber)
VALUES(NEXT VALUE FOR SeqSchedules, 103, N'20120917', N'20121114', N'15:35', N'17:30', N'T-H', N'603925', N'EDPD 100', N'F', N'HMNSS', N'102'),
	  (NEXT VALUE FOR SeqSchedules, 103, N'20120917', N'20121114', N'08:15', N'10:10', N'M-W', N'640840', N'MATH 106', N'F', N'LATAC', N'106'),
	  (NEXT VALUE FOR SeqSchedules, 103, N'20120917', N'20121114', N'10:25', N'12:20', N'M-W', N'640840', N'MATH 106', N'F', N'LATAC', N'106'),
	  (NEXT VALUE FOR SeqSchedules, 103, N'20120917', N'20121114', N'15:35', N'17:30', N'M-W', N'974037', N'LNGS 201', N'F', N'LATAC', N'101'),
	  (NEXT VALUE FOR SeqSchedules, 103, N'20120917', N'20121114', N'15:35', N'17:30', N'T-H', N'202080', N'BIOL 101', N'F', N'NAASB', N'110'),
	  (NEXT VALUE FOR SeqSchedules, 103, N'20120917', N'20121114', N'17:35', N'18:30', N'T-H', N'202080', N'BIOL 102', N'F', N'NAASB', N'111'),
	  (NEXT VALUE FOR SeqSchedules, 103, N'20120917', N'20121114', N'15:35', N'17:30', N'T-H', N'208404', N'CHEM 101', N'F', N'NAASB', N'106'),
	  (NEXT VALUE FOR SeqSchedules, 103, N'20120917', N'20121114', N'17:35', N'18:30', N'T-H', N'208404', N'CHEM 102', N'F', N'NAASB', N'107'),
	  (NEXT VALUE FOR SeqSchedules, 103, N'20120917', N'20121114', N'08:15', N'10:10', N'T-H', N'240448', N'MRKT 101', N'F', N'NAASB', N'101'),
	  (NEXT VALUE FOR SeqSchedules, 103, N'20120917', N'20121114', N'13:25', N'15:20', N'T-H', N'283048', N'CMIS 101', N'F', N'SEAMT', N'201'),
	  (NEXT VALUE FOR SeqSchedules, 103, N'20120917', N'20121114', N'15:35', N'17:30', N'T-H', N'283048', N'CMIS 102', N'F', N'SEAMT', N'210'),
	  (NEXT VALUE FOR SeqSchedules, 103, N'20120917', N'20121114', N'15:35', N'17:30', N'T-H', N'282642', N'BIOL 101', N'F', N'NAASB', N'120'),
(NEXT VALUE FOR SeqSchedules, 103, N'20120917', N'20121114', N'17:35', N'18:30', N'T-H', N'282642', N'BIOL 102', N'F', N'NAASB', N'121'),
(NEXT VALUE FOR SeqSchedules, 103, N'20120917', N'20121114', N'13:25', N'15:20', N'M-W', N'802604', N'GEOG 112', N'F', N'SMALC', N'202'),
(NEXT VALUE FOR SeqSchedules, 103, N'20120917', N'20121114', N'08:15', N'10:10', N'M-W', N'839228', N'SOCY 100', N'F', N'HMNSS', N'101'),
(NEXT VALUE FOR SeqSchedules, 103, N'20120917', N'20121114', N'13:25', N'15:20', N'M-W', N'796137', N'ENGL 240', N'F', N'SMALC', N'101'),
(NEXT VALUE FOR SeqSchedules, 103, N'20120917', N'20121114', N'08:15', N'10:10', N'M-W', N'516624', N'CMSC 140', N'F', N'SEAMT', N'212'),
(NEXT VALUE FOR SeqSchedules, 103, N'20120917', N'20121114', N'10:25', N'12:20', N'M-W', N'160205', N'CMSC 101', N'F', N'SEAMT', N'210'),
(NEXT VALUE FOR SeqSchedules, 103, N'20120917', N'20121114', N'10:25', N'12:20', N'T-H', N'160205', N'CMSC 102', N'F', N'SEAMT', N'210'),
(NEXT VALUE FOR SeqSchedules, 103, N'20120917', N'20121114', N'10:25', N'12:20', N'M-W', N'927144', N'CMSC 103', N'F', N'SEAMT', N'212'),
(NEXT VALUE FOR SeqSchedules, 103, N'20120917', N'20121114', N'10:25', N'12:20', N'T-H', N'927144', N'CMSC 104', N'F', N'SEAMT', N'212'),
(NEXT VALUE FOR SeqSchedules, 103, N'20120917', N'20121114', N'08:15', N'10:10', N'M-W', N'397480', N'ECON 152', N'F', N'HMNSS', N'303'),
(NEXT VALUE FOR SeqSchedules, 103, N'20120917', N'20121114', N'10:25', N'12:20', N'M-W', N'249382', N'GVPS 140', N'F', N'HMNSS', N'107'),
(NEXT VALUE FOR SeqSchedules, 103, N'20120917', N'20121114', N'13:25', N'15:20', N'M-W', N'208408', N'HIST 140', N'F', N'HMNSS', N'105'),
(NEXT VALUE FOR SeqSchedules, 103, N'20120917', N'20121114', N'08:15', N'10:10', N'T-H', N'516624', N'CMSC 141', N'F', N'SEAMT', N'212'),
(NEXT VALUE FOR SeqSchedules, 103, N'20120917', N'20121114', N'08:15', N'10:10', N'T-H', N'803085', N'SPAN 102', N'F', N'LATAC', N'103'),
(NEXT VALUE FOR SeqSchedules, 103, N'20120917', N'20121114', N'10:25', N'12:20', N'T-H', N'803085', N'SPAN 421', N'F', N'LATAC', N'103'),
(NEXT VALUE FOR SeqSchedules, 103, N'20120917', N'20121114', N'10:25', N'12:20', N'T-H', N'297035', N'ACCT 220', N'F', N'NAASB', N'105'),
(NEXT VALUE FOR SeqSchedules, 103, N'20120917', N'20121114', N'15:35', N'17:30', N'M-W', N'202942', N'BMGT 110', N'F', N'HMNSS', N'303'),
(NEXT VALUE FOR SeqSchedules, 103, N'20120917', N'20121114', N'13:25', N'15:20', N'M-W', N'538405', N'PSYC 100', N'F', N'HMNSS', N'104'),
(NEXT VALUE FOR SeqSchedules, 103, N'20120917', N'20121114', N'15:35', N'17:30', N'T-H', N'974037', N'LNGS 226', N'F', N'LATAC', N'101'),
(NEXT VALUE FOR SeqSchedules, 103, N'20120917', N'20121114', N'08:15', N'10:10', N'T-H', N'800704', N'STAT 101', N'F', N'HMNSS', N'202'),
(NEXT VALUE FOR SeqSchedules, 103, N'20120917', N'20121114', N'08:15', N'10:10', N'T-H', N'494020', N'STAT 201', N'F', N'NAASB', N'105'),
(NEXT VALUE FOR SeqSchedules, 103, N'20120917', N'20121114', N'15:35', N'17:30', N'T-H', N'397480', N'ECON 200', N'F', N'HMNSS', N'301'),
(NEXT VALUE FOR SeqSchedules, 103, N'20120917', N'20121114', N'13:25', N'15:20', N'M-W', N'538405', N'GERO 100', N'F', N'HMNSS', N'106'),
(NEXT VALUE FOR SeqSchedules, 103, N'20121126', N'20121130', N'08:00', N'17:00', N'M-T-W-H-F', N'957924', N'CMST 312', N'F', N'SEAMT', N'214'),
(NEXT VALUE FOR SeqSchedules, 103, N'20121126', N'20121130', N'08:15', N'10:10', N'M-W', N'482685', N'SOCY 311', N'F', N'LATAC', N'109'),
(NEXT VALUE FOR SeqSchedules, 103, N'20121126', N'20121130', N'10:25', N'12:20', N'M-W', N'927940', N'GERO 222', N'F', N'LATAC', N'112'),
(NEXT VALUE FOR SeqSchedules, 103, N'20121126', N'20121130', N'10:25', N'12:20', N'M-W', N'839228', N'SOCY 100', N'F', N'HMNSS', N'101');
GO

ALTER SEQUENCE SeqSchedules
RESTART WITH 10401
INCREMENT BY 1;
GO

INSERT INTO Catalogs.UndergraduateSchedules(UndergraduateScheduleID, SemesterID, StartDate, EndDate, StartTime, EndTime, Weekdays, TeacherNumber, TANumber, CourseCode, CourseDeliveryTypeCode, LocationCode, RoomNumber)
VALUES(NEXT VALUE FOR SeqSchedules, 104, N'20130107', N'20130217', N'08:15', N'10:10', N'M-W', N'283029', N'280385', N'HIST 140', N'F', N'HMNSS', N'105'),
      (NEXT VALUE FOR SeqSchedules, 104, N'20130107', N'20130217', N'10:25', N'12:20', N'M-W', N'283029', N'280385', N'HIST 140', N'F', N'HMNSS', N'105');
GO
INSERT INTO Catalogs.UndergraduateSchedules(UndergraduateScheduleID, SemesterID, StartDate, EndDate, StartTime, EndTime, Weekdays, TeacherNumber, CourseCode, CourseDeliveryTypeCode, LocationCode, RoomNumber)
VALUES(NEXT VALUE FOR SeqSchedules, 104, N'20130107', N'20130217', N'13:25', N'15:20', N'M-W', N'249382', N'GVPS 140', N'F', N'HMNSS', N'107'),
      (NEXT VALUE FOR SeqSchedules, 104, N'20130107', N'20130217', N'15:35', N'17:30', N'M-W', N'249382', N'GVPS 140', N'F', N'HMNSS', N'107'),
(NEXT VALUE FOR SeqSchedules, 104, N'20130107', N'20130217', N'13:25', N'15:20', N'M-W', N'820384', N'FINA 101', N'F', N'HMNSS', N'101'),
(NEXT VALUE FOR SeqSchedules, 104, N'20130107', N'20130217', N'15:35', N'17:30', N'M-W', N'820384', N'FINA 102', N'F', N'HMNSS', N'101'),
(NEXT VALUE FOR SeqSchedules, 104, N'20130107', N'20130217', N'13:25', N'15:30', N'M-W', N'263648', N'EDPD 100', N'F', N'HMNSS', N'103');
GO
INSERT INTO Catalogs.UndergraduateSchedules(UndergraduateScheduleID, SemesterID, StartDate, EndDate, StartTime, EndTime, Weekdays, TeacherNumber, TANumber, CourseCode, CourseDeliveryTypeCode, LocationCode, RoomNumber) 
VALUES(NEXT VALUE FOR SeqSchedules, 104, N'20130107', N'20130217', N'08:15', N'10:10', N'T-H', N'283029', N'280385', N'HIST 140', N'F', N'HMNSS', N'105'),
      (NEXT VALUE FOR SeqSchedules, 104, N'20130107', N'20130217', N'10:25', N'12:20', N'T-H', N'283029', N'280385', N'HIST 140', N'F', N'HMNSS', N'105');
GO
INSERT INTO Catalogs.UndergraduateSchedules(UndergraduateScheduleID, SemesterID, StartDate, EndDate, StartTime, EndTime, Weekdays, TeacherNumber, CourseCode, CourseDeliveryTypeCode, LocationCode, RoomNumber)
VALUES(NEXT VALUE FOR SeqSchedules, 104, N'20130107', N'20130217', N'08:15', N'10:10', N'T-H', N'240448', N'MRKT 101', N'F', N'NAASB', N'101'),
	  (NEXT VALUE FOR SeqSchedules, 104, N'20130107', N'20130217', N'10:25', N'12:20', N'M-W', N'402888', N'CMIT 101', N'F', N'SEAMT', N'205'),
	  (NEXT VALUE FOR SeqSchedules, 104, N'20130107', N'20130217', N'13:25', N'15:20', N'M-W', N'402888', N'CMIT 102', N'F', N'SEAMT', N'205'),
	  (NEXT VALUE FOR SeqSchedules, 104, N'20130107', N'20130217', N'15:35', N'17:30', N'T-H', N'202080', N'BIOL 101', N'F', N'NAASB', N'110'),
	  (NEXT VALUE FOR SeqSchedules, 104, N'20130107', N'20130217', N'17:35', N'18:30', N'T-H', N'202080', N'BIOL 102', N'F', N'NAASB', N'111'),
	  (NEXT VALUE FOR SeqSchedules, 104, N'20130107', N'20130217', N'15:35', N'17:30', N'T-H', N'282642', N'BIOL 101', N'F', N'NAASB', N'120'),
	  (NEXT VALUE FOR SeqSchedules, 104, N'20130107', N'20130217', N'17:35', N'18:30', N'T-H', N'282642', N'BIOL 102', N'F', N'NAASB', N'121'),
	  (NEXT VALUE FOR SeqSchedules, 104, N'20130107', N'20130217', N'15:35', N'17:30', N'M-W', N'974037', N'LNGS 311', N'F', N'LATAC', N'101'),
	  (NEXT VALUE FOR SeqSchedules, 104, N'20130107', N'20130217', N'15:35', N'17:30', N'T-H', N'974037', N'LNGS 321', N'F', N'LATAC', N'101'),
	  (NEXT VALUE FOR SeqSchedules, 104, N'20130107', N'20130217', N'08:15', N'10:10', N'T-H', N'800704', N'STAT 101', N'F', N'HMNSS', N'202'),
	  (NEXT VALUE FOR SeqSchedules, 104, N'20130107', N'20130217', N'08:15', N'10:10', N'M-W', N'839228', N'SOCY 100', N'F', N'HMNSS', N'101'),
	  (NEXT VALUE FOR SeqSchedules, 104, N'20130107', N'20130217', N'08:15', N'10:10', N'T-H', N'811808', N'SPAN 201', N'F', N'LATAC', N'103'),
	  (NEXT VALUE FOR SeqSchedules, 104, N'20130107', N'20130217', N'10:25', N'12:20', N'T-H', N'811808', N'SPAN 422', N'F', N'LATAC', N'103'),
	  (NEXT VALUE FOR SeqSchedules, 104, N'20130107', N'20130217', N'10:25', N'12:20', N'M-W', N'297035', N'ACCT 220', N'F', N'NAASB', N'105'),
	  (NEXT VALUE FOR SeqSchedules, 104, N'20130107', N'20130217', N'10:25', N'12:20', N'T-H', N'297035', N'ACCT 221', N'F', N'NAASB', N'105'),
	  (NEXT VALUE FOR SeqSchedules, 104, N'20130107', N'20130217', N'08:15', N'10:10', N'T-H', N'482685', N'PSYC 300', N'F', N'LATAC', N'107'),
	  (NEXT VALUE FOR SeqSchedules, 104, N'20130107', N'20130217', N'08:15', N'10:10', N'M-W', N'797229', N'CMSC 201', N'F', N'SEAMT', N'212'),
	  (NEXT VALUE FOR SeqSchedules, 104, N'20130107', N'20130217', N'08:15', N'10:10', N'M-W', N'482685', N'SOCY 311', N'F', N'LATAC', N'301'),
	  (NEXT VALUE FOR SeqSchedules, 104, N'20130107', N'20130217', N'08:15', N'10:10', N'T-H', N'770284', N'ECON 201', N'F', N'LATAC', N'109'),
	  (NEXT VALUE FOR SeqSchedules, 104, N'20130107', N'20130217', N'10:25', N'12:20', N'T-H', N'703502', N'ENGL 352', N'F', N'LATAC', N'303'),
	  (NEXT VALUE FOR SeqSchedules, 104, N'20130107', N'20130217', N'08:15', N'10:10', N'T-H', N'703502', N'ENGL 302', N'F', N'LATAC', N'303'),
	  (NEXT VALUE FOR SeqSchedules, 104, N'20130107', N'20130217', N'10:25', N'12:20', N'T-H', N'770284', N'ECON 212', N'F', N'LATAC', N'109'),
	  (NEXT VALUE FOR SeqSchedules, 104, N'20130107', N'20130217', N'08:15', N'10:10', N'M-W', N'797229', N'CMSC 202', N'F', N'SEAMT', N'212'),
	  (NEXT VALUE FOR SeqSchedules, 104, N'20130107', N'20130217', N'08:15', N'10:10', N'M-W', N'797229', N'CMSC 203', N'F', N'SEAMT', N'212'),
	  (NEXT VALUE FOR SeqSchedules, 104, N'20130107', N'20130217', N'10:25', N'12:20', N'M-W', N'797229', N'CMSC 204', N'F', N'SEAMT', N'212');
GO

ALTER SEQUENCE SeqSchedules
RESTART WITH 10501
INCREMENT BY 1;
GO

INSERT INTO Catalogs.UndergraduateSchedules(UndergraduateScheduleID, SemesterID, StartDate, EndDate, StartTime, EndTime, Weekdays, TeacherNumber, CourseCode, CourseDeliveryTypeCode, LocationCode, RoomNumber)
VALUES(NEXT VALUE FOR SeqSchedules, 105, N'20130513', N'20130707', N'15:35', N'17:30', N'M-W', N'796137', N'ENGL 105', N'F', N'SMALC', N'101');
GO
INSERT INTO Catalogs.UndergraduateSchedules(UndergraduateScheduleID, SemesterID, StartDate, EndDate, StartTime, EndTime, Weekdays, TeacherNumber, TANumber, CourseCode, CourseDeliveryTypeCode, LocationCode, RoomNumber)
VALUES(NEXT VALUE FOR SeqSchedules, 105, N'20130513', N'20130707', N'08:15', N'10:10', N'M-W', N'283029', N'280385', N'HIST 140', N'F', N'HMNSS', N'105');
GO
INSERT INTO Catalogs.UndergraduateSchedules(UndergraduateScheduleID, SemesterID, StartDate, EndDate, StartTime, EndTime, Weekdays, TeacherNumber, CourseCode, CourseDeliveryTypeCode, LocationCode, RoomNumber)
VALUES(NEXT VALUE FOR SeqSchedules, 105, N'20130513', N'20130707', N'15:35', N'17:30', N'M-W', N'974037', N'LNGS 312', N'F', N'LATAC', N'101'),
      (NEXT VALUE FOR SeqSchedules, 105, N'20130513', N'20130707', N'15:35', N'17:30', N'T-H', N'974037', N'LNGS 322', N'F', N'LATAC', N'101'),
	  (NEXT VALUE FOR SeqSchedules, 105, N'20130513', N'20130707', N'13:25', N'15:20', N'M-W', N'249382', N'GVPS 140', N'F', N'HMNSS', N'107'),
	  (NEXT VALUE FOR SeqSchedules, 105, N'20130513', N'20130707', N'15:35', N'17:30', N'T-H', N'811808', N'SPAN 202', N'F', N'LATAC', N'202'),
	  (NEXT VALUE FOR SeqSchedules, 105, N'20130513', N'20130707', N'15:35', N'17:30', N'T-H', N'803085', N'SPAN 312', N'F', N'LATAC', N'202'),
	  (NEXT VALUE FOR SeqSchedules, 105, N'20130513', N'20130707', N'08:15', N'10:10', N'M-W', N'770284', N'ECON 211', N'F', N'LATAC', N'109'),
	  (NEXT VALUE FOR SeqSchedules, 105, N'20130513', N'20130707', N'10:25', N'12:20', N'M-W', N'203080', N'ECON 300', N'F', N'LATAC', N'101'),
	  (NEXT VALUE FOR SeqSchedules, 105, N'20130513', N'20130707', N'10:25', N'12:20', N'T-H', N'297035', N'ACCT 221', N'F', N'NAASB', N'105'),
	  (NEXT VALUE FOR SeqSchedules, 105, N'20130513', N'20130707', N'15:35', N'17:30', N'T-H', N'202080', N'BIOL 101', N'F', N'NAASB', N'110'),
	  (NEXT VALUE FOR SeqSchedules, 105, N'20130513', N'20130707', N'17:35', N'18:30', N'T-H', N'202080', N'BIOL 102', N'F', N'NAASB', N'111'),
	  (NEXT VALUE FOR SeqSchedules, 105, N'20130513', N'20130707', N'10:25', N'12:20', N'T-H', N'601084', N'ANTH 201', N'F', N'HMNSS', N'205');
GO

ALTER SEQUENCE SeqSchedules
RESTART WITH 10601
INCREMENT BY 1;
GO

INSERT INTO Catalogs.UndergraduateSchedules(UndergraduateScheduleID, SemesterID, StartDate, EndDate, StartTime, EndTime, Weekdays, TeacherNumber, CourseCode, CourseDeliveryTypeCode, LocationCode, RoomNumber)
VALUES(NEXT VALUE FOR SeqSchedules, 106, N'20130916', N'20131103', N'13:25', N'15:20', N'M-W', N'249382', N'GVPS 140', N'F', N'HMNSS', N'107');
GO
INSERT INTO Catalogs.UndergraduateSchedules(UndergraduateScheduleID, SemesterID, StartDate, EndDate, StartTime, EndTime, Weekdays, TeacherNumber, TANumber, CourseCode, CourseDeliveryTypeCode, LocationCode, RoomNumber)
VALUES(NEXT VALUE FOR SeqSchedules, 106, N'20130916', N'20131103', N'08:15', N'10:10', N'T-H', N'283029', N'280385', N'HIST 140', N'F', N'HMNSS', N'105');
GO
INSERT INTO Catalogs.UndergraduateSchedules(UndergraduateScheduleID, SemesterID, StartDate, EndDate, StartTime, EndTime, Weekdays, TeacherNumber, CourseCode, CourseDeliveryTypeCode, LocationCode, RoomNumber)
VALUES(NEXT VALUE FOR SeqSchedules, 106, N'20130916', N'20131103', N'13:25', N'15:20', N'M-W', N'538405', N'PSYC 100', N'F', N'HMNSS', N'104');
GO

ALTER SEQUENCE SeqSchedules
RESTART WITH 10801
INCREMENT BY 1;
GO

INSERT INTO Catalogs.UndergraduateSchedules(UndergraduateScheduleID, SemesterID, StartDate, EndDate, StartTime, EndTime, Weekdays, TeacherNumber, CourseCode, CourseDeliveryTypeCode, LocationCode, RoomNumber)
VALUES(NEXT VALUE FOR SeqSchedules, 108, N'20140512', N'20140706', N'08:15', N'10:10', N'M-W', N'839228', N'SOCY 100', N'F', N'HMNSS', N'101');
GO

ALTER SEQUENCE SeqSchedules
RESTART WITH 10901
INCREMENT BY 1;
GO
INSERT INTO Catalogs.UndergraduateSchedules(UndergraduateScheduleID, SemesterID, StartDate, EndDate, StartTime, EndTime, Weekdays, TeacherNumber, CourseCode, CourseDeliveryTypeCode, LocationCode, RoomNumber)
VALUES(NEXT VALUE FOR SeqSchedules, 109, N'20140917', N'20141027', N'08:15', N'10:10', N'M-W', N'839228', N'SOCY 100', N'F', N'HMNSS', N'101');
GO

------------------------------------------------------------------------------------
INSERT INTO Admissions.UndergraduateRegistrations(RegistrationDate, StudentNumber, UndergraduateScheduleID)
VALUES(N'20110909', N'80284060', 10102), (N'20110909', N'80284060', 10111), (N'20110909', N'80284060', 10129),
      (N'20110909', N'80284060', 10118), (N'20110909', N'13048039', 10101), (N'20110909', N'13048039', 10110),
      (N'20110909', N'82855824', 10126), (N'20110909', N'82855824', 10136), (N'20110910', N'13048039', 10128),
      (N'20110910', N'13048039', 10117), (N'20110910', N'82855824', 10109), (N'20110910', N'82855824', 10111),
(N'20110920', N'20486050', 10103), (N'20110922', N'20486050', 10114), (N'20110922', N'95060506', 10136),
(N'20110922', N'95060506', 10126), (N'20110922', N'97485006', 10136), (N'20110922', N'20486025', 10119),
(N'20110922', N'20840051', 10126), (N'20110922', N'24928472', 10103), (N'20110930', N'97394285', 10101),
(N'20110930', N'97394285', 10110), (N'20110930', N'28408520', 10109), (N'20110930', N'28408520', 10112),
(N'20110930', N'28408520', 10136), (N'20110930', N'28408520', 10126), (N'20110930', N'50283048', 10111),
(N'20111004', N'92794735', 10111), (N'20111005', N'29403095', 10126), (N'20111005', N'29403095', 10109),
(N'20111005', N'29403095', 10116), (N'20111005', N'29403095', 10136), (N'20111007', N'24928472', 10111),
(N'20111008', N'22982504', 10104), (N'20111008', N'22982504', 10120), (N'20111008', N'22982504', 10112),
(N'20111008', N'22982504', 10130), (N'20111011', N'92794735', 10103), (N'20111012', N'27114857', 10105),
(N'20111012', N'27114857', 10131), (N'20111012', N'88130480', 10128), (N'20111012', N'88130480', 10117),
(N'20111012', N'88130480', 10101), (N'20111012', N'88130480', 10110), (N'20111012', N'22881251', 10115),
(N'20111014', N'97485006', 10126), (N'20111014', N'97485006', 10109), (N'20111014', N'97485006', 10113),
(N'20111014', N'20486025', 10112), (N'20111014', N'20486025', 10103), (N'20111014', N'20486025', 10130),
(N'20111014', N'60294086', 10103), (N'20111014', N'60294086', 10133), (N'20121015', N'94059506', 10129),
(N'20121015', N'40284305', 10101), (N'20121015', N'40284305', 10117), (N'20121015', N'92270397', 10110),
(N'20121015', N'92270397', 10117), (N'20111015', N'48009520', 10117), (N'20121015', N'70840584', 10130),
(N'20121015', N'70840584', 10120), (N'20121015', N'20384025', 10131), (N'20111015', N'20384025', 10105),
(N'20111016', N'24795711', 10110), (N'20111017', N'24795711', 10117), (N'20111017', N'24795711', 10128),
(N'20111018', N'24795711', 10101), (N'20111018', N'92794735', 10129), (N'20111020', N'95060506', 10109),
(N'20111020', N'95060506', 10114), (N'20111020', N'22803048', 10117), (N'20121020', N'92270397', 10128),
(N'20111020', N'20940035', 10106), (N'20111020', N'20940035', 10133), (N'20121021', N'29473002', 10103),
(N'20111021', N'29473002', 10119), (N'20111021', N'27114857', 10121), (N'20111021', N'27114857', 10112),
(N'20111021', N'50247294', 10105), (N'20111021', N'50247294', 10121), (N'20111021', N'50247294', 10113),
(N'20111021', N'50247294', 10131), (N'20121022', N'92270397', 10101), (N'20111022', N'22803048', 10128),
(N'20111022', N'20749703', 10102), (N'20111022', N'20749703', 10114), (N'20111022', N'20749703', 10123),
(N'20111022', N'20840051', 10136), (N'20111022', N'22803048', 10101), (N'20111022', N'24850033', 10132),
(N'20111022', N'38500685', 10104), (N'20111022', N'29681704', 10108), (N'20111022', N'29681704', 10134),
(N'20111023', N'29400359', 10108), (N'20111023', N'29400359', 10135), (N'20111024', N'38050586', 10134),
(N'20111024', N'38050586', 10107), (N'20111024', N'38050586', 10115), (N'20111024', N'38050586', 10124),
(N'20111024', N'25506037', 10113), (N'20111024', N'25506037', 10106), (N'20111024', N'25506037', 10122),
(N'20111024', N'25506037', 10132);
GO
INSERT INTO Admissions.UndergraduateRegistrations(RegistrationDate, StudentNumber, UndergraduateScheduleID)
VALUES(N'20111024', N'22881251', 10107), (N'20111024', N'22881251', 10125), (N'20111024', N'22881251', 10134),
	  (N'20111025', N'20283405', 10107), (N'20121025', N'40284305', 10110), (N'20121025', N'40284305', 10128),
	  (N'20111025', N'92794735', 10119), (N'20111025', N'49500692', 10113), (N'20111026', N'40407502', 10102),
	  (N'20111026', N'20749703', 10133), (N'20111026', N'97394285', 10117), (N'20111026', N'20486050', 10133),
	  (N'20111026', N'20400305', 10126), (N'20111026', N'20840051', 10109), (N'20111026', N'20840051', 10115),
	  (N'20111026', N'20283405', 10134), (N'20111026', N'24850033', 10106), (N'20111026', N'24850033', 10113),
(N'20111026', N'29480759', 10117), (N'20111026', N'61824668', 10111), (N'20111026', N'30493386', 10133),
(N'20111026', N'40407502', 10118), (N'20111026', N'40407502', 10111), (N'20111026', N'40407502', 10129),
(N'20111027', N'30405069', 10111), (N'20111027', N'20400305', 10136), (N'20111027', N'20283405', 10115),
(N'20111027', N'80848600', 10102), (N'20111027', N'80848600', 10123), (N'20111027', N'80839048', 10105),
(N'20111027', N'80839048', 10133), (N'20111028', N'20400305', 10109), (N'20111028', N'20283405', 10124),
(N'20111028', N'29473002', 10130), (N'20111028', N'29473002', 10111), (N'20111028', N'29222420', 10121),
(N'20111028', N'29222420', 10131), (N'20111028', N'22485936', 10113), (N'20111028', N'22485936', 10132),
(N'20111028', N'53397060', 10108), (N'20111028', N'53397060', 10116), (N'20111028', N'53397060', 10135),
(N'20111028', N'53397060', 10125), (N'20111028', N'29681704', 10116), (N'20111028', N'29681704', 10125),
(N'20111029', N'92739473', 10111), (N'20111029', N'92739473', 10118), (N'20111029', N'92739473', 10102),
(N'20111029', N'20400305', 10116), (N'20111029', N'80848600', 10114), (N'20111030', N'20486050', 10123),
(N'20111030', N'30405069', 10102), (N'20111030', N'50283048', 10103), (N'20111030', N'97950225', 10113),
(N'20111030', N'97950225', 10131), (N'20111030', N'29400035', 10105), (N'20111030', N'29400035', 10133),
(N'20111030', N'29400035', 10114), (N'20111030', N'29400035', 10123), (N'20111031', N'59739352', 10118),
(N'20111031', N'59739352', 10102), (N'20111031', N'13024466', 10101), (N'20111031', N'69558505', 10115),
(N'20111031', N'69558505', 10107), (N'20111101', N'24928292', 10106), (N'20111101', N'24928292', 10113),
(N'20111101', N'63840950', 10105), (N'20111101', N'63840950', 10131), (N'20111101', N'13024466', 10114),
(N'20111101', N'13024466', 10132), (N'20111101', N'13024466', 10122), (N'20111101', N'92739470', 10104),
(N'20111101', N'92739470', 10133), (N'20111102', N'20840640', 10117), (N'20111102', N'20840640', 10110),
(N'20111102', N'51967394', 10115), (N'20111102', N'51967394', 10134), (N'20111102', N'51967394', 10125),
(N'20111102', N'51967394', 10107), (N'20111103', N'20304050', 10103), (N'20111103', N'20304050', 10129),
(N'20111103', N'30280635', 10132), (N'20111103', N'30280635', 10106), (N'20111103', N'27483004', 10108),
(N'20111103', N'27483004', 10126), (N'20111103', N'27483004', 10116), (N'20111104', N'18073572', 10117),
(N'20111104', N'20049584', 10113), (N'20111104', N'20049584', 10105), (N'20111104', N'20049584', 10121),
(N'20111104', N'17724035', 10118), (N'20111105', N'24850033', 10121), (N'20111105', N'97394285', 10128),
(N'20111105', N'22803048', 10110), (N'20111105', N'20384025', 10120), (N'20111105', N'68304005', 10104);
GO
INSERT INTO Admissions.UndergraduateRegistrations(RegistrationDate, StudentNumber, UndergraduateScheduleID)
VALUES(N'20111105', N'44004850', 10102), (N'20111105', N'44004850', 10111), (N'20111106', N'20840640', 10101),
	  (N'20111106', N'20840640', 10128), (N'20111105', N'27948146', 10101), (N'20111106', N'92847957', 10103),
	  (N'20111106', N'92847957', 10119), (N'20111106', N'92847957', 10111), (N'20111106', N'92847957', 10129),
	  (N'20111106', N'24928472', 10119), (N'20111106', N'64885004', 10115), (N'20111106', N'64885004', 10134),
	  (N'20111106', N'64885004', 10124), (N'20111106', N'64885004', 10107), (N'20111106', N'27483004', 10135),
	  (N'20111106', N'50183209', 10116), (N'20111107', N'13970508', 10112), (N'20111107', N'29222420', 10105),
(N'20111107', N'29222420', 10115), (N'20111107', N'17749608', 10103), (N'20111107', N'17749608', 10114),
(N'20111107', N'17749608', 10123), (N'20111107', N'27948146', 10114), (N'20111107', N'27948146', 10124),
(N'20111107', N'27948146', 10133), (N'20111107', N'27495006', 10107), (N'20111107', N'27495006', 10134),
(N'20111108', N'20468255', 10112), (N'20111108', N'50183209', 10126), (N'20111108', N'62683004', 10116),
(N'20111108', N'62683004', 10126), (N'20111109', N'20961160', 10107), (N'20111109', N'20961160', 10134),
(N'20111109', N'70533722', 10116), (N'20111109', N'70533722', 10127), (N'20111109', N'70533722', 10135),
(N'20111109', N'70533722', 10108), (N'20111109', N'29847502', 10108), (N'20111109', N'29847502', 10116),
(N'20111109', N'29847502', 10135), (N'20111109', N'29847502', 10127), (N'20111110', N'13970508', 10104),
(N'20111110', N'13970508', 10130), (N'20111110', N'20468255', 10105), (N'20111110', N'20468255', 10131),
(N'20111110', N'20468255', 10120), (N'20111110', N'49500692', 10122), (N'20111110', N'50208314', 10108),
(N'20111110', N'50208314', 10135), (N'20111110', N'50208314', 10116), (N'20111110', N'50208314', 10127),
(N'20111111', N'20384058', 10116), (N'20111112', N'48009520', 10110), (N'20111112', N'48009520', 10128),
(N'20111112', N'92749715', 10136), (N'20111112', N'30497957', 10104), (N'20111112', N'30497957', 10131),
(N'20111112', N'40766453', 10128), (N'20111112', N'40766453', 10101), (N'20111112', N'40766453', 10117),
(N'20111112', N'40766453', 10110), (N'20111112', N'13970508', 10120), (N'20111113', N'29374957', 10115),
(N'20111113', N'29374957', 10134), (N'20111113', N'69048520', 10104), (N'20111113', N'69048520', 10133),
(N'20111113', N'66038466', 10116), (N'20111114', N'59739352', 10129), (N'20111114', N'59739352', 10111),
(N'20111114', N'29408600', 10121), (N'20111114', N'29408600', 10131), (N'20111114', N'29408600', 10105),
(N'20111114', N'29408600', 10113), (N'20111115', N'20384058', 10127), (N'20111115', N'20384058', 10136),
(N'20111115', N'29374957', 10107), (N'20111115', N'29374957', 10124), (N'20111115', N'62495184', 10107),
(N'20111115', N'62495184', 10134), (N'20111115', N'62495184', 10124), (N'20111115', N'62495184', 10115),
(N'20111115', N'66038466', 10108), (N'20111115', N'66038466', 10135), (N'20111116', N'30804584', 10111),
(N'20111117', N'30804584', 10119), (N'20111117', N'15033814', 10113), (N'20111117', N'15033814', 10121),
(N'20111117', N'15033814', 10132), (N'20111117', N'15033814', 10106), (N'20111117', N'70850607', 10115),
(N'20111117', N'70850607', 10134), (N'20111117', N'40680688', 10108), (N'20111117', N'40680688', 10135),
(N'20111118', N'30804584', 10103), (N'20111118', N'30804584', 10129), (N'20111118', N'94184085', 10107),
(N'20111118', N'94184085', 10135), (N'20111119', N'40384942', 10114), (N'20111119', N'40680688', 10127),
(N'20111119', N'62683004', 10109);
GO
INSERT INTO Admissions.UndergraduateRegistrations(RegistrationDate, StudentNumber, UndergraduateScheduleID)
VALUES(N'20111119', N'62683004', 10135), (N'20111120', N'38400074', 10109), (N'20111121', N'60280584', 10132),
	  (N'20111121', N'60280584', 10106), (N'20111121', N'60280584', 10113), (N'20111121', N'60280584', 10122),
	  (N'20111121', N'40384942', 10104), (N'20111121', N'86039415', 10108), (N'20111122', N'92749715', 10109),
	  (N'20111122', N'20853304', 10111), (N'20111122', N'20853304', 10129), (N'20111122', N'30469577', 10120),
	  (N'20111122', N'30469577', 10105), (N'20111122', N'30469577', 10112), (N'20111122', N'30469577', 10131),
	  (N'20111122', N'28405006', 10103), (N'20111122', N'28405006', 10123), (N'20111122', N'28405006', 10133),
	  (N'20111122', N'28405006', 10114), (N'20111122', N'29749316', 10107), (N'20111122', N'29749316', 10115),
	  (N'20111122', N'29749316', 10125), (N'20111122', N'29749316', 10134), (N'20111122', N'68500862', 10109),
	  (N'20111122', N'68500862', 10127), (N'20111122', N'68500862', 10116), (N'20111122', N'68500862', 10136),
	  (N'20111123', N'20488400', 10101), (N'20111123', N'20488400', 10132), (N'20111123', N'40680688', 10116),
	  (N'20111123', N'86039415', 10127), (N'20111124', N'69048520', 10114), (N'20111124', N'69048520', 10123),
	  (N'20111124', N'60920468', 10114), (N'20111124', N'60920468', 10108), (N'20111124', N'60920468', 10135),
	  (N'20111124', N'60920468', 10125), (N'20111125', N'40384942', 10133), (N'20111125', N'40384942', 10123),
	  (N'20111126', N'62930516', 10116), (N'20111126', N'62930516', 10127), (N'20111126', N'62930516', 10108),
	  (N'20111126', N'62930516', 10135), (N'20111126', N'24203886', 10123), (N'20111126', N'24203886', 10102),
(N'20111126', N'24203886', 10133), (N'20111126', N'24203886', 10114), (N'20111126', N'70850607', 10107),
(N'20111126', N'70850607', 10124), (N'20111127', N'13044726', 10106), (N'20111127', N'94759284', 10114),
(N'20111127', N'94759284', 10101), (N'20111127', N'50284085', 10107), (N'20111127', N'50284085', 10115),
(N'20111127', N'50284085', 10125), (N'20111127', N'50284085', 10134), (N'20111128', N'13044726', 10122),
(N'20111128', N'94759284', 10132), (N'20111128', N'40380046', 10115), (N'20111128', N'40380046', 10107),
(N'20111128', N'40380046', 10125), (N'20111128', N'40380046', 10134), (N'20111128', N'40406858', 10108),
(N'20111128', N'40406858', 10116), (N'20111128', N'40406858', 10125), (N'20111128', N'40406858', 10135),
(N'20111128', N'29749571', 10127), (N'20111128', N'29749571', 10136), (N'20111128', N'29749571', 10109),
(N'20111128', N'29749571', 10116), (N'20111129', N'13044726', 10113), (N'20111129', N'50855061', 10106),
(N'20111129', N'50855061', 10132), (N'20111129', N'94759284', 10122), (N'20111129', N'68284003', 10124),
(N'20111129', N'68284003', 10133), (N'20111129', N'68284003', 10101), (N'20111129', N'68284003', 10114),
(N'20111129', N'86039415', 10116), (N'20111129', N'86039415', 10135), (N'20111130', N'97950225', 10105),
(N'20111130', N'97950225', 10121), (N'20111130', N'13044726', 10132), (N'20111130', N'92741355', 10123),
(N'20111130', N'92741355', 10114), (N'20111130', N'92741355', 10102), (N'20111130', N'92741355', 10133),
(N'20111130', N'69558505', 10124), (N'20111130', N'69558505', 10134), (N'20111201', N'20384058', 10109),
(N'20111201', N'71749336', 10106), (N'20111201', N'71749336', 10132), (N'20111201', N'18260856', 10113),
(N'20111201', N'18260856', 10122), (N'20111201', N'18260856', 10132), (N'20111202', N'71513159', 10105),
(N'20111202', N'82408822', 10131), (N'20111202', N'20486044', 10111), (N'20111202', N'20486044', 10119),
(N'20111202', N'50283048', 10119);
GO
INSERT INTO Admissions.UndergraduateRegistrations(RegistrationDate, StudentNumber, UndergraduateScheduleID)
VALUES(N'20111202', N'50283048', 10129), (N'20111202', N'30384055', 10107), (N'20111202', N'66038466', 10125),
(N'20111203', N'20204862', 10105), (N'20111203', N'20204862', 10131), (N'20111203', N'18260856', 10106),
(N'20111203', N'79272413', 10122), (N'20111203', N'79272413', 10101), (N'20111203', N'79272413', 10114),
(N'20111203', N'79272413', 10132), (N'20111204', N'82580947', 10131), (N'20111204', N'82580947', 10104),
(N'20111204', N'47181753', 10117), (N'20111204', N'20830405', 10103), (N'20111204', N'20830405', 10130),
(N'20111204', N'23930271', 10128), (N'20111204', N'30405979', 10127), (N'20111204', N'30405979', 10136),
(N'20111204', N'29352418', 10110), (N'20111204', N'29352418', 10118), (N'20111204', N'28024825', 10129), 
(N'20111204', N'28024825', 10111), (N'20111204', N'11794630', 10119), (N'20111204', N'30048304', 10109), 
(N'20111204', N'50280596', 10103), (N'20111204', N'50280596', 10111), (N'20111204', N'20480022', 10103),
(N'20111204', N'20480022', 10119), (N'20111204', N'25518410', 10120), (N'20111204', N'28374957', 10130),
(N'20111204', N'17724035', 10111), (N'20111204', N'17724035', 10129), (N'20111204', N'38500685', 10114),
(N'20111204', N'38500685', 10133), (N'20111204', N'38500685', 10123), (N'20111204', N'50183209', 10136),
(N'20111205', N'20384098', 10105), (N'20111205', N'80584005', 10103), (N'20111205', N'80584005', 10130),
(N'20111205', N'35069800', 10119), (N'20111205', N'71513159', 10113), (N'20111205', N'71513159', 10131),
(N'20111205', N'30405979', 10109), (N'20111205', N'82580947', 10120), (N'20111205', N'82580947', 10112),
(N'20111205', N'24094844', 10102), (N'20111205', N'24094844', 10129), (N'20111205', N'16279622', 10117),
(N'20111205', N'16279622', 10101), (N'20111205', N'16279622', 10130), (N'20111205', N'16279622', 10110),
(N'20111205', N'20938405', 10111), (N'20111205', N'25518410', 10130), (N'20111205', N'18550278', 10105),
(N'20111205', N'25518410', 10104), (N'20111205', N'64292862', 10112), (N'20111205', N'64292862', 10120),
(N'20111205', N'64292862', 10104), (N'20111205', N'64292862', 10130), (N'20111205', N'62094115', 10114),
(N'20111205', N'62094115', 10124), (N'20111205', N'62094115', 10133), (N'20111205', N'62094115', 10101),
(N'20111205', N'30384055', 10125), (N'20111205', N'30384055', 10134), (N'20111205', N'30384055', 10115),
(N'20111206', N'29374922', 10110), (N'20111206', N'20486044', 10130), (N'20111206', N'30405979', 10110),
(N'20111206', N'28040830', 10118), (N'20111206', N'29352418', 10128), (N'20111206', N'29352418', 10102),
(N'20111206', N'60283050', 10105), (N'20011206', N'60283050', 10131), (N'20111206', N'20038074', 10114),
(N'20111206', N'20038074', 10103), (N'20111206', N'20038074', 10123), (N'20111206', N'20038074', 10133),
(N'20111206', N'40830484', 10114), (N'20111206', N'40830484', 10105), (N'20111206', N'40830484', 10123),
(N'20111206', N'40830484', 10133), (N'20111206', N'29337594', 10108), (N'20111206', N'29337594', 10135),
(N'20111206', N'29337594', 10116), (N'20111206', N'29337594', 10127), (N'20111207', N'68242862', 10105),
(N'20111207', N'68242862', 10113), (N'20111207', N'68242862', 10131), (N'20111207', N'22485936', 10106),
(N'20111207', N'22485936', 10121), (N'20111207', N'93749524', 10114), (N'20111207', N'93749524', 10132),
(N'20111207', N'93749524', 10101), (N'20111207', N'93749524', 10122), (N'20111207', N'92684602', 10107),
(N'20111207', N'92684602', 10134), (N'20111208', N'82408822', 10113), (N'20111208', N'68242862', 10121),
(N'20111208', N'47181753', 10101), (N'20111208', N'23930271', 10101), (N'20111208', N'40506857', 10112);
GO
INSERT INTO Admissions.UndergraduateRegistrations(RegistrationDate, StudentNumber, UndergraduateScheduleID)
VALUES(N'20111208', N'40506857', 10130), (N'20111208', N'11794630', 10112), (N'20111208', N'30635306', 10112),
	  (N'20111208', N'30635306', 10119), (N'20111208', N'40029736', 10130), (N'20111208', N'40029736', 10104),
	  (N'20111208', N'27394708', 10130), (N'20111208', N'27394708', 10112), (N'20111208', N'18030396', 10105), 
	  (N'20111208', N'18030396', 10120), (N'20111208', N'18030396', 10131), (N'20111208', N'44040448', 10107), 
	  (N'20111208', N'44040448', 10125), (N'20111208', N'44040448', 10115), (N'20111208', N'44040448', 10134),
	  (N'20111208', N'35850845', 10107), (N'20111208', N'35850845', 10134), (N'20111208', N'70384857', 10125), 
	  (N'20111208', N'70384857', 10108), (N'20111208', N'70384857', 10135), (N'20111208', N'50183209', 10109), 
	  (N'20111209', N'39794449', 10106), (N'20111209', N'90132394', 10122), (N'20111209', N'69495411', 10108), 
	  (N'20111209', N'69495411', 10116), (N'20111209', N'69495411', 10125), (N'20111210', N'18550278', 10112), 
	  (N'20111210', N'18550278', 10121), (N'20111210', N'11800686', 10104), (N'20111210', N'11800686', 10130), 
	  (N'20111210', N'37395028', 10106), (N'20111210', N'37395028', 10122), (N'20111210', N'37395028', 10113),
	  (N'20111210', N'38005277', 10104), (N'20111210', N'38005277', 10130), (N'20111210', N'35705808', 10102), 
	  (N'20111210', N'35705808', 10133), (N'20111210', N'40255048', 10107), (N'20111210', N'40255048', 10134), 
	  (N'20111211', N'18073572', 10101), (N'20111211', N'40506857', 10103), (N'20111211', N'28024825', 10102), 
	  (N'20111211', N'28024825', 10118), (N'20111211', N'29740203', 10118), (N'20111211', N'29740203', 10102), 
	  (N'20111211', N'30635306', 10103), (N'20111211', N'30635306', 10130), (N'20111211', N'24094844', 10110),
	  (N'20111211', N'20480022', 10112), (N'20111211', N'20480022', 10130), (N'20111211', N'25518410', 10112), 
	  (N'20111211', N'28374957', 10104), (N'20111211', N'90132394', 10106), (N'20111211', N'90132394', 10132), 
	  (N'20111211', N'28408155', 10107), (N'20111211', N'28408155', 10134), (N'20111211', N'28408155', 10115), 
	  (N'20111211', N'28408155', 10124), (N'20111211', N'94005924', 10115), (N'20111211', N'94005924', 10134), 
	  (N'20111212', N'18073572', 10128), (N'20111212', N'18073572', 10110), (N'20111212', N'29480759', 10101), 
	  (N'20111212', N'50284005', 10111), (N'20111212', N'50284005', 10118), (N'20111212', N'50284005', 10129), 
	  (N'20111212', N'50284005', 10102), (N'20111212', N'94059506', 10102), (N'20111212', N'17724035', 10102), 
	  (N'20111212', N'60804836', 10112), (N'20111212', N'60804836', 10131), (N'20111212', N'60804836', 10104), 
	  (N'20111212', N'60804836', 10120), (N'20111212', N'39794449', 10113), (N'20111212', N'39794449', 10132), 
	  (N'20111212', N'39794449', 10121), (N'20111212', N'35850845', 10115), (N'20111212', N'35850845', 10125), 
	  (N'20111212', N'92495020', 10108), (N'20111212', N'92495020', 10127), (N'20111213', N'28435984', 10107), 
	  (N'20111213', N'28435984', 10115), (N'20111213', N'28435984', 10124), (N'20111213', N'28435984', 10134), 
	  (N'20111213', N'70384857', 10116), (N'20111214', N'82408822', 10105), (N'20111214', N'82408822', 10120), 
	  (N'20111214', N'20486044', 10103), (N'20111214', N'28040830', 10102), (N'20111214', N'28040830', 10110), 
	  (N'20111214', N'29740203', 10128), (N'20111214', N'14197755', 10104), (N'20111214', N'14197755', 10130), 
	  (N'20111214', N'24094844', 10118), (N'20111214', N'22294206', 10104), (N'20111214', N'22294206', 10130), 
	  (N'20111214', N'27394708', 10120), (N'20111214', N'27394708', 10104), (N'20111214', N'50846605', 10127);
GO
INSERT INTO Admissions.UndergraduateRegistrations(RegistrationDate, StudentNumber, UndergraduateScheduleID)
VALUES(N'20111214', N'50846605', 10135), (N'20111214', N'92495020', 10116), (N'20111214', N'92495020', 10135),
      (N'20111215', N'30497957', 10112), (N'20111215', N'40029736', 10112), (N'20111215', N'40255048', 10125), 
	  (N'20111215', N'30497957', 10120), (N'20111215', N'50846605', 10108), (N'20111215', N'50846605', 10116), 
	  (N'20111216', N'83948802', 10107), (N'20111216', N'83948802', 10115), (N'20111216', N'83948802', 10125), 
	  (N'20111216', N'83948802', 10134), (N'20111216', N'39405842', 10125), (N'20111217', N'30048304', 10112), 
	  (N'20111217', N'30048304', 10127), (N'20111217', N'30048304', 10136), (N'20111217', N'50280596', 10129), 
	  (N'20111217', N'29740203', 10110), (N'20111217', N'30733588', 10101), (N'20111217', N'30733588', 10128), 
	  (N'20111217', N'50280596', 10119), (N'20111217', N'20938405', 10119), (N'20111217', N'18550278', 10131), 
	  (N'20111217', N'28351530', 10107), (N'20111217', N'28351530', 10134), (N'20111218', N'66608085', 10118),
	  (N'20111218', N'66608085', 10129), (N'20111218', N'20808642', 10131), (N'20111218', N'20808642', 10120),
	  (N'20111218', N'30485046', 10110), (N'20111218', N'30485046', 10128), (N'20111218', N'30485046', 10101),
	  (N'20111218', N'30485046', 10117), (N'20111218', N'39405842', 10135), (N'20111218', N'39405842', 10108), 
	  (N'20111219', N'92584668', 10106), (N'20111219', N'92584668', 10132), (N'20111219', N'92584668', 10122), 
	  (N'20111219', N'39405842', 10116), (N'20111220', N'66608085', 10111), (N'20111220', N'66608085', 10102),
	  (N'20111220', N'35069800', 10103), (N'20111220', N'35069800', 10130), (N'20111220', N'29374922', 10101), 
	  (N'20111220', N'29374922', 10117), (N'20111220', N'20409220', 10104), (N'20111220', N'20409220', 10130), 
	  (N'20111220', N'20409220', 10112), (N'20111220', N'20409220', 10120), (N'20111220', N'40506857', 10119), 
	  (N'20111220', N'11794630', 10130), (N'20111220', N'11794630', 10103), (N'20111220', N'28068505', 10102), 
	  (N'20111220', N'28068505', 10129), (N'20111220', N'40526839', 10131), (N'20111220', N'40526839', 10105), 
	  (N'20111220', N'92584668', 10113), (N'20111221', N'28351530', 10115), (N'20111221', N'28351530', 10124), 
	  (N'20111222', N'94708257', 10109), (N'20111222', N'94708257', 10110), (N'20111222', N'93749380', 10118), 
	  (N'20111222', N'93749380', 10128), (N'20111222', N'93749380', 10102), (N'20111222', N'93749380', 10110), 
	  (N'20111223', N'93559405', 10105), (N'20111223', N'93559405', 10133), (N'20111223', N'93559405', 10123),
	  (N'20111223', N'93559405', 10114), (N'20111224', N'94708257', 10117), (N'20111224', N'94708257', 10128), 
	  (N'20111224', N'27582647', 10103), (N'20111224', N'27582647', 10129), (N'20111225', N'90132394', 10113), 
	  (N'20111225', N'28495002', 10108), (N'20111225', N'28495002', 10116), (N'20111225', N'28495002', 10125), 
	  (N'20111225', N'28495002', 10135), (N'20111226', N'24928472', 10129), (N'20111226', N'20008405', 10131),
	  (N'20111226', N'20008405', 10104), (N'20111226', N'20384098', 10112), (N'20111226', N'80584005', 10112),
	  (N'20111226', N'35069800', 10112), (N'20111226', N'71513159', 10121), (N'20111226', N'20808642', 10116),
	  (N'20111226', N'20808642', 10104), (N'20111226', N'49500692', 10132), (N'20111226', N'20394051', 10108),
	  (N'20111226', N'20394051', 10127), (N'20111227', N'62830284', 10105), (N'20111227', N'62830284', 10131),
	  (N'20111227', N'62830284', 10113), (N'20111227', N'62830284', 10121), (N'20111227', N'20834086', 10106),
	  (N'20111227', N'20834086', 10113), (N'20111227', N'20834086', 10122), (N'20111227', N'20834086', 10132);
GO
INSERT INTO Admissions.UndergraduateRegistrations(RegistrationDate, StudentNumber, UndergraduateScheduleID)
VALUES(N'20111227', N'22499506', 10114), (N'20111227', N'22499506', 10133), (N'20111227', N'22499506', 10104), (N'20111227', N'94005924', 10107),
	  (N'20111227', N'94005924', 10124), (N'20111227', N'28049285', 10108), (N'20111227', N'28049285', 10135), (N'20111228', N'97596002', 10109),
	  (N'20111228', N'97596002', 10110), (N'20111228', N'97596002', 10117), (N'20111228', N'72938479', 10129), (N'20111228', N'72938479', 10103),
(N'20111228', N'61824668', 10102), (N'20111228', N'61824668', 10129), (N'20111228', N'29480759', 10128), (N'20111228', N'68304005', 10120),
(N'20111228', N'68304005', 10130), (N'20111228', N'30493386', 10106), (N'20111228', N'94059506', 10111), (N'20111228', N'94059506', 10118),
(N'20111228', N'24080394', 10102), (N'20111228', N'24080394', 10111), (N'20111228', N'20394051', 10116), (N'20111229', N'20853304', 10102),
(N'20111229', N'20853304', 10118), (N'20111229', N'82862805', 10105), (N'20111229', N'82862805', 10114), (N'20111229', N'82862805', 10123),
(N'20111229', N'82862805', 10133), (N'20111230', N'68304005', 10112), (N'20111230', N'97596002', 10128), (N'20111230', N'48009520', 10109),
(N'20111230', N'70840584', 10112), (N'20111230', N'72938479', 10119), (N'20111230', N'70840584', 10104), (N'20111230', N'72938479', 10111),
(N'20111230', N'29480759', 10110), (N'20111230', N'61824668', 10118), (N'20111230', N'20384025', 10112), (N'20111230', N'30493386', 10124),
(N'20111230', N'30493386', 10114), (N'20111230', N'25850859', 10135), (N'20111230', N'25850859', 10108), (N'20111230', N'25850859', 10116),
(N'20111230', N'25850859', 10127), (N'20111231', N'47580742', 10106), (N'20111231', N'47580742', 10113), (N'20111231', N'47580742', 10121),
(N'20111231', N'47580742', 10132), (N'20111231', N'13584060', 10106), (N'20111231', N'13584060', 10122), (N'20111231', N'13584060', 10132),
(N'20111231', N'13584060', 10113), (N'20120101', N'84086051', 10113), (N'20120101', N'84086051', 10122), (N'20120101', N'84086051', 10106),
(N'20120101', N'84086051', 10132), (N'20120101', N'24929528', 10104), (N'20120101', N'24929528', 10130), (N'20120102', N'49500692', 10106),
(N'20120102', N'22499506', 10123), (N'20120102', N'49575137', 10107), (N'20120102', N'49575137', 10134), (N'20120102', N'38400074', 10116),
(N'20120102', N'40850049', 10126), (N'20120102', N'64805999', 10109), (N'20120102', N'62082242', 10109), (N'20120102', N'84058040', 10127),
(N'20120102', N'88167413', 10126), (N'20120102', N'69304095', 10137);
GO
INSERT INTO Admissions.UndergraduateRegistrations(RegistrationDate, StudentNumber, UndergraduateScheduleID)
VALUES(N'20120206', N'92739470', 10201), (N'20120208', N'20304050', 10230), (N'20120208', N'80848600', 10202), (N'20120209', N'25518410', 10217),
	  (N'20120210', N'92739473', 10202), (N'20120210', N'97394285', 10205), (N'20120210', N'20049584', 10202), (N'20120214', N'28374957', 10201),
	  (N'20120214', N'20038074', 10221), (N'20120214', N'47181753', 10201), (N'20120214', N'97394285', 10205), (N'20120215', N'20488400', 10201),
	  (N'20120215', N'24094844', 10224), (N'20120216', N'44004850', 10202), (N'20120216', N'92739473', 10217), (N'20120216', N'17749608', 10202),
	  (N'20120217', N'29374922', 10206), (N'20120217', N'29374922', 10205), (N'20120218', N'20384098', 10202), (N'20120218', N'30384055', 10223),
	  (N'20120220', N'18550278', 10216), (N'20120221', N'94059506', 10240), (N'20120221', N'20853304', 10241), (N'20120223', N'20938405', 10204),
	  (N'20120224', N'29473002', 10221), (N'20120224', N'72938479', 10217), (N'20120208', N'20304050', 10230), (N'20120225', N'13970508', 10216),
	  (N'20120226', N'68242862', 10213), (N'20120227', N'47580742', 10212), (N'20120228', N'24928292', 10203), (N'20120228', N'49575137', 10201),
	  (N'20120228', N'20384098', 10203), (N'20120228', N'40766453', 10225), (N'20120228', N'94059506', 10211), (N'20110228', N'82580947', 10212),
	  (N'20120228', N'40029736', 10211), (N'20120228', N'61824668', 10215), (N'20120228', N'70840584', 10216), (N'20120228', N'50846605', 10222), 
	  (N'20120228', N'30485046', 10232), (N'20120228', N'61824668', 10240), (N'20120228', N'28024825', 10241), (N'20120229', N'20049584', 10230),
	  (N'20120301', N'28024825', 10221), (N'20120301', N'94184085', 10201), (N'20120301', N'92684602', 10218), (N'20120301', N'63840950', 10201), 
	  (N'20120301', N'20749703', 10241), (N'20120301', N'25518410', 10232), (N'20120301', N'97596002', 10205), (N'20120302', N'92741355', 10250),
	  (N'20120302', N'37395028', 10202), (N'20120302', N'16279622', 10210), (N'20120208', N'20304050', 10230), (N'20120302', N'60294086', 10214), 
	  (N'20120303', N'29400359', 10201), (N'20120303', N'38400074', 10203), (N'20120303', N'80839048', 10201), (N'20120303', N'92847957', 10207),
	  (N'20120303', N'92270397', 10218), (N'20120303', N'40766453', 10210), (N'20120304', N'20480022', 10137), (N'20120304', N'18550278', 10230),
	  (N'20120304', N'30733588', 10232), (N'20120304', N'20486025', 10137), (N'20120304', N'92749715', 10201), (N'20120304', N'48009520', 10253),
	  (N'20120304', N'20304050', 10230), (N'20120304', N'35069800', 10137), (N'20120305', N'50855061', 10201), (N'20120305', N'29400359', 10203),
	  (N'20120305', N'29408600', 10218), (N'20120305', N'29400359', 10230), (N'20120305', N'16279622', 10205), (N'20120305', N'50183209', 10214),
	  (N'20120306', N'13048039', 10211), (N'20120306', N'20394051', 10223), (N'20120307', N'30733588', 10203), (N'20120307', N'92739473', 10205),
	  (N'20120307', N'80839048', 10227), (N'20120307', N'30733588', 10204), (N'20120307', N'35705808', 10252), (N'20120308', N'27495006', 10201),
	  (N'20120308', N'14197755', 10212), (N'20120308', N'38050586', 10223), (N'20120310', N'69495411', 10202), (N'20120310', N'50855061', 10203),
	  (N'20120310', N'29408600', 10213), (N'20120310', N'18073572', 10204), (N'20120310', N'30384055', 10207), (N'20120310', N'20038074', 10249),
	  (N'20120310', N'20486025', 10215), (N'20120310', N'93749380', 10222), (N'20120310', N'39405842', 10252), (N'20120310', N'17724035', 10215),
	  (N'20120310', N'29352418', 10253), (N'20120310', N'29480759', 10221), (N'20120310', N'66608085', 10222), (N'20120310', N'17724035', 10224),
	  (N'20120310', N'30384055', 10229), (N'20120310', N'66038466', 10232), (N'20120310', N'20468255', 10252), (N'20120310', N'49500692', 10230),
	  (N'20120310', N'30384055', 10236), (N'20120310', N'69495411', 10242), (N'20120311', N'30485046', 10210), (N'20120311', N'70533722', 10220),
	  (N'20120312', N'94184085', 10203), (N'20120312', N'11800686', 10201), (N'20120312', N'93749380', 10246), (N'20120312', N'17724035', 10253), 
	  (N'20120312', N'82408822', 10212), (N'20120310', N'40506857', 10241), (N'20120312', N'66608085', 10211), (N'20120312', N'20384025', 10225),
	  (N'20120312', N'61824668', 10253), (N'20120312', N'27114857', 10212), (N'20120312', N'72938479', 10227), (N'20120312', N'18550278', 10213), 
	  (N'20120312', N'59739352', 10249), (N'20120312', N'30635306', 10216), (N'20120313', N'80848600', 10250), (N'20120313', N'18030396', 10212),
	  (N'20120313', N'11794630', 10210), (N'20120313', N'62830284', 10208), (N'20120313', N'20204862', 10253), (N'20120313', N'25518410', 10221),
	  (N'20120313', N'18260856', 10220), (N'20120313', N'28495002', 10233), (N'20120313', N'39794449', 10235), (N'20120313', N'30048304', 10222);
GO
INSERT INTO Admissions.UndergraduateRegistrations(RegistrationDate, StudentNumber, UndergraduateScheduleID)
VALUES(N'20120313', N'22485936', 10241), (N'20120313', N'59739352', 10205), (N'20120313', N'30405979', 10208), (N'20120314', N'37395028', 10253),
	  (N'20120314', N'50280596', 10221), (N'20120314', N'68304005', 10137), (N'20120314', N'38500685', 10249), (N'20120314', N'29352418', 10221),
	  (N'20120314', N'44040448', 10223), (N'20120314', N'28040830', 10232), (N'20120315', N'44004850', 10211), (N'20120315', N'28374957', 10208),
	  (N'20120315', N'30280635', 10213), (N'20120315', N'62094115', 10204), (N'20120315', N'29749571', 10225), (N'20120315', N'20204862', 10212), 
	  (N'20120315', N'80584005', 10232), (N'20120315', N'40029736', 10236), (N'20120316', N'27948146', 10250), (N'20120316', N'24850033', 10213),
	  (N'20120316', N'70840584', 10137), (N'20120316', N'71749336', 10213), (N'20120316', N'80584005', 10203), (N'20120316', N'20409220', 10222), 
	  (N'20120316', N'28374957', 10217), (N'20120317', N'69048520', 10221), (N'20120317', N'39794449', 10205), (N'20120317', N'20808642', 10222),
	  (N'20120317', N'68284003', 10204), (N'20120317', N'53397060', 10225), (N'20120317', N'27582647', 10220), (N'20120317', N'92739473', 10222),
	  (N'20120317', N'39405842', 10225), (N'20120317', N'20938405', 10221), (N'20120317', N'97596002', 10233), (N'20120317', N'80839048', 10240),
	  (N'20120318', N'66608085', 10229), (N'20120318', N'92794735', 10221), (N'20120318', N'23930271', 10205), (N'20120318', N'20486044', 10221),
	  (N'20120318', N'40406858', 10225), (N'20120318', N'20808642', 10137), (N'20120318', N'35069800', 10222), (N'20120318', N'20400305', 10208),
	  (N'20120318', N'13044726', 10213), (N'20120318', N'97596002', 10214), (N'20120318', N'30048304', 10221), (N'20120318', N'24850033', 10241), 
	  (N'20120318', N'92684602', 10203), (N'20120318', N'13584060', 10241), (N'20120318', N'62830284', 10137), (N'20120319', N'70840584', 10235),
	  (N'20120322', N'80839048', 10203), (N'20120322', N'20486025', 10222), (N'20120322', N'13970508', 10137), (N'20120322', N'22881251', 10225),
	  (N'20120322', N'62495184', 10249), (N'20120322', N'20304050', 10227), (N'20120322', N'20840640', 10221), (N'20120322', N'24094844', 10245),
	  (N'20120323', N'70533722', 10225), (N'20120323', N'29408600', 10137), (N'20120323', N'94708257', 10230), (N'20120323', N'20038074', 10226),
	  (N'20120324', N'92684602', 10227), (N'20120324', N'20049584', 10213), (N'20120324', N'60283050', 10220), (N'20120324', N'20840640', 10214),
	  (N'20120324', N'24094844', 10229), (N'20120324', N'92739473', 10231), (N'20120324', N'18073572', 10237), (N'20120324', N'29749571', 10229),
	  (N'20120324', N'13044726', 10225), (N'20120324', N'13044726', 10205), (N'20120325', N'49575137', 10203), (N'20120325', N'47181753', 10209),
	  (N'20120325', N'68500862', 10204), (N'20120325', N'40506857', 10232), (N'20120325', N'93749380', 10233), (N'20120325', N'17749608', 10225),
	  (N'20120325', N'27114857', 10237), (N'20120325', N'16279622', 10241), (N'20120327', N'25518410', 10210), (N'20120326', N'29681704', 10249),
	  (N'20120326', N'28405006', 10253), (N'20120326', N'50284005', 10245), (N'20120326', N'92684602', 10201), (N'20120326', N'70533722', 10215),
	  (N'20120326', N'28408155', 10226), (N'20120326', N'66608085', 10244), (N'20120327', N'90132394', 10249), (N'20120327', N'24850033', 10231),
	  (N'20120327', N'28374957', 10232), (N'20120327', N'97950225', 10213), (N'20120327', N'13048039', 10214), (N'20120327', N'24080394', 10238),
	  (N'20120325', N'20486050', 10225), (N'20120328', N'20486050', 10230), (N'20120328', N'70384857', 10253), (N'20120327', N'50247294', 10238);
GO
INSERT INTO Admissions.UndergraduateRegistrations(RegistrationDate, StudentNumber, UndergraduateScheduleID)
VALUES(N'20120327', N'24080394', 10239), (N'20120327', N'22982504', 10240), (N'20120327', N'94059506', 10241), (N'20120327', N'40850049', 10236),
      (N'20120327', N'94759284', 10225), (N'20120328', N'24094844', 10236), (N'20120328', N'28068505', 10217), (N'20120328', N'29400359', 10137),
	  (N'20120328', N'20830405', 10201), (N'20120328', N'66038466', 10218), (N'20120328', N'61824668', 10244), (N'20120328', N'30280635', 10248),
	  (N'20120328', N'35850845', 10229), (N'20120328', N'40407502', 10230), (N'20120328', N'66038466', 10234), (N'20120328', N'62830284', 10231),
	  (N'20120328', N'62830284', 10205), (N'20120328', N'30485046', 10217), (N'20120329', N'29749316', 10242), (N'20120429', N'68304005', 10217),
	  (N'20120329', N'40680688', 10137), (N'20120329', N'24850033', 10205), (N'20120329', N'22485936', 10213), (N'20120329', N'70840584', 10220),
	  (N'20120329', N'62930516', 10225), (N'20120329', N'22803048', 10215), (N'20120329', N'50283048', 10221), (N'20120329', N'20400305', 10216),
	  (N'20120329', N'13970508', 10225), (N'20120329', N'50284005', 10222), (N'20120329', N'48009520', 10224), (N'20120329', N'18073572', 10244),
	  (N'20120329', N'29403095', 10222), (N'20120329', N'22803048', 10254), (N'20120329', N'20840640', 10224), (N'20120329', N'28024825', 10225),
	  (N'20120329', N'17749608', 10249), (N'20120329', N'40830484', 10229), (N'20120329', N'64292862', 10231), (N'20120329', N'20480022', 10234),
	  (N'20120329', N'60920468', 10236), (N'20120329', N'68304005', 10241), (N'20120329', N'94708257', 10244), (N'20120329', N'64292862', 10230),
	  (N'20120330', N'50284005', 10237), (N'20120330', N'38050586', 10226), (N'20120330', N'18073572', 10223), (N'20120330', N'40766453', 10238),
	  (N'20120330', N'23930271', 10248), (N'20120330', N'20394051', 10219), (N'20120330', N'23930271', 10227), (N'20120330', N'24929528', 10248),
	  (N'20120330', N'48009520', 10254), (N'20120330', N'27394708', 10222), (N'20120330', N'24094844', 10211), (N'20120330', N'92794735', 10212),
	  (N'20120330', N'28408520', 10204), (N'20120330', N'20486025', 10249), (N'20120330', N'20204862', 10227), (N'20120330', N'35069800', 10230),
	  (N'20120330', N'94708257', 10217), (N'20120330', N'22294206', 10217), (N'20120331', N'22803048', 10205), (N'20120331', N'18030396', 10251),
	  (N'20120331', N'22294206', 10248), (N'20120331', N'40284305', 10209), (N'20120331', N'30804584', 10212), (N'20120331', N'30497957', 10249),
	  (N'20120331', N'20749703', 10225), (N'20120331', N'17724035', 10245), (N'20120331', N'29749316', 10220), (N'20120331', N'24795711', 10225),
	  (N'20120331', N'82862805', 10226), (N'20120331', N'94708257', 10253), (N'20120331', N'92794735', 10238), (N'20120331', N'72938479', 10230),
	  (N'20120331', N'30497957', 10232), (N'20120331', N'13048039', 10254), (N'20120331', N'92847957', 10238), (N'20120331', N'92847957', 10239),
	  (N'20120331', N'29374922', 10206), (N'20120331', N'92794735', 10239), (N'20120331', N'20468255', 10245), (N'20120331', N'29222420', 10242),
	  (N'20120401', N'30405069', 10237), (N'20120401', N'63840950', 10203), (N'20120401', N'30733588', 10248), (N'20120401', N'38005277', 10233),
	  (N'20120401', N'29740203', 10222), (N'20120401', N'59739352', 10224), (N'20120401', N'11794630', 10230), (N'20120401', N'27114857', 10245),
	  (N'20120402', N'92794735', 10232), (N'20120402', N'50183209', 10253), (N'20120402', N'59739352', 10221), (N'20120402', N'20480022', 10222),
	  (N'20120402', N'50283048', 10212), (N'20120402', N'30469577', 10213), (N'20120402', N'24080394', 10227), (N'20120402', N'88130480', 10214);
GO
INSERT INTO Admissions.UndergraduateRegistrations(RegistrationDate, StudentNumber, UndergraduateScheduleID) 
VALUES(N'20120402', N'13584060', 10213), (N'20120402', N'95060506', 10204), (N'20120402', N'22499506', 10226), (N'20120402', N'20940035', 10227),
      (N'20120402', N'35850845', 10236), (N'20120403', N'35069800', 10210), (N'20120403', N'30405069', 10203), (N'20120403', N'11794630', 10217),
	  (N'20120403', N'40407502', 10231), (N'20120403', N'20486044', 10232), (N'20120403', N'88130480', 10251), (N'20120317', N'29480759', 10217),
	  (N'20120404', N'60283050', 10233), (N'20120404', N'20480022', 10232), (N'20120404', N'37395028', 10220), (N'20120404', N'62094115', 10249),
	  (N'20120404', N'14197755', 10227), (N'20120404', N'30048304', 10216), (N'20120404', N'29403095', 10253), (N'20120404', N'22803048', 10210),
	  (N'20120404', N'62082242', 10216), (N'20120404', N'97596002', 10222), (N'20120404', N'29352418', 10254), (N'20120404', N'68242862', 10240),
	  (N'20120404', N'40407502', 10241), (N'20120404', N'20486044', 10217), (N'20120404', N'72938479', 10244), (N'20120404', N'29749316', 10242),
	  (N'20120416', N'16279622', 10217), (N'20120405', N'29681704', 10242), (N'20120405', N'22881251', 10236), (N'20120405', N'20394051', 10202),
	  (N'20120405', N'20468255', 10222), (N'20120405', N'14197755', 10248), (N'20120405', N'44004850', 10254), (N'20120405', N'20394051', 10218),
	  (N'20120405', N'20961160', 10248), (N'20120406', N'11800686', 10203), (N'20120406', N'29352418', 10211), (N'20120406', N'20830405', 10230),
	  (N'20120406', N'92794735', 10254), (N'20120406', N'88130480', 10221), (N'20120406', N'50247294', 10208), (N'20120406', N'22982504', 10223),
	  (N'20120407', N'22982504', 10211), (N'20120407', N'37395028', 10213), (N'20120407', N'40830484', 10226), (N'20120408', N'20940035', 10248),
	  (N'20120408', N'29480759', 10230), (N'20120408', N'24928472', 10244), (N'20120409', N'20384025', 10247), (N'20120409', N'90132394', 10241),
	  (N'20120409', N'35705808', 10248), (N'20120409', N'29740203', 10235), (N'20120410', N'60804836', 10247), (N'20120410', N'60804836', 10241),
	  (N'20120410', N'20468255', 10215), (N'20120410', N'93749524', 10229), (N'20120410', N'20938405', 10254), (N'20120410', N'20204862', 10248),
	  (N'20120410', N'29480759', 10249), (N'20120410', N'94708257', 10214), (N'20120410', N'64805999', 10216), (N'20120410', N'20468255', 10230),
	  (N'20120410', N'22982504', 10216), (N'20120410', N'20853304', 10221), (N'20120410', N'70840584', 10247), (N'20120410', N'40029736', 10230),
	  (N'20120410', N'13970508', 10217), (N'20120410', N'27582647', 10221), (N'20120410', N'29374922', 10247), (N'20120410', N'29352418', 10224),
	  (N'20120410', N'92847957', 10223), (N'20120410', N'92739470', 10225), (N'20120410', N'24929528', 10205), (N'20120410', N'94708257', 10225),
	  (N'20120410', N'40766453', 10224), (N'20120410', N'40506857', 10225), (N'20120410', N'40766453', 10229), (N'20120410', N'40384942', 10225),
	  (N'20120410', N'40029736', 10229), (N'20120410', N'40830484', 10236), (N'20120410', N'50284085', 10229), (N'20120410', N'30485046', 10231),
	  (N'20120410', N'24929528', 10232), (N'20120410', N'97485006', 10233), (N'20120410', N'20049584', 10250), (N'20120410', N'18260856', 10215),
	  (N'20120415', N'64885004', 10225), (N'20120410', N'29374922', 10217), (N'20120410', N'30493386', 10225), (N'20120410', N'84086051', 10250),
	  (N'20120410', N'40029736', 10214), (N'20120410', N'50280596', 10242), (N'20120411', N'88130480', 10241), (N'20120411', N'71513159', 10247),
	  (N'20120411', N'20409220', 10212), (N'20120411', N'29337594', 10220);
GO
INSERT INTO Admissions.UndergraduateRegistrations(RegistrationDate, StudentNumber, UndergraduateScheduleID) 
VALUES(N'20120411', N'79272413', 10241), (N'20120411', N'60294086', 10248),
(N'20120412', N'71749336', 10228), (N'20120412', N'28068505', 10227),
(N'20120412', N'82408822', 10223), (N'20120412', N'20468255', 10212),
(N'20120412', N'22294206', 10227), (N'20120412', N'28068505', 10248),
(N'20120412', N'28351530', 10225), (N'20120412', N'20830405', 10254),
(N'20120412', N'97485006', 10238), (N'20120412', N'97485006', 10239),
(N'20120412', N'20940035', 10225), (N'20120412', N'68242862', 10250),
(N'20120412', N'20830405', 10227), (N'20120412', N'29222420', 10212),
(N'20120412', N'82408822', 10247), (N'20120412', N'20834086', 10241),
(N'20120412', N'20384058', 10204), (N'20120412', N'40029736', 10254),
(N'20120412', N'44040448', 10220), (N'20120412', N'97394285', 10214),
(N'20120412', N'50280596', 10215),
(N'20120412', N'71749336', 10223),
(N'20120413', N'29352418', 10214),
(N'20120413', N'95060506', 10216),
(N'20120413', N'24080394', 10202),
(N'20120413', N'92739470', 10203),
(N'20120413', N'92270397', 10210),
(N'20120413', N'13970508', 10205),
(N'20120413', N'84086051', 10213),
(N'20120413', N'28024825', 10228),
(N'20120413', N'28024825', 10232),
(N'20120413', N'93559405', 10233),
(N'20120413', N'37395028', 10235),
(N'20120413', N'17749608', 10241),
(N'20120413', N'40766453', 10244),
(N'20120413', N'11800686', 10244),
(N'20120413', N'14197755', 10238),
(N'20120413', N'14197755', 10239),
(N'20120413', N'29374957', 10225),
(N'20120413', N'24928472', 10236),
(N'20120413', N'94059506', 10237),
(N'20120414', N'15033814', 10235),
(N'20120414', N'82408822', 10241),
(N'20120414', N'29740203', 10234),
(N'20120414', N'48009520', 10210),
(N'20120414', N'79272413', 10225),
(N'20120414', N'20488400', 10203),
(N'20120414', N'18030396', 10221),
(N'20120414', N'22294206', 10244),
(N'20120414', N'29222420', 10247),
(N'20120414', N'80584005', 10210),
(N'20120414', N'62683004', 10204),
(N'20120414', N'20940035', 10227),
(N'20120503', N'24795711', 10217),
(N'20120414', N'16279622', 10204),
(N'20120414', N'60283050', 10248),
(N'20120414', N'38005277', 10227),
(N'20120414', N'40526839', 10233),
(N'20120414', N'13048039', 10224),
(N'20120414', N'18260856', 10250),
(N'20120414', N'30804584', 10243),
(N'20120414', N'62495184', 10233),
(N'20120414', N'63840950', 10244),
(N'20120425', N'93749380', 10238),
(N'20120420', N'93749380', 10239),
(N'20120427', N'23930271', 10217),
(N'20120427', N'20853304', 10244),
(N'20120415', N'22803048', 10225),
(N'20120415', N'50284005', 10211),
(N'20120415', N'29473002', 10217),
(N'20120415', N'29222420', 10216),
(N'20120415', N'40407502', 10211),
(N'20120415', N'60804836', 10244),
(N'20120415', N'20808642', 10212),
(N'20120415', N'64292862', 10211),
(N'20120415', N'97394285', 10228),
(N'20120415', N'20961160', 10227),
(N'20120415', N'80284060', 10241),
(N'20120415', N'17724035', 10238),
(N'20120415', N'11794630', 10241),
(N'20120415', N'40526839', 10244),
(N'20120415', N'40384942', 10240),
(N'20120415', N'30469577', 10245),
(N'20120415', N'17724035', 10239),
(N'20120415', N'50846605', 10241),
(N'20120327', N'97394285', 10217),
(N'20120415', N'50283048', 10209),
(N'20120416', N'11800686', 10205),
(N'20120416', N'35705808', 10227),
(N'20120416', N'27483004', 10228),
(N'20120416', N'60280584', 10225),
(N'20120416', N'30405069', 10229),
(N'20120416', N'27582647', 10248),
(N'20120416', N'40284305', 10210),
(N'20120416', N'20384025', 10216),
(N'20120416', N'44004850', 10250),
(N'20120416', N'94184085', 10242),
(N'20120417', N'92270397', 10224);
GO
INSERT INTO Admissions.UndergraduateRegistrations(RegistrationDate, StudentNumber, UndergraduateScheduleID) 
VALUES(N'20120417', N'71513159', 10213),
(N'20120417', N'92739473', 10214),
(N'20120417', N'20384098', 10244),
(N'20120417', N'20384025', 10241),
(N'20120417', N'24795711', 10205),
(N'20120417', N'20938405', 10241),
(N'20120417', N'38400074', 10248),
(N'20120417', N'17724035', 10228),
(N'20120417', N'24929528', 10202),
(N'20120417', N'20204862', 10239),
(N'20120417', N'50280596', 10232),
(N'20120417', N'20204862', 10238),
(N'20120417', N'62495184', 10240),
(N'20120418', N'20488400', 10250),
(N'20120418', N'66038466', 10241),
(N'20120418', N'80284060', 10211),
(N'20120418', N'20008405', 10249),
(N'20120418', N'18073572', 10215),
(N'20120418', N'40680688', 10223),
(N'20120418', N'64292862', 10216),
(N'20120418', N'29473002', 10247),
(N'20120418', N'97596002', 10244),
(N'20120418', N'35069800', 10215),
(N'20120418', N'30485046', 10247),
(N'20120418', N'28408520', 10216),
(N'20120418', N'97950225', 10244),
(N'20120418', N'28040830', 10221),
(N'20120418', N'59739352', 10251),
(N'20120418', N'30497957', 10247),
(N'20120418', N'50283048', 10245),
(N'20120418', N'25850859', 10223),
(N'20120418', N'30469577', 10247),
(N'20120418', N'20486025', 10232),
(N'20120418', N'28049285', 10230),
(N'20120418', N'82580947', 10232),
(N'20120418', N'20049584', 10244),
(N'20120418', N'20409220', 10234),
(N'20120418', N'40284305', 10224),
(N'20120418', N'20409220', 10225),
(N'20120418', N'28040830', 10244),
(N'20120418', N'69048520', 10224),
(N'20120418', N'22881251', 10229),
(N'20120418', N'50247294', 10208),
(N'20120418', N'16279622', 10225),
(N'20120418', N'60920468', 10229),
(N'20120418', N'30405979', 10252),
(N'20120419', N'82580947', 10221),
(N'20120419', N'27394708', 10244),
(N'20120419', N'28068505', 10217),
(N'20120419', N'30493386', 10217),
(N'20120419', N'70384857', 10215),
(N'20120419', N'61824668', 10247),
(N'20120419', N'30469577', 10231),
(N'20120419', N'25506037', 10213),
(N'20120419', N'27394708', 10228),
(N'20120420', N'40506857', 10220),
(N'20120420', N'24929528', 10204),
(N'20120420', N'27114857', 10247),
(N'20120420', N'93749524', 10231),
(N'20120420', N'18550278', 10244),
(N'20120420', N'17749608', 10238),
(N'20120420', N'17749608', 10239),
(N'20120420', N'59739352', 10245),
(N'20120421', N'51967394', 10209),
(N'20120421', N'20008405', 10227),
(N'20120421', N'48009520', 10214),
(N'20120421', N'20808642', 10231),
(N'20120421', N'50284005', 10214),
(N'20120421', N'40255048', 10233),
(N'20120421', N'68304005', 10242),
(N'20120422', N'80839048', 10217),
(N'20120422', N'29222420', 10245),
(N'20120422', N'18550278', 10244),
(N'20120422', N'69048520', 10238),
(N'20120422', N'69048520', 10239),
(N'20120422', N'80284060', 10237),
(N'20120422', N'29374922', 10210),
(N'20120422', N'27114857', 10216),
(N'20120422', N'51967394', 10228),
(N'20120422', N'20283405', 10221),
(N'20120422', N'50283048', 10225),
(N'20120422', N'22499506', 10231),
(N'20120422', N'30493386', 10241),
(N'20120422', N'72938479', 10229),
(N'20120423', N'20940035', 10248),
(N'20120423', N'13024466', 10210),
(N'20120423', N'18030396', 10249),
(N'20120423', N'50283048', 10225),
(N'20120423', N'66608085', 10230),
(N'20120424', N'20853304', 10326),
(N'20120424', N'30469577', 10220),
(N'20120425', N'92684602', 10229),
(N'20120425', N'13584060', 10225),
(N'20120425', N'27582647', 10216),
(N'20120425', N'11794630', 10238),
(N'20120425', N'11794630', 10239),
(N'20120425', N'60920468', 10243),
(N'20120426', N'40526839', 10249),
(N'20120426', N'60283050', 10240),
(N'20120427', N'62830284', 10217);
GO
INSERT INTO Admissions.UndergraduateRegistrations(RegistrationDate, StudentNumber, UndergraduateScheduleID) 
VALUES(N'20120427', N'97950225', 10231),
(N'20120427', N'97950225', 10230),
(N'20120427', N'94759284', 10231),
(N'20120427', N'30635306', 10217),
(N'20120427', N'92847957', 10230),
(N'20120427', N'29740203', 10245),
(N'20120427', N'20808642', 10238),
(N'20120427', N'20808642', 10239),
(N'20120428', N'28049285', 10249),
(N'20120428', N'92270397', 10209),
(N'20120428', N'69048520', 10251),
(N'20120428', N'60280584', 10228),
(N'20120428', N'27495006', 10229),
(N'20120428', N'30048304', 10251),
(N'20120428', N'28068505', 10225),
(N'20120428', N'20940035', 10217),
(N'20120428', N'20283405', 10251),
(N'20120429', N'50284085', 10233),
(N'20120429', N'15033814', 10213),
(N'20120429', N'27394708', 10220),
(N'20120429', N'92739470', 10240),
(N'20120429', N'93749524', 10231),
(N'20120429', N'20486044', 10223),
(N'20120430', N'97950225', 10247),
(N'20120430', N'29749316', 10209),
(N'20120430', N'84086051', 10251),
(N'20120430', N'53397060', 10228),
(N'20120430', N'84058040', 10223),
(N'20120430', N'24928472', 10250),
(N'20120430', N'20853304', 10225),
(N'20120501', N'30635306', 10203),
(N'20120501', N'60804836', 10212),
(N'20120501', N'29403095', 10204),
(N'20120501', N'94059506', 10245),
(N'20120501', N'28435984', 10228),
(N'20120501', N'24795711', 10240),
(N'20120501', N'25518410', 10204),
(N'20120501', N'30804584', 10215),
(N'20120501', N'30804584', 10231),
(N'20120501', N'60280584', 10231),
(N'20120501', N'84086051', 10221),
(N'20120501', N'60283050', 10240),
(N'20120501', N'82580947', 10242),
(N'20120501', N'40506857', 10221),
(N'20120502', N'27495006', 10227),
(N'20120502', N'20940035', 10241),
(N'20120502', N'24795711', 10247),
(N'20120502', N'50247294', 10231),
(N'20120502', N'30497957', 10217),
(N'20120502', N'20840640', 10251),
(N'20120502', N'40380046', 10230),
(N'20120502', N'20938405', 10326),
(N'20120502', N'80284060', 10225),
(N'20120502', N'22803048', 10224),
(N'20120502', N'18030396', 10209),
(N'20120502', N'28049285', 10230),
(N'20120502', N'50247294', 10247),
(N'20120502', N'20938405', 10217),
(N'20120502', N'44040448', 10334),
(N'20120502', N'63840950', 10231),
(N'20120503', N'92741355', 10238),
(N'20120503', N'92741355', 10239),
(N'20120503', N'80584005', 10205),
(N'20120503', N'68304005', 10236),
(N'20120504', N'71513159', 10216),
(N'20120505', N'28374957', 10227),
(N'20120505', N'29473002', 10326),
(N'20120505', N'92749715', 10227),
(N'20120505', N'20488400', 10223),
(N'20120505', N'18550278', 10231),
(N'20120506', N'29374922', 10240);
GO
INSERT INTO Admissions.UndergraduateRegistrations(RegistrationDate, StudentNumber, UndergraduateScheduleID) 
VALUES(N'20120707', N'60280584', 10303),
(N'20120707', N'66608085', 10309),
(N'20120707', N'20488400', 10303),
(N'20120707', N'24795711', 10330),
(N'20120707', N'40850049', 10325),
(N'20120707', N'40407502', 10341),
(N'20120707', N'24795711', 10331),
(N'20120707', N'30635306', 10301),
(N'20120707', N'72938479', 10316),
(N'20120708', N'30469577', 10342),
(N'20120707', N'94184085', 10311),
(N'20120707', N'35705808', 10303),
(N'20120708', N'64805999', 10309),
(N'20120708', N'20834086', 10303),
(N'20120708', N'29480759', 10326),
(N'20120708', N'24203886', 10303),
(N'20120708', N'30493386', 10303),
(N'20120708', N'61824668', 10341),
(N'20120708', N'27582647', 10339),
(N'20120708', N'59739352', 10338),
(N'20120708', N'69558505', 10303),
(N'20120708', N'61824668', 10305),
(N'20120708', N'64885004', 10313),
(N'20120708', N'64805999', 10310),
(N'20120708', N'50183209', 10305),
(N'20120708', N'92495020', 10306),
(N'20120708', N'30485046', 10342),
(N'20120708', N'29337594', 10314),
(N'20120709', N'61824668', 10330),
(N'20120709', N'17724035', 10341),
(N'20120709', N'61824668', 10331),
(N'20120709', N'69495411', 10321),
(N'20120709', N'68284003', 10303),
(N'20120709', N'30405979', 10305),
(N'20120709', N'88130480', 10329),
(N'20120709', N'20938405', 10338),
(N'20120709', N'24928472', 10325),
(N'20120710', N'24795711', 10332),
(N'20120710', N'20480022', 10305),
(N'20120710', N'60294086', 10315),
(N'20120710', N'92739473', 10341),
(N'20120710', N'92739473', 10342),
(N'20120710', N'20938405', 10316),
(N'20120710', N'20938405', 10317),
(N'20120710', N'20853304', 10338),
(N'20120710', N'13024466', 10315),
(N'20120711', N'38050586', 10303),
(N'20120711', N'94059506', 10330),
(N'20120711', N'94059506', 10331),
(N'20120711', N'22499506', 10328),
(N'20120711', N'92270397', 10329),
(N'20120712', N'71749336', 10302),
(N'20120712', N'40830484', 10303),
(N'20120712', N'29480759', 10338),
(N'20120712', N'30280635', 10315),
(N'20120712', N'29374922', 10330),
(N'20120712', N'30493386', 10327),
(N'20120712', N'29374922', 10331),
(N'20120712', N'50284005', 10341),
(N'20120712', N'92739470', 10328),
(N'20120712', N'94005924', 10315),
(N'20120712', N'92684602', 10324),
(N'20120712', N'28068505', 10337),
(N'20120712', N'60283050', 10330),
(N'20120712', N'60283050', 10331),
(N'20120713', N'20940035', 10327),
(N'20120713', N'40407502', 10342),
(N'20120713', N'62094115', 10327),
(N'20120713', N'38500685', 10328),
(N'20120713', N'29352418', 10340),
(N'20120713', N'48009520', 10341),
(N'20120713', N'25506037', 10324),
(N'20120713', N'40680688', 10308),
(N'20120713', N'13024466', 10324),
(N'20120713', N'20749703', 10303),
(N'20120713', N'82580947', 10305),
(N'20120713', N'40284305', 10329),
(N'20120713', N'64292862', 10342),
(N'20120713', N'20840640', 10338),
(N'20120713', N'22982504', 10330),
(N'20120713', N'40407502', 10341),
(N'20120713', N'22982504', 10331),
(N'20120713', N'29749316', 10321),
(N'20120714', N'29400035', 10303),
(N'20120714', N'17724035', 10307),
(N'20120714', N'92739470', 10330),
(N'20120714', N'48009520', 10341),
(N'20120714', N'20486044', 10309),
(N'20120714', N'20486044', 10310),
(N'20120714', N'27582647', 10342),
(N'20120714', N'92739470', 10331),
(N'20120714', N'22803048', 10341),
(N'20120714', N'93749524', 10316),
(N'20120714', N'93749524', 10317),
(N'20120715', N'92684602', 10319),
(N'20120715', N'18073572', 10332),
(N'20120715', N'50284085', 10324),
(N'20120715', N'94708257', 10341),
(N'20120715', N'20840051', 10338),
(N'20120715', N'38400074', 10305),
(N'20120715', N'80584005', 10311),
(N'20120715', N'20840640', 10305),
(N'20120716', N'20940035', 10303),
(N'20120716', N'20808642', 10307),
(N'20120716', N'13970508', 10313),
(N'20120716', N'68500862', 10314),
(N'20120717', N'59739352', 10310),
(N'20120717', N'27582647', 10341),
(N'20120717', N'30804584', 10342),
(N'20120717', N'22499506', 10313),
(N'20120717', N'20853304', 10310),
(N'20120717', N'20853304', 10301),
(N'20120717', N'48009520', 10312),
(N'20120717', N'80848600', 10303),
(N'20120717', N'84086051', 10335),
(N'20120717', N'50855061', 10303),
(N'20120717', N'80839048', 10303),
(N'20120717', N'59739352', 10309),
(N'20120717', N'28408155', 10303),
(N'20120717', N'29480759', 10306),
(N'20120717', N'29222420', 10307),
(N'20120717', N'20853304', 10309),
(N'20120717', N'68500862', 10315),
(N'20120717', N'50208314', 10318),
(N'20120717', N'24928292', 10314),
(N'20120717', N'20938405', 10301),
(N'20120717', N'17749608', 10328),
(N'20120717', N'20830405', 10320),
(N'20120717', N'28351530', 10319);
GO
INSERT INTO Admissions.UndergraduateRegistrations(RegistrationDate, StudentNumber, UndergraduateScheduleID) 
VALUES(N'20120717', N'47181753', 10329),
(N'20120717', N'72938479', 10301),
(N'20120717', N'92684602', 10327),
(N'20120717', N'20480022', 10205),
(N'20120717', N'92270397', 10321),
(N'20120717', N'29681704', 10323),
(N'20120718', N'40384942', 10330),
(N'20120718', N'40384942', 10331),
(N'20120718', N'22294206', 10314),
(N'20120718', N'60280584', 10306),
(N'20120719', N'20283405', 10303),
(N'20120719', N'30635306', 10332),
(N'20120719', N'64885004', 10328),
(N'20120719', N'80839048', 10330),
(N'20120719', N'80839048', 10331),
(N'20120720', N'50284085', 10306),
(N'20120720', N'20304050', 10316),
(N'20120720', N'20304050', 10317),
(N'20120720', N'30804584', 10316),
(N'20120720', N'20409220', 10318),
(N'20120721', N'20961160', 10319),
(N'20120721', N'20304050', 10302),
(N'20120721', N'68242862', 10335),
(N'20120721', N'92739473', 10313),
(N'20120722', N'29681704', 10306),
(N'20120722', N'97394285', 10313),
(N'20120722', N'20480022', 10316),
(N'20120722', N'20480022', 10317),
(N'20120723', N'29222420', 10313),
(N'20120723', N'22499506', 10307),
(N'20120724', N'29740203', 10318),
(N'20120724', N'29740203', 10319),
(N'20120724', N'68304005', 10338),
(N'20120724', N'82862805', 10327),
(N'20120724', N'29374957', 10328),
(N'20120724', N'62495184', 10330),
(N'20120724', N'62495184', 10331),
(N'20120725', N'29222420', 10305),
(N'20120725', N'80584005', 10318),
(N'20120726', N'30280635', 10302),
(N'20120726', N'30497957', 10301),
(N'20120727', N'30405069', 10305),
(N'20120727', N'13024466', 10323),
(N'20120727', N'13048039', 10332),
(N'20120728', N'22294206', 10329),
(N'20120728', N'27948146', 10303),
(N'20120728', N'80584005', 10312),
(N'20120731', N'20204862', 10302),
(N'20120731', N'90132394', 10303),
(N'20120731', N'29374922', 10306),
(N'20120731', N'50283048', 10311),
(N'20120731', N'50283048', 10312),
(N'20120731', N'30635306', 10316),
(N'20120731', N'30635306', 10317),
(N'20120731', N'28374957', 10311),
(N'20120731', N'29374922', 10332),
(N'20120731', N'13970508', 10318),
(N'20120731', N'27948146', 10318),
(N'20120731', N'69495411', 10319),
(N'20120731', N'93749380', 10332),
(N'20120731', N'28405006', 10324),
(N'20120731', N'28435984', 10319),
(N'20120801', N'29749316', 10322),
(N'20120801', N'29740203', 10332),
(N'20120801', N'20486025', 10301),
(N'20120801', N'24094844', 10332),
(N'20120801', N'50280596', 10316),
(N'20120801', N'50280596', 10317),
(N'20120801', N'88167413', 10318),
(N'20120801', N'92739473', 10332),
(N'20120801', N'24928292', 10305),
(N'20120801', N'28068505', 10332),
(N'20120801', N'90132394', 10306),
(N'20120801', N'20384025', 10301),
(N'20120801', N'50283048', 10316),
(N'20120801', N'17724035', 10332),
(N'20120802', N'93749524', 10324),
(N'20120802', N'68304005', 10325),
(N'20120802', N'35850845', 10324),
(N'20120802', N'24080394', 10332),
(N'20120803', N'64805999', 10314),
(N'20120803', N'92749715', 10325),
(N'20120804', N'20038074', 10307),
(N'20120804', N'50280596', 10306),
(N'20120805', N'60283050', 10302),
(N'20120805', N'11800686', 10313),
(N'20120805', N'30280635', 10314),
(N'20120806', N'69558505', 10327),
(N'20120806', N'68284003', 10327),
(N'20120806', N'50283048', 10332),
(N'20120807', N'94759284', 10303),
(N'20120807', N'40766453', 10305),
(N'20120807', N'20480022', 10320),
(N'20120807', N'29473002', 10332),
(N'20120807', N'68304005', 10301),
(N'20120807', N'88130480', 10322),
(N'20120807', N'20486044', 10332),
(N'20120808', N'80584005', 10320),
(N'20120808', N'80284060', 10309),
(N'20120808', N'40255048', 10319);
GO
INSERT INTO Admissions.UndergraduateRegistrations(RegistrationDate, StudentNumber, UndergraduateScheduleID)
VALUES(N'20120808', N'30733588', 10312), (N'20120808', N'97596002', 10311), (N'20120808', N'80284060', 10310), (N'20120808', N'64805999', 10325),
(N'20120809', N'47580742', 10325), (N'20120809', N'80584005', 10332), (N'20120809', N'93559405', 10303), (N'20120809', N'20830405', 10332),
(N'20120809', N'20480022', 10318), (N'20120809', N'94005924', 10319), (N'20120809', N'20480022', 10332), (N'20120810', N'38005277', 10305),
(N'20120810', N'25506037', 10315), (N'20120810', N'20486025', 10332), (N'20120810', N'40029736', 10311), (N'20120810', N'97596002', 10312),
(N'20120810', N'92749715', 10333), (N'20120810', N'27394708', 10324), (N'20120811', N'48009520', 10333), (N'20120811', N'27495006', 10303),
(N'20120811', N'30635306', 10301), (N'20120811', N'22294206', 10325), (N'20120812', N'27582647', 10326), (N'20120812', N'13048039', 10333),
(N'20120812', N'92847957', 10337), (N'20120812', N'38050586', 10340), (N'20120812', N'24928472', 10334), (N'20120812', N'29374922', 10333),
(N'20120812', N'92741355', 10335), (N'20120812', N'40384942', 10303), (N'20120812', N'20400305', 10308), (N'20120812', N'95060506', 10309),
(N'20120812', N'95060506', 10310), (N'20120812', N'35069800', 10308), (N'20120812', N'48009520', 10311), (N'20120812', N'11800686', 10315),
(N'20120812', N'35069800', 10316), (N'20120812', N'35069800', 10317), (N'20120812', N'28374957', 10301), (N'20120812', N'40284305', 10340),
(N'20120812', N'30635306', 10341), (N'20120812', N'47181753', 10315), (N'20120812', N'23930271', 10333), (N'20120812', N'64292862', 10318),
(N'20120812', N'88130480', 10340), (N'20120812', N'24928292', 10321), (N'20120812', N'20038074', 10328), (N'20120812', N'28408155', 10327),
(N'20120812', N'20304050', 10333), (N'20120813', N'29400035', 10327), (N'20120813', N'92684602', 10328), (N'20120813', N'20938405', 10333),
(N'20120813', N'29337594', 10315), (N'20120813', N'30635306', 10333), (N'20120813', N'49500692', 10303), (N'20120813', N'38050586', 10306),
(N'20120813', N'50855061', 10340), (N'20120813', N'16279622', 10313), (N'20120813', N'11800686', 10333), (N'20120814', N'95060506', 10307),
(N'20120814', N'25850859', 10306), (N'20120814', N'29749316', 10340), (N'20120814', N'92741355', 10303), (N'20120814', N'68304005', 10333),
(N'20120815', N'94005924', 10340), (N'20120815', N'61824668', 10309), (N'20120815', N'61824668', 10310), (N'20120815', N'49575137', 10328),
(N'20120816', N'30469577', 10307), (N'20120816', N'20486025', 10316), (N'20120816', N'20486025', 10317), (N'20120817', N'24850033', 10307),
(N'20120817', N'11800686', 10314), (N'20120818', N'20840051', 10318), (N'20120818', N'70384857', 10340), (N'20120818', N'92749715', 10314),
(N'20120818', N'40526839', 10333), (N'20120818', N'62495184', 10319), (N'20120818', N'25518410', 10320), (N'20120819', N'88130480', 10321),
(N'20120819', N'29222420', 10333), (N'20120819', N'27483004', 10315), (N'20120819', N'30469577', 10333), (N'20120819', N'60294086', 10324),
(N'20120819', N'27114857', 10333), (N'20120819', N'20394051', 10340), (N'20120819', N'62830284', 10333), (N'20120819', N'20808642', 10342),
(N'20120819', N'20486050', 10328), (N'20120820', N'28049285', 10340), (N'20120820', N'27495006', 10324), (N'20120820', N'97596002', 10334),
(N'20120820', N'47181753', 10323), (N'20120801', N'97950225', 10342), (N'20120821', N'97394285', 10320), (N'20120821', N'48009520', 10334),
(N'20120821', N'94005924', 10328), (N'20120822', N'92270397', 10334), (N'20120822', N'27495006', 10327), (N'20120824', N'20400305', 10340);
GO
INSERT INTO Admissions.UndergraduateRegistrations(RegistrationDate, StudentNumber, UndergraduateScheduleID)
VALUES(N'20120824', N'40029736', 10312), (N'20120825', N'28351530', 10328), (N'20120825', N'27495006', 10318), (N'20120825', N'30405979', 10340),
(N'20120825', N'93749380', 10319), (N'20120825', N'40284305', 10334), (N'20120826', N'97485006', 10340), (N'20120826', N'40284305', 10321),
(N'20120826', N'47181753', 10334), (N'20120826', N'29681704', 10315), (N'20120826', N'23930271', 10334), (N'20120827', N'29374957', 10308),
(N'20120827', N'28405006', 10315), (N'20120827', N'20486044', 10326), (N'20120827', N'95060506', 10340), (N'20120827', N'40766453', 10334),
(N'20120827', N'27948146', 10327), (N'20120827', N'69048520', 10328), (N'20120828', N'30485046', 10334), (N'20120828', N'40029736', 10302),
(N'20120828', N'60294086', 10328), (N'20120829', N'24929528', 10320), (N'20120830', N'27495006', 10323), (N'20120830', N'18260856', 10335),
(N'20120830', N'62094115', 10303), (N'20120830', N'28408520', 10340), (N'20120830', N'20961160', 10313), (N'20120830', N'29352418', 10334),
(N'20120830', N'20840051', 10326), (N'20120830', N'50284005', 10334), (N'20120831', N'93749524', 10303), (N'20120831', N'17724035', 10334),
(N'20120831', N'40284305', 10323), (N'20120831', N'24080394', 10334), (N'20120901', N'60294086', 10302), (N'20120901', N'92584668', 10303),
(N'20120901', N'82862805', 10303), (N'20120901', N'35069800', 10341), (N'20120901', N'48009520', 10306), (N'20120901', N'64885004', 10307),
(N'20120901', N'50247294', 10342), (N'20120901', N'50284005', 10307), (N'20120901', N'18550278', 10342), (N'20120901', N'59739352', 10313),
(N'20120901', N'29740203', 10316), (N'20120901', N'29740203', 10317), (N'20120901', N'68284003', 10313), (N'20120901', N'62830284', 10342),
(N'20120901', N'20938405', 10319), (N'20120901', N'47181753', 10321), (N'20120901', N'24850033', 10342), (N'20120901', N'60294086', 10323),
(N'20120901', N'20283405', 10327), (N'20120901', N'61824668', 10334), (N'20120901', N'38050586', 10327), (N'20120901', N'28405006', 10328),
(N'20120902', N'70850607', 10319), (N'20120902', N'79272413', 10303), (N'20120902', N'30733588', 10305), (N'20120902', N'68304005', 10320),
(N'20120903', N'27483004', 10314), (N'20120903', N'61824668', 10334), (N'20120903', N'92270397', 10322), (N'20120904', N'44004850', 10334),
(N'20120904', N'60280584', 10342), (N'20120905', N'82855824', 10309), (N'20120905', N'82855824', 10310), (N'20120905', N'28374957', 10312),
(N'20120906', N'72938479', 10313), (N'20120907', N'72938479', 10318), (N'20120910', N'27582647', 10302), (N'20120910', N'94759284', 10342),
(N'20120910', N'40506857', 10320), (N'20120910', N'69495411', 10322), (N'20120910', N'22499506', 10342), (N'20120911', N'30733588', 10311),
(N'20120910', N'68284003', 10342), (N'20120912', N'20488400', 10335);
GO

INSERT INTO Admissions.UndergraduateRegistrations(RegistrationDate, StudentNumber, UndergraduateScheduleID)
VALUES(N'20120723', N'29408600', 10405), (N'20120715', N'20008405', 10405), (N'20120715', N'20384098', 10405), (N'20120717', N'44004850', 10417),
	  (N'20120723', N'29408600', 10405), (N'20120724', N'93559405', 10406), (N'20120726', N'27394708', 10413), (N'20120728', N'20384058', 10406),
	  (N'20120731', N'63840950', 10405), (N'20120807', N'23930271', 10406), (N'20120812', N'68242862', 10406), (N'20120813', N'23930271', 10405),
	  (N'20120814', N'64292862', 10413), (N'20120815', N'44004850', 10418), (N'20120816', N'20049584', 10417), (N'20120817', N'38005277', 10405),
	  (N'20120817', N'47580742', 10406), (N'20120817', N'94059506', 10415), (N'20120817', N'94059506', 10416), (N'20120819', N'28024825', 10415),
	  (N'20120819', N'28024825', 10416), (N'20120820', N'13970508', 10406), (N'20120820', N'28068505', 10408), (N'20120820', N'29374957', 10417),
	  (N'20120822', N'18260856', 10406), (N'20120822', N'62830284', 10412), (N'20120824', N'62930516', 10413), (N'20120826', N'38005277', 10408),
	  (N'20120828', N'20283405', 10431), (N'20120829', N'70840584', 10408), (N'20120830', N'24928472', 10409), (N'20120830', N'27483004', 10413),
	  (N'20120831', N'29749571', 10404), (N'20120831', N'80284060', 10406), (N'20120831', N'59739352', 10408), (N'20120831', N'30469577', 10410),
	  (N'20120901', N'80848600', 10406), (N'20120901', N'28068505', 10406), (N'20120901', N'27582647', 10409), (N'20120902', N'40680688', 10404),
	  (N'20120902', N'20961160', 10408), (N'20120902', N'94708257', 10409), (N'20120902', N'28068505', 10419), (N'20120904', N'94759284', 10406),
	  (N'20120909', N'20840051', 10410), (N'20120909', N'18550278', 10412), (N'20120909', N'70384857', 10413), (N'20120909', N'40766453', 10413),
	  (N'20120909', N'27394708', 10414), (N'20120909', N'71513159', 10414), (N'20120910', N'62830284', 10402), (N'20120911', N'28495002', 10407),
	  (N'20120911', N'35069800', 10417), (N'20120911', N'24928472', 10418), (N'20120912', N'50846605', 10404), (N'20120912', N'70533722', 10404),
	  (N'20120912', N'11800686', 10408), (N'20120912', N'40506857', 10409), (N'20120912', N'40680688', 10418), (N'20120913', N'61824668', 10421),
	  (N'20120913', N'61824668', 10422), (N'20120913', N'30469577', 10423), (N'20120913', N'17749608', 10424);
GO
INSERT INTO Admissions.UndergraduateRegistrations(RegistrationDate, StudentNumber, UndergraduateScheduleID) 
VALUES(N'20120913', N'29374922', 10427),
(N'20120913', N'22982504', 10429),
(N'20120914', N'29473002', 10415),
(N'20120914', N'29473002', 10416),
(N'20120914', N'92739470', 10421),
(N'20120914', N'92739470', 10422),
(N'20120914', N'13970508', 10423),
(N'20120914', N'70850607', 10425),
(N'20120914', N'59739352', 10428),
(N'20120914', N'13024466', 10429),
(N'20120914', N'13024466', 10430),
(N'20120914', N'20853304', 10431),
(N'20120914', N'20938405', 10431),
(N'20120914', N'20038074', 10431),
(N'20120915', N'68242862', 10414),
(N'20120918', N'47181753', 10433),
(N'20120919', N'39405842', 10401),
(N'20120919', N'20304050', 10409),
(N'20120919', N'80848600', 10417),
(N'20120920', N'62495184', 10401),
(N'20120920', N'66608085', 10412),
(N'20120921', N'40406858', 10401),
(N'20120921', N'24080394', 10425),
(N'20120922', N'22485936', 10419),
(N'20120922', N'90132394', 10424),
(N'20120922', N'68304005', 10434),
(N'20120923', N'20938405', 10409),
(N'20120924', N'20808642', 10423),
(N'20120925', N'29749316', 10401),
(N'20120925', N'40255048', 10401),
(N'20120925', N'30635306', 10424),
(N'20120925', N'50283048', 10428),
(N'20120925', N'80284060', 10429),
(N'20120925', N'28408155', 10429),
(N'20120925', N'28408155', 10430),
(N'20120926', N'22499506', 10407),
(N'20120927', N'86039415', 10404),
(N'20120927', N'50208314', 10404),
(N'20120927', N'20749703', 10407),
(N'20120927', N'24928472', 10408),
(N'20120927', N'63840950', 10408),
(N'20120927', N'61824668', 10409),
(N'20120927', N'40830484', 10410),
(N'20120927', N'30497957', 10423),
(N'20120928', N'92739473', 10402),
(N'20120928', N'27483004', 10404),
(N'20120928', N'60920468', 10408),
(N'20120928', N'27495006', 10411),
(N'20120930', N'80839048', 10403),
(N'20120930', N'20038074', 10403),
(N'20120930', N'72938479', 10409),
(N'20120930', N'60283050', 10421),
(N'20120930', N'60283050', 10422),
(N'20120930', N'24929528', 10423),
(N'20120930', N'14197755', 10423),
(N'20120930', N'18030396', 10423),
(N'20120930', N'40506857', 10424),
(N'20120930', N'22485936', 10424),
(N'20120930', N'20304050', 10425),
(N'20120930', N'11794630', 10425),
(N'20120930', N'29400359', 10425),
(N'20120930', N'69495411', 10426),
(N'20120930', N'20204862', 10427),
(N'20120930', N'20840640', 10428),
(N'20120930', N'20486044', 10428),
(N'20120930', N'50284005', 10429),
(N'20120930', N'29403095', 10429),
(N'20120930', N'29403095', 10430),
(N'20120930', N'29480759', 10431),
(N'20120930', N'59739352', 10431),
(N'20120930', N'40850049', 10434),
(N'20121001', N'20049584', 10414),
(N'20121001', N'94708257', 10425),
(N'20121001', N'23930271', 10428),
(N'20121002', N'28049285', 10404),
(N'20121002', N'28024825', 10408),
(N'20121004', N'93749380', 10401),
(N'20121004', N'47181753', 10415),
(N'20121004', N'47181753', 10416),
(N'20121005', N'28024825', 10424),
(N'20121008', N'29749571', 10401);
GO
INSERT INTO Admissions.UndergraduateRegistrations(RegistrationDate, StudentNumber, UndergraduateScheduleID) 
VALUES(N'20121008', N'70384857', 10414),
(N'20121008', N'20834086', 10424),
(N'20121008', N'62082242', 10429),
(N'20121008', N'62082242', 10430),
(N'20121009', N'24203886', 10403),
(N'20121010', N'83948802', 10401),
(N'20121010', N'13970508', 10402),
(N'20121010', N'40284305', 10415),
(N'20121010', N'40284305', 10416),
(N'20121010', N'24795711', 10421),
(N'20121010', N'24795711', 10422),
(N'20121010', N'40526839', 10423),
(N'20121010', N'40407502', 10425),
(N'20121010', N'22294206', 10434),
(N'20121011', N'47580742', 10411),
(N'20121011', N'29408600', 10412),
(N'20121012', N'20853304', 10403),
(N'20121012', N'20830405', 10409),
(N'20121013', N'50284005', 10413),
(N'20121013', N'37395028', 10420),
(N'20121013', N'80839048', 10421),
(N'20121013', N'80839048', 10422),
(N'20121013', N'71513159', 10423),
(N'20121013', N'20938405', 10424),
(N'20121013', N'29480759', 10425),
(N'20121013', N'29749316', 10426),
(N'20121014', N'40680688', 10417),
(N'20121015', N'93559405', 10403),
(N'20121015', N'29847502', 10412),
(N'20121015', N'28040830', 10413),
(N'20121015', N'35069800', 10418),
(N'20121015', N'39794449', 10419),
(N'20121015', N'22982504', 10421),
(N'20121015', N'22982504', 10422),
(N'20121015', N'28068505', 10424),
(N'20121015', N'92847957', 10425),
(N'20121015', N'40284305', 10432),
(N'20121016', N'27483004', 10414);
GO
INSERT INTO Admissions.UndergraduateRegistrations(RegistrationDate, StudentNumber, UndergraduateScheduleID) 
VALUES(N'20121016', N'28374957', 10423),
(N'20121017', N'70384857', 10408),
(N'20121017', N'24203886', 10410),
(N'20121017', N'60804836', 10413),
(N'20121017', N'24094844', 10414),
(N'20121017', N'20049584', 10415),
(N'20121017', N'71513159', 10415),
(N'20121017', N'20749703', 10424),
(N'20121017', N'71749336', 10429),
(N'20121017', N'71749336', 10430),
(N'20121017', N'69048520', 10431),
(N'20121018', N'25850859', 10402),
(N'20121018', N'50280596', 10409),
(N'20121019', N'79272413', 10424),
(N'20121019', N'20840051', 10428),
(N'20121020', N'29403095', 10401),
(N'20121020', N'24928472', 10403),
(N'20121020', N'24094844', 10413),
(N'20121020', N'29374922', 10424),
(N'20121020', N'29480759', 10428),
(N'20121020', N'27114857', 10429),
(N'20121020', N'29337594', 10429),
(N'20121020', N'29337594', 10430),
(N'20121022', N'30048304', 10401),
(N'20121022', N'94708257', 10404),
(N'20121022', N'24080394', 10409),
(N'20121022', N'29847502', 10411),
(N'20121024', N'27483004', 10402),
(N'20121024', N'40384942', 10403),
(N'20121025', N'44040448', 10401),
(N'20121025', N'68500862', 10401),
(N'20121025', N'62930516', 10402),
(N'20121025', N'38500685', 10403),
(N'20121025', N'82855824', 10410),
(N'20121027', N'60294086', 10403),
(N'20121029', N'20394051', 10402),
(N'20121029', N'40830484', 10403),
(N'20121029', N'80848600', 10403),
(N'20121029', N'68500862', 10404),
(N'20121029', N'44040448', 10407),
(N'20121030', N'50208314', 10402),
(N'20121030', N'20394051', 10403),
(N'20121030', N'30280635', 10407),
(N'20121030', N'17724035', 10409),
(N'20121030', N'92270397', 10415),
(N'20121030', N'92270397', 10416),
(N'20121030', N'27948146', 10417),
(N'20121030', N'22982504', 10423),
(N'20121030', N'44040448', 10425),
(N'20121030', N'24928292', 10426),
(N'20121030', N'88130480', 10431),
(N'20121031', N'20840640', 10402),
(N'20121031', N'13584060', 10424),
(N'20121031', N'18073572', 10429),
(N'20121101', N'16279622', 10424),
(N'20121102', N'22881251', 10401),
(N'20121102', N'92739470', 10403),
(N'20121102', N'72938479', 10403),
(N'20121103', N'29408600', 10423),
(N'20121105', N'69495411', 10401),
(N'20121105', N'20008405', 10408),
(N'20121106', N'50855061', 10407),
(N'20121106', N'62830284', 10423),
(N'20121106', N'20853304', 10424);
GO
INSERT INTO Admissions.UndergraduateRegistrations(RegistrationDate, StudentNumber, UndergraduateScheduleID) 
VALUES(N'20121201', N'29352418', 10410),
(N'20121108', N'60283050', 10423),
(N'20121109', N'68242862', 10415),
(N'20121110', N'86039415', 10402),
(N'20121110', N'97394285', 10402),
(N'20121110', N'27394708', 10433),
(N'20121111', N'94184085', 10401),
(N'20121111', N'22294206', 10411),
(N'20121112', N'18073572', 10420),
(N'20121112', N'29374922', 10421),
(N'20121112', N'29374922', 10422),
(N'20121112', N'20409220', 10423),
(N'20121113', N'60804836', 10414),
(N'20121115', N'29847502', 10402),
(N'20121115', N'92741355', 10403),
(N'20121115', N'48009520', 10407),
(N'20121115', N'20008405', 10420),
(N'20121115', N'40384942', 10421),
(N'20121115', N'40384942', 10422),
(N'20121115', N'47580742', 10423),
(N'20121115', N'24795711', 10424),
(N'20121115', N'66608085', 10425),
(N'20121115', N'49500692', 10425),
(N'20121115', N'92270397', 10426),
(N'20121115', N'88130480', 10427),
(N'20121115', N'30048304', 10428),
(N'20121115', N'84086051', 10431),
(N'20121115', N'64805999', 10434),
(N'20121116', N'62683004', 10404),
(N'20121116', N'50208314', 10407),
(N'20121117', N'62683004', 10402),
(N'20121118', N'92847957', 10409),
(N'20121118', N'28040830', 10414),
(N'20121118', N'20486050', 10425),
(N'20121118', N'24094844', 10427),
(N'20121118', N'60804836', 10429),
(N'20121118', N'60804836', 10430),
(N'20121118', N'18030396', 10431),
(N'20121120', N'29847502', 10403),
(N'20121122', N'20749703', 10403),
(N'20121122', N'25850859', 10404),
(N'20121122', N'30384055', 10407),
(N'20121123', N'92749715', 10434),
(N'20121124', N'22499506', 10403),
(N'20121125', N'92739470', 10407),
(N'20121125', N'25850859', 10410),
(N'20121125', N'50284005', 10414),
(N'20121127', N'29681704', 10408),
(N'20121127', N'23930271', 10410),
(N'20121128', N'92495020', 10402),
(N'20121128', N'20486050', 10403),
(N'20121128', N'29400359', 10408),
(N'20121128', N'30405069', 10412),
(N'20121128', N'92584668', 10425),
(N'20121129', N'22485936', 10407),
(N'20121130', N'29480759', 10402),
(N'20121130', N'92495020', 10404),
(N'20121130', N'22485936', 10424),
(N'20121130', N'18073572', 10425),
(N'20121130', N'94059506', 10429),
(N'20121201', N'29337594', 10404),
(N'20121201', N'20938405', 10407),
(N'20121201', N'29352418', 10410),
(N'20121201', N'30405979', 10413),
(N'20121202', N'24928292', 10411);
GO
INSERT INTO Admissions.UndergraduateRegistrations(RegistrationDate, StudentNumber, UndergraduateScheduleID) 
VALUES(N'20121203', N'35069800', 10403),
(N'20121203', N'28435984', 10407),
(N'20121203', N'66038466', 10408),
(N'20121203', N'62930516', 10414),
(N'20121204', N'62930516', 10404),
(N'20121204', N'53397060', 10408),
(N'20121204', N'20853304', 10409),
(N'20121204', N'92495020', 10410),
(N'20121204', N'13044726', 10410),
(N'20121204', N'92741355', 10417),
(N'20121204', N'47580742', 10419),
(N'20121205', N'51967394', 10401),
(N'20121205', N'50846605', 10402),
(N'20121205', N'20488400', 10417),
(N'20121205', N'27948146', 10418),
(N'20121205', N'88130480', 10426),
(N'20121207', N'60920468', 10411),
(N'20121208', N'68242862', 10417),
(N'20121209', N'35850845', 10401),
(N'20121210', N'88130480', 10402),
(N'20121210', N'30405069', 10409),
(N'20121210', N'24928472', 10417),
(N'20121212', N'50284085', 10401),
(N'20121212', N'30405979', 10414),
(N'20121212', N'24928472', 10415),
(N'20121212', N'40380046', 10425),
(N'20121212', N'29473002', 10431),
(N'20121217', N'28495002', 10408),
(N'20121217', N'84058040', 10410),
(N'20121218', N'40380046', 10401),
(N'20121220', N'29337594', 10408),
(N'20121220', N'20400305', 10417),
(N'20121220', N'15033814', 10419),
(N'20121220', N'20204862', 10420),
(N'20121220', N'62495184', 10421),
(N'20121220', N'62495184', 10422),
(N'20121220', N'20204862', 10423),
(N'20121220', N'68304005', 10424),
(N'20121220', N'40284305', 10427),
(N'20121220', N'20938405', 10428),
(N'20121220', N'30405069', 10429),
(N'20121220', N'22982504', 10430),
(N'20121220', N'27582647', 10431),
(N'20121224', N'28049285', 10402),
(N'20121226', N'20049584', 10418),
(N'20121226', N'18030396', 10420),
(N'20121226', N'94059506', 10421),
(N'20121226', N'94059506', 10422),
(N'20121226', N'20008405', 10423),
(N'20121227', N'24850033', 10419),
(N'20121227', N'97950225', 10425),
(N'20121230', N'18260856', 10417),
(N'20121230', N'61824668', 10428),
(N'20121231', N'24795711', 10402),
(N'20121231', N'28049285', 10425),
(N'20121231', N'20853304', 10428),
(N'20130101', N'69048520', 10407),
(N'20130101', N'40680688', 10408),
(N'20130102', N'22803048', 10402),
(N'20130102', N'70533722', 10408),
(N'20130103', N'30384055', 10401),
(N'20130214', N'13584060', 10513),
(N'20130217', N'92741355', 10503);
GO
INSERT INTO Admissions.UndergraduateRegistrations(RegistrationDate, StudentNumber, UndergraduateScheduleID) 
VALUES(N'20130220', N'20486044', 10508),
(N'20130223', N'35069800', 10504),
(N'20130223', N'86039415', 10509),
(N'20130225', N'13584060', 10505),
(N'20130225', N'97596002', 10509),
(N'20130225', N'40526839', 10510),
(N'20130225', N'18073572', 10511),
(N'20130225', N'18073572', 10512),
(N'20130226', N'44004850', 10503),
(N'20130226', N'29374957', 10503),
(N'20130226', N'40680688', 10504),
(N'20130226', N'30048304', 10509),
(N'20130227', N'27948146', 10504),
(N'20130227', N'90132394', 10505),
(N'20130227', N'69558505', 10509),
(N'20130228', N'20488400', 10501),
(N'20130228', N'22982504', 10506),
(N'20130228', N'22982504', 10507),
(N'20130228', N'20384025', 10509),
(N'20130301', N'20384098', 10502),
(N'20130303', N'44004850', 10504),
(N'20130303', N'30493386', 10509),
(N'20130303', N'60283050', 10511),
(N'20130303', N'60283050', 10512),
(N'20130304', N'60283050', 10506),
(N'20130304', N'60283050', 10507),
(N'20130309', N'20488400', 10503),
(N'20130310', N'24795711', 10511),
(N'20130311', N'20384025', 10510),
(N'20130311', N'20384098', 10511),
(N'20130311', N'20384098', 10512),
(N'20130312', N'24795711', 10506),
(N'20130312', N'24795711', 10507),
(N'20130314', N'28435984', 10502),
(N'20130314', N'35069800', 10503),
(N'20130314', N'80848600', 10503),
(N'20130315', N'50855061', 10505),
(N'20130315', N'84086051', 10505),
(N'20130316', N'49500692', 10505),
(N'20130316', N'92739470', 10506),
(N'20130316', N'92739470', 10507),
(N'20130316', N'20840051', 10508),
(N'20130317', N'29480759', 10513),
(N'20130318', N'20008405', 10501),
(N'20130318', N'94059506', 10506),
(N'20130318', N'94059506', 10507),
(N'20130323', N'24928472', 10503),
(N'20130326', N'24929528', 10509),
(N'20130328', N'44040448', 10513),
(N'20130329', N'18073572', 10502),
(N'20130329', N'20840640', 10509),
(N'20130330', N'20049584', 10503),
(N'20130331', N'82408822', 10501),
(N'20130331', N'29352418', 10508),
(N'20130331', N'29400359', 10509),
(N'20130401', N'62495184', 10506),
(N'20130401', N'62495184', 10507),
(N'20130401', N'20840051', 10509),
(N'20130403', N'20049584', 10504),
(N'20130403', N'48009520', 10508),
(N'20130403', N'28374957', 10510),
(N'20130404', N'18260856', 10503),
(N'20130405', N'20834086', 10505),
(N'20130405', N'62082242', 10513),
(N'20130406', N'83948802', 10509),
(N'20130406', N'97394285', 10511),
(N'20130406', N'97394285', 10512),
(N'20130408', N'13044726', 10505),
(N'20130410', N'50247294', 10502),
(N'20130410', N'13970508', 10510),
(N'20130410', N'28408520', 10513);
GO
INSERT INTO Admissions.UndergraduateRegistrations(RegistrationDate, StudentNumber, UndergraduateScheduleID) 
VALUES(N'20130412', N'97394285', 10501),
(N'20130412', N'60280584', 10505),
(N'20130412', N'29374922', 10506),
(N'20130412', N'29374922', 10507),
(N'20130414', N'68242862', 10503),
(N'20130414', N'28351530', 10509),
(N'20130414', N'20384025', 10511),
(N'20130414', N'20384025', 10512),
(N'20130414', N'69048520', 10513),
(N'20130415', N'70850607', 10502),
(N'20130415', N'27948146', 10503),
(N'20130415', N'79272413', 10505),
(N'20130415', N'30280635', 10505),
(N'20130415', N'80839048', 10506),
(N'20130415', N'80839048', 10507),
(N'20130415', N'20486025', 10509),
(N'20130417', N'93749524', 10505),
(N'20130417', N'92584668', 10505),
(N'20130417', N'20480022', 10509),
(N'20130417', N'53397060', 10509),
(N'20130418', N'13024466', 10505),
(N'20130418', N'61824668', 10506),
(N'20130418', N'61824668', 10507),
(N'20130418', N'30048304', 10508),
(N'20130418', N'66038466', 10509),
(N'20130419', N'20400305', 10503),
(N'20130419', N'80584005', 10509),
(N'20130420', N'71513159', 10501),
(N'20130420', N'35705808', 10505),
(N'20130420', N'40384942', 10506),
(N'20130420', N'40384942', 10507),
(N'20130420', N'24850033', 10509),
(N'20130420', N'38500685', 10509),
(N'20130423', N'39794449', 10509),
(N'20130425', N'60283050', 10502),
(N'20130427', N'94759284', 10505),
(N'20130427', N'29408600', 10509),
(N'20130430', N'28374957', 10509),
(N'20130501', N'20840640', 10508),
(N'20130502', N'40526839', 10502),
(N'20130502', N'30497957', 10509),
(N'20130502', N'70850607', 10509),
(N'20130503', N'20488400', 10505),
(N'20130503', N'50846605', 10509),
(N'20130503', N'16279622', 10801),
(N'20130505', N'40680688', 10503),
(N'20130510', N'20486044', 10501),
(N'20130618', N'40850049', 10602),
(N'20130620', N'30048304', 10601),
(N'20130712', N'24928292', 10602);
GO
INSERT INTO Admissions.UndergraduateRegistrations(RegistrationDate, StudentNumber, UndergraduateScheduleID) 
VALUES(N'20130630', N'62082242', 10601),
(N'20130708', N'92847957', 10601),
(N'20130709', N'20400305', 10601),
(N'20130712', N'24928292', 10602),
(N'20130713', N'95060506', 10601),
(N'20130714', N'69304095', 10602),
(N'20130717', N'97485006', 10601),
(N'20130718', N'88167413', 10602),
(N'20130721', N'69304095', 10601),
(N'20130731', N'84058040', 10601),
(N'20130812', N'20840051', 10601),
(N'20130813', N'84058040', 10602),
(N'20130817', N'82855824', 10601),
(N'20130818', N'50183209', 10601),
(N'20130820', N'88167413', 10601),
(N'20130820', N'29473002', 10601),
(N'20130830', N'28408520', 10601),
(N'20130831', N'20384058', 10601),
(N'20130901', N'29403095', 10601),
(N'20130902', N'62082242', 10602),
(N'20130912', N'38400074', 10601),
(N'20140223', N'28024825', 10801),
(N'20140228', N'29473002', 10801),
(N'20140310', N'30405069', 10801),
(N'20140311', N'24094844', 10801),
(N'20140313', N'20304050', 10801),
(N'20140322', N'59739352', 10801),
(N'20140331', N'20853304', 10801),
(N'20140402', N'24080394', 10801),
(N'20140402', N'80284060', 10801),
(N'20140404', N'30733588', 10801),
(N'20140404', N'94059506', 10801),
(N'20140414', N'28068505', 10801),
(N'20140422', N'24795711', 10801),
(N'20140424', N'61824668', 10801),
(N'20140503', N'44004850', 10801),
(N'20140510', N'30497957', 10801),
(N'20140530', N'22294206', 10901),
(N'20140610', N'92847957', 10901),
(N'20140711', N'11800686', 10901),
(N'20140714', N'11794630', 10901),
(N'20140720', N'27394708', 10901),
(N'20140816', N'50283048', 10901),
(N'20140902', N'92794735', 10901);
GO


------------------------------------------------------------------------------------
INSERT INTO UndergraduateGrades(DateGradePosted, TeacherNumber, RegistrationID, LetterGrade,
					PassFailStatus, CreditReceived, CurrentGPA, TotalStudentCredits, RemainingCredits)
VALUES(N'20120208', N'820384', 204, N'C', N'P', 1, 4, 1, 119), (N'20120208', N'820384', 500, N'B', N'P', 1, 4, 1, 119),
	  (N'20120208', N'820384',  55, N'B', N'P', 1, 4, 1, 119), (N'20120208', N'820384', 351, N'A', N'P', 1, 4, 1, 119),
	  (N'20120208', N'820384',   5, N'B', N'P', 1, 4, 1, 119), (N'20120208', N'820384',  89, N'D', N'P', 1, 4, 1, 119),
	  (N'20120208', N'820384', 462, N'F', N'F', 0, 0, 0,   0), (N'20120208', N'820384', 202, N'A', N'P', 1, 4, 1, 119),
	  (N'20120208', N'820384',  21, N'A', N'P', 1, 4, 1, 119), (N'20120208', N'820384', 448, N'F', N'F', 0, 0, 0,   0),
	  (N'20120208', N'820384', 541, N'F', N'F', 0, 0, 0,   0), (N'20120208', N'820384',  43, N'C', N'P', 1, 4, 1, 119),
	  (N'20120208', N'820384', 564, N'C', N'P', 1, 4, 1, 119), (N'20120208', N'820384', 407, N'C', N'P', 1, 4, 1, 119),
	  (N'20120208', N'820384', 645, N'A', N'P', 1, 4, 1, 119), (N'20120208', N'820384', 327, N'D', N'P', 1, 4, 1, 119),
	  (N'20120208', N'820384',  67, N'C', N'P', 1, 4, 1, 119), (N'20120208', N'820384', 499, N'B', N'P', 1, 4, 1, 119),
	  (N'20120208', N'820384', 620, N'F', N'F', 0, 0, 0,   0), (N'20120208', N'820384',  83, N'C', N'P', 1, 4, 1, 119),
	  (N'20120208', N'820384', 258, N'B', N'P', 1, 4, 1, 119), (N'20120208', N'820384', 633, N'B', N'P', 1, 4, 1, 119),
	  (N'20120208', N'820384', 376, N'F', N'F', 0, 0, 0,   0), (N'20120208', N'820384', 493, N'A', N'P', 1, 4, 1, 119),
	  (N'20120208', N'820384', 165, N'A', N'P', 1, 4, 1, 119);
GO
INSERT INTO UndergraduateGrades(DateGradePosted, TeacherNumber, RegistrationID, LetterGrade,
					PassFailStatus, CreditReceived, CurrentGPA, TotalStudentCredits, RemainingCredits)
VALUES(N'20120208', N'447406', 412, N'A', N'P', 1, 4, 1, 119), (N'20120208', N'447406',  38, N'A', N'P', 1, 4, 1, 119),
	  (N'20120208', N'447406', 293, N'B', N'P', 1, 4, 1, 119), (N'20120208', N'447406', 711, N'B', N'P', 1, 4, 1, 119),
	  (N'20120208', N'447406', 437, N'B', N'P', 1, 4, 1, 119), (N'20120208', N'447406',  13, N'A', N'P', 1, 4, 1, 119),
	  (N'20120208', N'447406', 673, N'F', N'F', 0, 0, 0,   0), (N'20120208', N'447406', 475, N'A', N'P', 1, 4, 1, 119),
	  (N'20120208', N'447406', 219, N'B', N'P', 1, 4, 1, 119), (N'20120208', N'447406', 156, N'A', N'P', 1, 4, 1, 119),
	  (N'20120208', N'447406',  52, N'C', N'P', 1, 4, 1, 119), (N'20120208', N'447406', 183, N'C', N'P', 1, 4, 1, 119),
	  (N'20120208', N'447406', 653, N'B', N'P', 1, 4, 1, 119), (N'20120208', N'447406',  50, N'D', N'P', 1, 4, 1, 119),
	  (N'20120208', N'447406', 542, N'F', N'F', 0, 0, 0,   0), (N'20120208', N'447406', 589, N'A', N'P', 1, 4, 1, 119),
	  (N'20120208', N'447406',  75, N'A', N'P', 1, 4, 1, 119), (N'20120208', N'447406', 643, N'A', N'P', 1, 4, 1, 119),
	  (N'20120208', N'447406', 547, N'C', N'P', 1, 4, 1, 119), (N'20120208', N'447406',  20, N'B', N'P', 1, 4, 1, 119),
	  (N'20120208', N'447406', 424, N'B', N'P', 1, 4, 1, 119), (N'20120208', N'447406', 426, N'B', N'P', 1, 4, 1, 119),
	  (N'20120208', N'447406', 315, N'A', N'P', 1, 4, 1, 119), (N'20120208', N'447406', 205, N'C', N'P', 1, 4, 1, 119);
GO
INSERT INTO UndergraduateGrades(DateGradePosted, TeacherNumber, RegistrationID, LetterGrade,
					PassFailStatus, CreditReceived, CurrentGPA, TotalStudentCredits, RemainingCredits)
VALUES(N'20120208', N'639482',  91, N'B', N'P', 1, 4, 1, 119), (N'20120208', N'639482', 507, N'A', N'P', 1, 4, 1, 119),
	  (N'20120208', N'639482', 702, N'C', N'P', 1, 4, 1, 119), (N'20120208', N'639482', 264, N'C', N'P', 1, 4, 1, 119),
	  (N'20120208', N'639482', 593, N'D', N'P', 1, 4, 1, 119), (N'20120208', N'639482',  34, N'C', N'P', 1, 4, 1, 119),
	  (N'20120208', N'639482', 530, N'D', N'P', 1, 4, 1, 119), (N'20120208', N'639482', 647, N'B', N'P', 1, 4, 1, 119),
	  (N'20120208', N'639482', 599, N'F', N'F', 0, 0, 0,   0), (N'20120208', N'639482', 757, N'F', N'F', 0, 0, 0,   0),
	  (N'20120208', N'639482', 682, N'A', N'P', 1, 4, 1, 119), (N'20120208', N'639482', 596, N'A', N'P', 1, 4, 1, 119),
	  (N'20120208', N'639482', 734, N'F', N'F', 0, 0, 0,   0), (N'20120208', N'639482', 573, N'A', N'P', 1, 4, 1, 119),
	  (N'20120208', N'639482', 535, N'B', N'P', 1, 4, 1, 119), (N'20120208', N'639482', 175, N'B', N'P', 1, 4, 1, 119),
	  (N'20120208', N'639482', 411, N'A', N'P', 1, 4, 1, 119), (N'20120208', N'639482', 688, N'A', N'P', 1, 4, 1, 119),
	  (N'20120208', N'639482', 454, N'F', N'F', 0, 0, 0,   0), (N'20120208', N'639482', 241, N'A', N'P', 1, 4, 1, 119),
	  (N'20120208', N'639482', 457, N'A', N'P', 1, 4, 1, 119), (N'20120208', N'639482', 306, N'B', N'P', 1, 4, 1, 119),
	  (N'20120208', N'639482', 255, N'B', N'P', 1, 4, 1, 119), (N'20120208', N'639482', 199, N'C', N'P', 1, 4, 1, 119),
	  (N'20120208', N'639482', 553, N'B', N'P', 1, 4, 1, 119), (N'20120208', N'639482', 175, N'A', N'P', 1, 4, 1, 119);
GO
INSERT INTO UndergraduateGrades(DateGradePosted, TeacherNumber, RegistrationID, LetterGrade, 
					PassFailStatus, CreditReceived, CurrentGPA, TotalStudentCredits, RemainingCredits)
VALUES(N'20120209', N'920747', 271, N'C', N'P', 1, 4, 1, 119), (N'20120209', N'920747', 159, N'A', N'P', 1, 4, 1, 119),
	  (N'20120209', N'920747', 692, N'B', N'P', 1, 4, 1, 119), (N'20120209', N'920747', 395, N'D', N'P', 1, 4, 1, 119),
	  (N'20120209', N'920747', 217, N'D', N'P', 1, 4, 1, 119), (N'20120209', N'920747',  39, N'B', N'P', 1, 4, 1, 119),
	  (N'20120209', N'920747', 486, N'C', N'P', 1, 4, 1, 119), (N'20120209', N'920747', 312, N'F', N'F', 0, 0, 0, 0),
	  (N'20120209', N'920747', 657, N'B', N'P', 1, 4, 1, 119), (N'20120209', N'920747', 725, N'B', N'P', 1, 4, 1, 119),
	  (N'20120209', N'920747', 436, N'A', N'P', 1, 4, 1, 119), (N'20120209', N'920747',  79, N'A', N'P', 1, 4, 1, 119),
	  (N'20120209', N'920747', 243, N'A', N'P', 1, 4, 1, 119), (N'20120209', N'920747', 133, N'B', N'P', 1, 4, 1, 119),
	  (N'20120209', N'920747',  63, N'B', N'P', 1, 4, 1, 119), (N'20120209', N'920747', 479, N'C', N'P', 1, 4, 1, 119),
	  (N'20120209', N'920747', 472, N'F', N'F', 0, 0, 0,   0), (N'20120209', N'920747', 170, N'A', N'P', 1, 4, 1, 119),
	  (N'20120209', N'920747', 510, N'B', N'P', 1, 4, 1, 119), (N'20120209', N'920747', 667, N'B', N'P', 1, 4, 1, 119),
	  (N'20120209', N'920747', 403, N'B', N'P', 1, 4, 1, 119), (N'20120209', N'920747', 587, N'C', N'P', 1, 4, 1, 119),
	  (N'20120209', N'920747', 380, N'A', N'P', 1, 4, 1, 119), (N'20120209', N'920747', 192, N'B', N'P', 1, 4, 1, 119),
	  (N'20120209', N'920747', 453, N'B', N'P', 1, 4, 1, 119), (N'20120209', N'979384', 445, N'C', N'P', 1, 4, 1, 119);
GO
INSERT INTO UndergraduateGrades(DateGradePosted, TeacherNumber, RegistrationID, LetterGrade, 
					PassFailStatus, CreditReceived, CurrentGPA, TotalStudentCredits, RemainingCredits)
VALUES(N'20120209', N'979384', 385, N'A', N'P', 1, 4, 1, 119), (N'20120209', N'979384', 654, N'B', N'P', 1, 4, 1, 119),
      (N'20120209', N'979384', 155, N'B', N'P', 1, 4, 1, 119), (N'20120209', N'979384', 112, N'F', N'F', 0, 0, 0,   0),
	  (N'20120209', N'979384', 723, N'B', N'P', 1, 4, 1, 119), (N'20120209', N'979384', 570, N'C', N'P', 1, 4, 1, 119),
	  (N'20120209', N'979384', 344, N'A', N'P', 1, 4, 1, 119), (N'20120209', N'979384',  85, N'A', N'P', 1, 4, 1, 119),
	  (N'20120209', N'979384', 200, N'C', N'P', 1, 4, 1, 119), (N'20120209', N'979384', 568, N'B', N'P', 1, 4, 1, 119),
	  (N'20120209', N'979384', 665, N'B', N'P', 1, 4, 1, 119), (N'20120209', N'979384', 151, N'C', N'P', 1, 4, 1, 119),
	  (N'20120209', N'979384', 131, N'C', N'P', 1, 4, 1, 119), (N'20120209', N'979384', 537, N'A', N'P', 1, 4, 1, 119),
	  (N'20120209', N'979384', 546, N'F', N'F', 0, 4, 0,   0), (N'20120209', N'979384',   1, N'A', N'P', 1, 4, 1, 119),
	  (N'20120209', N'979384', 164, N'B', N'P', 1, 4, 1, 119), (N'20120209', N'979384', 471, N'A', N'P', 1, 4, 1, 119),
	  (N'20120209', N'979384', 543, N'D', N'P', 1, 4, 1, 119), (N'20120209', N'979384', 642, N'A', N'P', 1, 4, 1, 119),
	  (N'20120209', N'979384', 712, N'A', N'P', 1, 4, 1, 119), (N'20120209', N'979384', 568, N'C', N'P', 1, 4, 1, 119),
	  (N'20120209', N'979384', 720, N'B', N'P', 1, 4, 1, 119), (N'20120209', N'979384', 590, N'B', N'P', 1, 4, 1, 119);
GO
INSERT INTO UndergraduateGrades(DateGradePosted, TeacherNumber, RegistrationID, LetterGrade,
					PassFailStatus, CreditReceived, CurrentGPA, TotalStudentCredits, RemainingCredits)
VALUES(N'20120314', N'820384', 347, N'B', N'P', 1, 4, 1, 119), (N'20120314', N'820384', 625, N'A', N'P', 1, 4, 1, 119),
	  (N'20120314', N'820384', 277, N'C', N'P', 1, 4, 1, 119), (N'20120314', N'820384', 517, N'B', N'P', 1, 4, 1, 119),
	  (N'20120314', N'820384', 761, N'B', N'P', 1, 4, 1, 119), (N'20120314', N'820384', 231, N'A', N'P', 1, 4, 1, 119),
	  (N'20120314', N'820384', 167, N'A', N'P', 1, 4, 1, 119), (N'20120314', N'820384', 359, N'C', N'P', 1, 4, 1, 119),
	  (N'20120314', N'820384', 703, N'D', N'P', 1, 4, 1, 119), (N'20120314', N'820384', 213, N'D', N'P', 1, 4, 1, 119),
	  (N'20120314', N'820384',  97, N'D', N'P', 1, 4, 1, 119), (N'20120314', N'820384', 513, N'F', N'F', 0, 0, 0,   0),
	  (N'20120314', N'820384', 352, N'B', N'P', 1, 4, 1, 119), (N'20120314', N'820384', 495, N'A', N'P', 1, 4, 1, 119),
	  (N'20120314', N'820384', 582, N'A', N'P', 1, 4, 1, 119), (N'20120314', N'820384', 610, N'B', N'P', 1, 4, 1, 119),
	  (N'20120314', N'820384', 539, N'C', N'P', 1, 4, 1, 119), (N'20120314', N'820384', 556, N'C', N'P', 1, 4, 1, 119),
	  (N'20120314', N'820384', 104, N'A', N'P', 1, 4, 1, 119), (N'20120314', N'820384', 295, N'A', N'P', 1, 4, 1, 119),
	  (N'20120314', N'820384', 182, N'A', N'P', 1, 4, 1, 119), (N'20120314', N'820384', 107, N'C', N'P', 1, 4, 1, 119),
	  (N'20120314', N'820384', 319, N'F', N'F', 0, 0, 0,   0), (N'20120314', N'820384', 225, N'D', N'P', 1, 4, 1, 119),
	  (N'20120314', N'820384', 401, N'A', N'P', 1, 4, 1, 119), (N'20120314', N'820384', 275, N'B', N'P', 1, 4, 1, 119);
GO
INSERT INTO UndergraduateGrades(DateGradePosted, TeacherNumber, RegistrationID, LetterGrade,
					PassFailStatus, CreditReceived, CurrentGPA, TotalStudentCredits, RemainingCredits)
VALUES(N'20120314', N'447406', 143, N'A', N'P', 1, 4, 1, 119), (N'20120314', N'447406', 690, N'A', N'P', 1, 4, 1, 119),
	  (N'20120314', N'447406', 237, N'A', N'P', 1, 4, 1, 119), (N'20120314', N'447406', 742, N'A', N'P', 1, 4, 1, 119),
	  (N'20120314', N'447406', 520, N'C', N'P', 1, 4, 1, 119), (N'20120314', N'447406', 334, N'C', N'P', 1, 4, 1, 119),
	  (N'20120314', N'447406', 281, N'B', N'P', 1, 4, 1, 119), (N'20120314', N'447406', 482, N'F', N'F', 0, 0, 0,   0),
	  (N'20120314', N'447406', 247, N'B', N'P', 1, 4, 1, 119), (N'20120314', N'447406', 636, N'B', N'P', 1, 4, 1, 119),
	  (N'20120314', N'447406', 291, N'A', N'P', 1, 4, 1, 119), (N'20120314', N'447406', 580, N'F', N'F', 0, 0, 0,   0),
	  (N'20120314', N'447406',  92, N'A', N'P', 1, 4, 1, 119), (N'20120314', N'447406', 705, N'A', N'P', 1, 4, 1, 119),
	  (N'20120314', N'447406', 187, N'B', N'P', 1, 4, 1, 119), (N'20120314', N'447406', 676, N'A', N'P', 1, 4, 1, 119),
	  (N'20120314', N'447406',  94, N'A', N'P', 1, 4, 1, 119), (N'20120314', N'447406', 362, N'C', N'P', 1, 4, 1, 119),
	  (N'20120314', N'447406', 236, N'F', N'F', 0, 0, 0,   0), (N'20120314', N'447406', 608, N'A', N'P', 1, 4, 1, 119),
	  (N'20120314', N'447406', 307, N'B', N'P', 1, 4, 1, 119), (N'20120314', N'447406', 341, N'B', N'P', 1, 4, 1, 119),
	  (N'20120314', N'447406', 525, N'A', N'P', 1, 4, 1, 119);
GO
INSERT INTO UndergraduateGrades(DateGradePosted, TeacherNumber, RegistrationID, LetterGrade,
					PassFailStatus, CreditReceived, CurrentGPA, TotalStudentCredits, RemainingCredits)
VALUES(N'20120314', N'639482',  69, N'B', N'P', 1, 4, 1, 119), (N'20120314', N'639482',  23, N'C', N'P', 1, 4, 1, 119),
	  (N'20120314', N'639482', 389, N'F', N'F', 0, 0, 0,   0), (N'20120314', N'639482', 442, N'D', N'P', 1, 4, 1, 119),
	  (N'20120314', N'639482',  47, N'C', N'P', 1, 4, 1, 119), (N'20120314', N'639482', 766, N'D', N'P', 1, 4, 1, 119),
	  (N'20120314', N'639482', 117, N'A', N'P', 1, 4, 1, 119), (N'20120314', N'639482', 707, N'B', N'P', 1, 4, 1, 119),
	  (N'20120314', N'639482', 308, N'B', N'P', 1, 4, 1, 119), (N'20120314', N'639482',  30, N'B', N'P', 1, 4, 1, 119),
	  (N'20120314', N'639482', 323, N'F', N'F', 0, 0, 0,   0), (N'20120314', N'639482', 423, N'C', N'P', 1, 4, 1, 119),
	  (N'20120314', N'639482', 135, N'B', N'P', 1, 4, 1, 119), (N'20120314', N'639482',  11, N'A', N'P', 1, 4, 1, 119),
	  (N'20120314', N'639482', 368, N'A', N'P', 1, 0, 0,   0), (N'20120314', N'639482', 522, N'A', N'P', 1, 4, 1, 119),
	  (N'20120314', N'639482', 765, N'A', N'P', 1, 4, 1, 119), (N'20120314', N'639482', 731, N'A', N'P', 1, 4, 1, 119),
	  (N'20120314', N'639482', 661, N'B', N'P', 1, 4, 1, 119), (N'20120314', N'979384', 120, N'A', N'P', 1, 4, 1, 119);
GO
INSERT INTO UndergraduateGrades(DateGradePosted, TeacherNumber, RegistrationID, LetterGrade,
					PassFailStatus, CreditReceived, CurrentGPA, TotalStudentCredits, RemainingCredits)
VALUES(N'20120314', N'979384', 489, N'A', N'P', 1, 4, 1, 119), (N'20120314', N'979384', 390, N'A', N'P', 1, 4, 1, 119),
	  (N'20120314', N'979384', 288, N'B', N'P', 1, 4, 1, 119), (N'20120314', N'979384', 101, N'B', N'P', 1, 4, 1, 119),
	  (N'20120314', N'979384', 349, N'A', N'P', 1, 4, 1, 119), (N'20120314', N'979384', 186, N'C', N'P', 1, 4, 1, 119),
	  (N'20120314', N'979384',  73, N'C', N'P', 1, 4, 1, 119), (N'20120314', N'979384', 748, N'C', N'P', 1, 4, 1, 119),
	  (N'20120314', N'979384', 405, N'F', N'F', 0, 0, 0,   0), (N'20120314', N'979384', 303, N'B', N'P', 1, 4, 1, 119),
	  (N'20120314', N'979384', 755, N'D', N'P', 1, 4, 1, 119), (N'20120314', N'979384', 717, N'B', N'P', 1, 4, 1, 119),
	  (N'20120314', N'979384', 532, N'F', N'F', 0, 0, 0,   0), (N'20120314', N'979384', 371, N'A', N'P', 1, 4, 1, 119),
	  (N'20120314', N'979384', 554, N'D', N'P', 1, 4, 1, 119), (N'20120314', N'979384', 759, N'A', N'P', 1, 4, 1, 119),
	  (N'20120314', N'979384', 696, N'A', N'P', 1, 4, 1, 119), (N'20120314', N'979384', 637, N'A', N'P', 1, 4, 1, 119),
	  (N'20120314', N'979384', 745, N'C', N'P', 1, 4, 1, 119), (N'20120314', N'979384', 523, N'D', N'P', 1, 4, 1, 119),
	  (N'20120314', N'979384', 749, N'A', N'P', 1, 4, 1, 119), (N'20120314', N'979384', 168, N'C', N'P', 1, 4, 1, 119);
GO
INSERT INTO UndergraduateGrades(DateGradePosted, TeacherNumber, RegistrationID, LetterGrade, PassFailStatus, CreditReceived)
VALUES(N'20120321', N'603925', 184, N'A', N'P', 3), (N'20120321', N'603925', 674, N'A', N'P', 3), (N'20120321', N'603925', 420, N'A', N'P', 3),
	  (N'20120321', N'603925', 567, N'A', N'P', 3), (N'20120321', N'603925', 713, N'A', N'P', 3), (N'20120321', N'603925',  54, N'C', N'P', 3),
	  (N'20120321', N'603925', 400, N'B', N'P', 3), (N'20120321', N'603925', 674, N'B', N'P', 3), (N'20120321', N'603925', 618, N'F', N'F', 0),
	  (N'20120321', N'603925', 655, N'A', N'P', 3), (N'20120321', N'603925',   3, N'A', N'P', 3), (N'20120321', N'603925', 446, N'A', N'P', 3), 
	  (N'20120321', N'603925', 680, N'B', N'P', 3), (N'20120321', N'603925', 713, N'F', N'F', 0), (N'20120321', N'603925', 628, N'B', N'P', 3),
	  (N'20120321', N'603925', 127, N'B', N'P', 3), (N'20120321', N'603925', 310, N'D', N'P', 3), (N'20120321', N'603925', 710, N'D', N'P', 3), 
	  (N'20120321', N'603925', 267, N'D', N'P', 3), (N'20120321', N'603925', 68, N'A', N'P', 3), (N'20120321', N'603925', 208, N'B', N'P', 3), 
	  (N'20120321', N'603925', 655, N'C', N'P', 3), (N'20120321', N'603925', 431, N'A', N'P', 3), (N'20120321', N'603925', 294, N'C', N'P', 3);
GO
INSERT INTO UndergraduateGrades(DateGradePosted, TeacherNumber, RegistrationID, LetterGrade, PassFailStatus, CreditReceived)
VALUES(N'20120321', N'603925', 572, N'B', N'P', 3), (N'20120321', N'603925', 404, N'B', N'P', 3), (N'20120321', N'603925', 681, N'C', N'P', 3),
	  (N'20120321', N'603925', 244, N'C', N'P', 3), (N'20120321', N'603925', 624, N'C', N'P', 3), (N'20120321', N'603925', 314, N'C', N'P', 3),
	  (N'20120321', N'603925', 693, N'A', N'P', 3), (N'20120321', N'603925', 40, N'B', N'P',  3), (N'20120321', N'603925', 270, N'C', N'P', 3),
	  (N'20120321', N'603925', 512, N'C', N'P', 3), (N'20120321', N'603925', 629, N'B', N'P', 3), (N'20120321', N'603925', 473, N'B', N'P', 3),
	  (N'20120321', N'603925', 171, N'B', N'P', 3), (N'20120321', N'603925', 314, N'A', N'P', 3), (N'20120321', N'603925',  62, N'A', N'P', 3),
	  (N'20120321', N'603925', 488, N'D', N'P', 3), (N'20120321', N'603925', 624, N'D', N'P', 3), (N'20120321', N'603925', 396, N'B', N'P', 3),
	  (N'20120321', N'603925', 656, N'C', N'P', 3), (N'20120321', N'603925', 256, N'C', N'P', 3), (N'20120321', N'603925', 140, N'F', N'F', 0),
	  (N'20120321', N'603925', 410, N'F', N'F', 0), (N'20120321', N'603925', 441, N'A', N'P', 3), (N'20120321', N'603925', 158, N'C', N'P', 3),
	  (N'20120321', N'603925', 158, N'C', N'P', 3), (N'20120321', N'603925', 562, N'A', N'P', 3), (N'20120321', N'603925',  84, N'C', N'P', 3);
GO
INSERT INTO UndergraduateGrades(DateGradePosted, TeacherNumber, RegistrationID, LetterGrade, PassFailStatus, CreditReceived)
VALUES(N'20120321', N'603925', 730, N'C', N'P', 3), (N'20120321', N'603925', 672, N'B', N'P', 3), (N'20120321', N'603925', 592, N'B', N'P', 3),
      (N'20120321', N'603925', 196, N'D', N'P', 3), (N'20120321', N'603925', 592, N'B', N'P', 3), (N'20120321', N'603925', 664, N'A', N'P', 3),
	  (N'20120321', N'603925', 621, N'F', N'F', 0), (N'20120321', N'603925', 714, N'A', N'P', 3), (N'20120321', N'603925',  66, N'B', N'P', 3), 
	  (N'20120321', N'603925', 203, N'B', N'P', 3), (N'20120321', N'603925', 415, N'C', N'P', 3), (N'20120321', N'603925', 253, N'F', N'F', 0),
	  (N'20120321', N'603925', 632, N'A', N'P', 3), (N'20120321', N'603925', 203, N'F', N'F', 0), (N'20120321', N'603925',   9, N'B', N'P', 3),
	  (N'20120321', N'603925', 109, N'B', N'P', 3), (N'20120321', N'603925', 72, N'B', N'P',  3), (N'20120321', N'603925', 257, N'F', N'F', 0),
	  (N'20120321', N'603925', 714, N'B', N'P', 3), (N'20120321', N'603925', 664, N'A', N'P', 3), (N'20120321', N'603925',  41, N'A', N'P', 3),
	  (N'20120321', N'603925', 470, N'C', N'P', 3), (N'20120321', N'603925', 414, N'C', N'P', 3), (N'20120321', N'603925', 648, N'A', N'P', 3);
GO
INSERT INTO UndergraduateGrades(DateGradePosted, TeacherNumber, RegistrationID, LetterGrade, PassFailStatus, CreditReceived)
VALUES(N'20120321', N'603925', 429, N'B', N'P', 3), (N'20120321', N'603925', 594, N'B', N'P', 3), (N'20120321', N'603925',  51, N'A', N'P', 3),
      (N'20120321', N'603925', 467, N'A', N'P', 3), (N'20120321', N'603925', 548, N'A', N'P', 3), (N'20120321', N'603925', 452, N'A', N'P', 3),
	  (N'20120321', N'603925', 758, N'B', N'P', 3), (N'20120321', N'603925', 551, N'F', N'F', 0), (N'20120321', N'603925',  60, N'A', N'P', 3),
	  (N'20120321', N'603925', 597, N'B', N'P', 3), (N'20120321', N'603925', 551, N'F', N'P', 3), (N'20120321', N'603925', 644, N'F', N'P', 3),
	  (N'20120321', N'603925', 502, N'A', N'P', 3), (N'20120321', N'603925', 536, N'F', N'F', 0), (N'20120321', N'603925', 508, N'A', N'P', 3),
	  (N'20120321', N'603925', 458, N'B', N'P', 3), (N'20120321', N'603925', 242, N'B', N'P', 3), (N'20120321', N'603925', 548, N'B', N'P', 3),
	  (N'20120321', N'603925', 438, N'B', N'P', 3), (N'20120321', N'603925', 506, N'C', N'P', 3), (N'20120321', N'603925', 449, N'C', N'P', 3),
	  (N'20120321', N'603925', 652, N'A', N'P', 3), (N'20120321', N'603925', 531, N'B', N'P', 3), (N'20120321', N'603925', 137, N'B', N'P', 3),
	  (N'20120321', N'603925',  37, N'F', N'F', 0), (N'20120321', N'603925', 652, N'A', N'P', 3), (N'20120321', N'293804', 425, N'D', N'P', 3);
GO
INSERT INTO UndergraduateGrades(DateGradePosted, TeacherNumber, RegistrationID, LetterGrade, PassFailStatus, CreditReceived)
VALUES(N'20120321', N'293804', 641, N'A', N'P', 3), (N'20120321', N'293804', 207, N'B', N'P', 3), (N'20120321', N'293804', 718, N'B', N'P', 3),
	  (N'20120321', N'293804',  28, N'C', N'P', 3), (N'20120321', N'293804', 397, N'C', N'P', 3), (N'20120321', N'293804', 128, N'C', N'P', 3),
	  (N'20120321', N'293804', 721, N'C', N'P', 3), (N'20120321', N'293804',   2, N'A', N'P', 3), (N'20120321', N'293804', 149, N'A', N'P', 3),
	  (N'20120321', N'293804', 735, N'C', N'P', 3), (N'20120321', N'293804', 268, N'F', N'F', 0), (N'20120321', N'293804', 138, N'B', N'P', 3),
	  (N'20120321', N'293804', 207, N'B', N'P', 3), (N'20120321', N'293804',  12, N'B', N'P', 3), (N'20120321', N'293804', 138, N'C', N'P', 3),
	  (N'20120321', N'293804', 309, N'A', N'P', 3), (N'20120321', N'293804', 421, N'F', N'F', 0), (N'20120321', N'293804', 430, N'F', N'F', 0),
	  (N'20120321', N'293804',  33, N'A', N'P', 3), (N'20120321', N'293804', 123, N'D', N'P', 3), (N'20120321', N'293804', 283, N'D', N'P', 3),
	  (N'20120321', N'293804', 451, N'C', N'P', 3), (N'20120321', N'293804', 201, N'C', N'P', 3), (N'20120321', N'293804', 126, N'C', N'P', 3),
	  (N'20120321', N'293804',  27, N'C', N'P', 3), (N'20120321', N'293804', 550, N'B', N'P', 3), (N'20120321', N'293804', 729, N'B', N'P', 3);
GO
INSERT INTO UndergraduateGrades(DateGradePosted, TeacherNumber, RegistrationID, LetterGrade, PassFailStatus, CreditReceived)
VALUES(N'20120321', N'293804', 78, N'B', N'P', 3),
(N'20120321', N'293804', 684, N'C', N'P', 3),
(N'20120321', N'293804', 604, N'F', N'F', 0),
(N'20120321', N'293804', 501, N'D', N'P', 3),
(N'20120321', N'293804', 455, N'A', N'P', 3),
(N'20120321', N'293804', 36, N'B', N'P', 3),
(N'20120321', N'293804', 738, N'B', N'P', 3),
(N'20120321', N'293804', 216, N'A', N'P', 3),
(N'20120321', N'293804', 571, N'C', N'P', 3),
(N'20120321', N'293804', 49, N'F', N'F', 0),
(N'20120321', N'293804', 649, N'C', N'P', 3),
(N'20120321', N'293804', 504, N'C', N'P', 3),
(N'20120321', N'293804', 732, N'D', N'P', 3),
(N'20120321', N'293804', 24, N'B', N'P', 3),
(N'20120321', N'293804', 528, N'D', N'P', 3),
(N'20120321', N'293804', 509, N'C', N'P', 3),
(N'20120321', N'293804', 685, N'C', N'P', 3),
(N'20120321', N'293804', 503, N'F', N'F', 0),
(N'20120321', N'293804', 683, N'D', N'P', 3),
(N'20120321', N'293804', 509, N'F', N'F', 0),
(N'20120321', N'293804', 313, N'B', N'P', 3),
(N'20120321', N'293804', 36, N'B', N'P', 3),
(N'20120321', N'293804', 552, N'A', N'P', 3),
(N'20120321', N'293804', 615, N'B', N'P', 3),
(N'20120321', N'293804', 227, N'C', N'P', 3),
(N'20120321', N'293804', 444, N'C', N'P', 3),
(N'20120321', N'293804', 36, N'B', N'P', 3);
GO
INSERT INTO UndergraduateGrades(DateGradePosted, TeacherNumber, RegistrationID, LetterGrade, PassFailStatus, CreditReceived)
VALUES(N'20120321', N'708848', 254, N'B', N'P', 3),
(N'20120321', N'708848', 417, N'B', N'P', 3),
(N'20120321', N'708848', 15, N'A', N'P', 3),
(N'20120321', N'708848', 367, N'A', N'P', 3),
(N'20120321', N'708848', 435, N'F', N'F', 0),
(N'20120321', N'708848', 617, N'B', N'P', 3),
(N'20120321', N'708848', 8, N'C', N'P', 3),
(N'20120321', N'708848', 326, N'C', N'P', 3),
(N'20120321', N'708848', 17, N'C', N'P', 3),
(N'20120321', N'708848', 129, N'A', N'P', 3),
(N'20120321', N'708848', 32, N'D', N'P', 3),
(N'20120321', N'708848', 274, N'C', N'P', 3),
(N'20120321', N'708848', 88, N'C', N'P', 3),
(N'20120321', N'708848', 25, N'A', N'P', 3),
(N'20120321', N'708848', 617, N'B', N'P', 3),
(N'20120321', N'708848', 417, N'F', N'F', 0),
(N'20120322', N'263648', 388, N'A', N'P', 3),
(N'20120322', N'263648', 518, N'A', N'P', 3),
(N'20120322', N'263648', 232, N'A', N'P', 3),
(N'20120322', N'263648', 626, N'A', N'P', 3),
(N'20120322', N'263648', 96, N'A', N'P', 3),
(N'20120322', N'263648', 613, N'D', N'P', 3),
(N'20120322', N'263648', 557, N'C', N'P', 3),
(N'20120322', N'263648', 106, N'A', N'P', 3),
(N'20120322', N'263648', 93, N'B', N'P', 3),
(N'20120322', N'263648', 263, N'B', N'P', 3),
(N'20120322', N'263648', 361, N'B', N'P', 3),
(N'20120322', N'263648', 119, N'C', N'P', 3),
(N'20120322', N'263648', 762, N'D', N'P', 3),
(N'20120322', N'263648', 585, N'F', N'F', 0),
(N'20120322', N'263648', 355, N'A', N'P', 3),
(N'20120322', N'263648', 278, N'A', N'P', 3),
(N'20120322', N'263648', 211, N'A', N'P', 3),
(N'20120322', N'263648', 464, N'F', N'F', 0),
(N'20120322', N'263648', 290, N'A', N'P', 3),
(N'20120322', N'263648', 561, N'A', N'P', 3),
(N'20120322', N'263648', 180, N'B', N'P', 3),
(N'20120322', N'263648', 96, N'B', N'P', 3),
(N'20120322', N'263648', 226, N'B', N'P', 3),
(N'20120322', N'263648', 388, N'B', N'P', 3),
(N'20120322', N'263648', 516, N'F', N'F', 0),
(N'20120322', N'263648', 322, N'C', N'P', 3),
(N'20120322', N'263648', 496, N'C', N'P', 3),
(N'20120322', N'263648', 106, N'A', N'P', 3);
GO
INSERT INTO UndergraduateGrades(DateGradePosted, TeacherNumber, RegistrationID, LetterGrade, PassFailStatus, CreditReceived)
VALUES(N'20120322', N'263648', 142, N'F', N'F', 0),
(N'20120322', N'263648', 409, N'A', N'P', 3),
(N'20120322', N'263648', 328, N'A', N'P', 3),
(N'20120322', N'263648', 689, N'A', N'P', 3),
(N'20120322', N'263648', 391, N'A', N'P', 3),
(N'20120322', N'263648', 555, N'B', N'P', 3),
(N'20120322', N'263648', 638, N'B', N'P', 3),
(N'20120322', N'263648', 173, N'C', N'P', 3),
(N'20120322', N'263648', 90, N'C', N'P', 3),
(N'20120322', N'263648', 302, N'A', N'P', 3),
(N'20120322', N'263648', 751, N'C', N'P', 3),
(N'20120322', N'263648', 492, N'D', N'P', 3),
(N'20120322', N'263648', 357, N'D', N'P', 3),
(N'20120322', N'263648', 185, N'F', N'F', 0),
(N'20120322', N'263648', 103, N'A', N'P', 3),
(N'20120322', N'263648', 699, N'B', N'P', 3),
(N'20120322', N'263648', 382, N'C', N'P', 3),
(N'20120322', N'263648', 576, N'C', N'P', 3),
(N'20120322', N'263648', 748, N'C', N'P', 3),
(N'20120322', N'263648', 372, N'F', N'F', 0),
(N'20120322', N'263648', 287, N'A', N'P', 3),
(N'20120322', N'263648', 756, N'A', N'P', 3),
(N'20120322', N'263648', 394, N'A', N'P', 3),
(N'20120322', N'972940', 465, N'A', N'P', 3),
(N'20120322', N'972940', 210, N'D', N'P', 3),
(N'20120322', N'972940', 320, N'C', N'P', 3),
(N'20120322', N'972940', 611, N'C', N'P', 3),
(N'20120322', N'972940', 118, N'C', N'P', 3),
(N'20120322', N'972940', 558, N'A', N'P', 3),
(N'20120322', N'972940', 262, N'D', N'P', 3),
(N'20120322', N'972940', 179, N'F', N'F', 0),
(N'20120322', N'972940', 45, N'A', N'P', 3),
(N'20120322', N'972940', 289, N'B', N'P', 3),
(N'20120322', N'972940', 578, N'A', N'P', 3),
(N'20120322', N'972940', 166, N'A', N'P', 3),
(N'20120322', N'972940', 130, N'A', N'P', 3),
(N'20120322', N'972940', 560, N'B', N'P', 3),
(N'20120322', N'972940', 218, N'B', N'P', 3),
(N'20120322', N'972940', 98, N'B', N'P', 3),
(N'20120322', N'972940', 353, N'B', N'P', 3),
(N'20120322', N'972940', 659, N'B', N'P', 3),
(N'20120322', N'972940', 280, N'F', N'F', 0),
(N'20120322', N'972940', 583, N'F', N'F', 0),
(N'20120322', N'972940', 605, N'B', N'P', 3),
(N'20120322', N'972940', 358, N'A', N'P', 3),
(N'20120322', N'972940', 465, N'A', N'P', 3);
GO
INSERT INTO UndergraduateGrades(DateGradePosted, TeacherNumber, RegistrationID, LetterGrade, PassFailStatus, CreditReceived)
VALUES(N'20120322', N'972940', 152, N'B', N'P', 3),
(N'20120322', N'972940', 329, N'C', N'P', 3),
(N'20120322', N'972940', 722, N'C', N'P', 3),
(N'20120322', N'972940', 215, N'B', N'P', 3),
(N'20120322', N'972940', 144, N'F', N'F', 0),
(N'20120322', N'972940', 233, N'A', N'P', 3),
(N'20120322', N'972940', 325, N'A', N'P', 3),
(N'20120322', N'972940', 743, N'A', N'P', 3),
(N'20120322', N'972940', 687, N'B', N'P', 3),
(N'20120322', N'972940', 189, N'F', N'F', 0),
(N'20120322', N'972940', 31, N'C', N'P', 3),
(N'20120322', N'972940', 238, N'A', N'P', 3),
(N'20120322', N'972940', 363, N'B', N'P', 3),
(N'20120322', N'972940', 609, N'B', N'P', 3),
(N'20120322', N'972940', 229, N'B', N'P', 3),
(N'20120322', N'972940', 147, N'F', N'F', 0),
(N'20120322', N'972940', 249, N'B', N'P', 3),
(N'20120322', N'972940', 677, N'A', N'P', 3),
(N'20120322', N'972940', 369, N'A', N'P', 3),
(N'20120322', N'972940', 763, N'B', N'P', 3),
(N'20120322', N'972940', 266, N'C', N'P', 3),
(N'20120322', N'972940', 484, N'C', N'P', 3),
(N'20120322', N'972940', 602, N'C', N'P', 3),
(N'20120322', N'972940', 339, N'C', N'P', 3),
(N'20120322', N'972940', 251, N'B', N'P', 3),
(N'20120322', N'972940', 526, N'B', N'P', 3),
(N'20120322', N'972940', 378, N'C', N'P', 3),
(N'20120322', N'972940', 586, N'A', N'P', 3),
(N'20120322', N'972940', 640, N'D', N'P', 3),
(N'20120323', N'293804', 121, N'A', N'P', 3),
(N'20120323', N'293804', 575, N'B', N'P', 3),
(N'20120323', N'293804', 191, N'B', N'P', 3),
(N'20120323', N'293804', 497, N'C', N'P', 3),
(N'20120323', N'293804', 752, N'D', N'P', 3),
(N'20120323', N'293804', 141, N'C', N'P', 3),
(N'20120323', N'293804', 675, N'F', N'F', 0),
(N'20120323', N'293804', 169, N'A', N'P', 3),
(N'20120323', N'293804', 487, N'C', N'P', 3),
(N'20120323', N'293804', 48, N'C', N'P', 3),
(N'20120323', N'293804', 285, N'C', N'P', 3),
(N'20120323', N'293804', 272, N'B', N'P', 3),
(N'20120323', N'293804', 697, N'B', N'P', 3),
(N'20120323', N'293804', 392, N'A', N'P', 3),
(N'20120323', N'293804', 440, N'B', N'P', 3),
(N'20120323', N'293804', 81, N'B', N'P', 3),
(N'20120323', N'293804', 111, N'C', N'P', 3),
(N'20120323', N'293804', 534, N'A', N'P', 3),
(N'20120323', N'293804', 370, N'C', N'P', 3),
(N'20120323', N'293804', 304, N'F', N'F', 0),
(N'20120323', N'293804', 753, N'C', N'P', 3),
(N'20120323', N'293804', 157, N'B', N'P', 3),
(N'20120323', N'293804', 746, N'B', N'P', 3),
(N'20120323', N'293804', 694, N'B', N'P', 3),
(N'20120323', N'293804', 658, N'A', N'P', 3),
(N'20120322', N'972940', 339, N'C', N'P', 3);
GO
INSERT INTO UndergraduateGrades(DateGradePosted, TeacherNumber, RegistrationID, LetterGrade, PassFailStatus, CreditReceived)
VALUES(N'20120323', N'293804', 619, N'A', N'P', 3),
(N'20120323', N'293804', 197, N'A', N'P', 3),
(N'20120323', N'293804', 666, N'B', N'P', 3),
(N'20120323', N'293804', 6, N'B', N'P', 3),
(N'20120323', N'293804', 178, N'B', N'P', 3),
(N'20120323', N'293804', 662, N'C', N'P', 3),
(N'20120323', N'293804', 22, N'F', N'F', 0),
(N'20120323', N'293804', 563, N'B', N'P', 3),
(N'20120323', N'293804', 631, N'B', N'P', 3),
(N'20120323', N'293804', 64, N'A', N'P', 3),
(N'20120323', N'293804', 468, N'D', N'P', 3),
(N'20120323', N'293804', 197, N'D', N'P', 3),
(N'20120323', N'293804', 260, N'A', N'P', 3),
(N'20120323', N'293804', 736, N'F', N'F', 0),
(N'20120323', N'293804', 44, N'B', N'P', 3),
(N'20120323', N'293804', 549, N'B', N'P', 3),
(N'20120323', N'293804', 619, N'A', N'P', 3),
(N'20120323', N'293804', 708, N'C', N'P', 3),
(N'20120323', N'293804', 450, N'C', N'P', 3),
(N'20120323', N'293804', 252, N'A', N'P', 3),
(N'20120323', N'293804', 57, N'B', N'P', 3),
(N'20120323', N'293804', 108, N'F', N'F', 0),
(N'20120323', N'293804', 591, N'A', N'P', 3),
(N'20120323', N'293804', 418, N'B', N'P', 3),
(N'20120323', N'293804', 466, N'B', N'P', 3),
(N'20120323', N'293804', 670, N'C', N'P', 3),
(N'20120323', N'293804', 333, N'D', N'P', 3),
(N'20120323', N'293804', 478, N'D', N'P', 3),
(N'20120323', N'293804', 418, N'B', N'P', 3);
GO
INSERT INTO UndergraduateGrades(DateGradePosted, TeacherNumber, RegistrationID, LetterGrade, PassFailStatus, CreditReceived) 
VALUES(N'20120323', N'293804', 70, N'A', N'P', 3),
(N'20120323', N'293804', 474, N'F', N'F', 0),
(N'20120323', N'293804', 172, N'B', N'P', 3),
(N'20120323', N'293804', 14, N'B', N'P', 3),
(N'20120323', N'293804', 726, N'B', N'P', 3),
(N'20120323', N'293804', 432, N'F', N'F', 0),
(N'20120323', N'293804', 331, N'B', N'P', 3),
(N'20120323', N'293804', 86, N'B', N'P', 3),
(N'20120323', N'293804', 318, N'A', N'P', 3),
(N'20120323', N'293804', 384, N'A', N'P', 3),
(N'20120323', N'293804', 740, N'C', N'P', 3),
(N'20120323', N'293804', 346, N'D', N'P', 3),
(N'20120323', N'293804', 350, N'D', N'P', 3),
(N'20120323', N'293804', 161, N'D', N'P', 3),
(N'20120323', N'293804', 220, N'F', N'F', 0),
(N'20120323', N'293804', 700, N'B', N'P', 3),
(N'20120323', N'293804', 297, N'F', N'P', 3),
(N'20120323', N'293804', 222, N'B', N'P', 3),
(N'20120323', N'293804', 153, N'A', N'P', 3),
(N'20120323', N'293804', 459, N'F', N'F', 0),
(N'20120323', N'293804', 491, N'C', N'P', 3),
(N'20120323', N'293804', 408, N'C', N'P', 3),
(N'20120323', N'928007', 336, N'B', N'P', 3),
(N'20120323', N'928007', 181, N'B', N'P', 3),
(N'20120323', N'928007', 678, N'A', N'P', 3),
(N'20120323', N'928007', 527, N'C', N'P', 3),
(N'20120323', N'928007', 402, N'A', N'P', 3),
(N'20120323', N'928007', 105, N'A', N'P', 3),
(N'20120323', N'928007', 181, N'B', N'P', 3);
GO
INSERT INTO UndergraduateGrades(DateGradePosted, TeacherNumber, RegistrationID, LetterGrade, PassFailStatus, CreditReceived) 
VALUES(N'20120323', N'928007', 614, N'B', N'P', 3),
(N'20120323', N'928007', 354, N'F', N'F', 0),
(N'20120323', N'928007', 146, N'B', N'P', 3),
(N'20120323', N'928007', 321, N'C', N'P', 3),
(N'20120323', N'928007', 579, N'C', N'P', 3),
(N'20120323', N'928007', 463, N'A', N'P', 3),
(N'20120323', N'520203', 612, N'D', N'P', 3),
(N'20120323', N'928007', 148, N'F', N'F', 0),
(N'20120323', N'928007', 606, N'D', N'P', 3),
(N'20120323', N'928007', 364, N'A', N'P', 3),
(N'20120323', N'928007', 519, N'B', N'P', 3),
(N'20120323', N'928007', 514, N'B', N'P', 3),
(N'20120323', N'640840', 494, N'A', N'P', 3),
(N'20120323', N'640840', 639, N'C', N'P', 3),
(N'20120323', N'640840', 373, N'C', N'P', 3),
(N'20120323', N'640840', 533, N'B', N'P', 3),
(N'20120323', N'640840', 698, N'D', N'P', 3),
(N'20120323', N'640840', 305, N'F', N'F', 0),
(N'20120323', N'640840', 524, N'F', N'F', 0),
(N'20120323', N'640840', 174, N'A', N'P', 3),
(N'20120323', N'640840', 750, N'C', N'P', 3),
(N'20120323', N'640840', 102, N'B', N'P', 3),
(N'20120323', N'640840', 356, N'B', N'P', 3),
(N'20120323', N'640840', 754, N'B', N'P', 3),
(N'20120323', N'640840', 393, N'A', N'P', 3),
(N'20120323', N'640840', 246, N'A', N'P', 3),
(N'20120323', N'640840', 406, N'D', N'P', 3),
(N'20120323', N'520203', 65, N'C', N'P', 3),
(N'20120323', N'640840', 754, N'B', N'P', 3);
GO
INSERT INTO UndergraduateGrades(DateGradePosted, TeacherNumber, RegistrationID, LetterGrade, PassFailStatus, CreditReceived) 
VALUES(N'20120323', N'520203', 259, N'B', N'P', 3),
(N'20120323', N'520203', 10, N'B', N'P', 3),
(N'20120323', N'520203', 709, N'C', N'P', 3),
(N'20120323', N'520203', 56, N'A', N'P', 3),
(N'20120323', N'520203', 42, N'A', N'P', 3),
(N'20120323', N'520203', 114, N'D', N'P', 3),
(N'20120323', N'520203', 59, N'F', N'F', 0),
(N'20120323', N'520203', 190, N'D', N'P', 3),
(N'20120323', N'520203', 122, N'C', N'P', 3),
(N'20120323', N'520203', 58, N'A', N'P', 3),
(N'20120323', N'520203', 646, N'F', N'F', 0),
(N'20120323', N'520203', 71, N'B', N'P', 3),
(N'20120323', N'520203', 177, N'C', N'P', 3),
(N'20120323', N'520203', 671, N'C', N'P', 3),
(N'20120323', N'520203', 634, N'C', N'P', 3),
(N'20120323', N'520203', 122, N'F', N'F', 0),
(N'20120323', N'520203', 412, N'A', N'P', 3),
(N'20120323', N'640840', 505, N'F', N'P', 3),
(N'20120323', N'640840', 209, N'A', N'P', 3),
(N'20120323', N'640840', 399, N'B', N'P', 3),
(N'20120323', N'640840', 18, N'B', N'P', 3),
(N'20120323', N'640840', 651, N'C', N'P', 3),
(N'20120323', N'640840', 623, N'A', N'P', 3),
(N'20120323', N'640840', 76, N'C', N'P', 3),
(N'20120323', N'640840', 284, N'C', N'P', 3),
(N'20120323', N'640840', 206, N'C', N'P', 3),
(N'20120323', N'640840', 398, N'D', N'P', 3),
(N'20120323', N'640840', 427, N'A', N'P', 0),
(N'20120323', N'640840', 76, N'C', N'P', 3);
GO
INSERT INTO UndergraduateGrades(DateGradePosted, TeacherNumber, RegistrationID, LetterGrade, PassFailStatus, CreditReceived) 
VALUES(N'20120323', N'640840', 439, N'D', N'P', 3),
(N'20120323', N'640840', 422, N'C', N'P', 3),
(N'20120323', N'640840', 622, N'F', N'F', 0),
(N'20120323', N'640840', 110, N'D', N'P', 3),
(N'20120323', N'928007', 416, N'A', N'P', 3),
(N'20120323', N'928007', 616, N'A', N'P', 3),
(N'20120323', N'928007', 366, N'A', N'P', 3),
(N'20120323', N'928007', 234, N'B', N'P', 3),
(N'20120323', N'928007', 273, N'B', N'P', 3),
(N'20120323', N'928007', 691, N'B', N'P', 3),
(N'20120323', N'928007', 324, N'B', N'P', 3),
(N'20120323', N'928007', 581, N'F', N'F', 0),
(N'20120323', N'928007', 298, N'D', N'P', 3),
(N'20120323', N'928007', 767, N'A', N'P', 3),
(N'20120323', N'928007', 330, N'B', N'P', 3),
(N'20120323', N'928007', 744, N'F', N'F', 0),
(N'20120323', N'928007', 240, N'A', N'P', 3),
(N'20120323', N'928007', 485, N'C', N'P', 3),
(N'20120323', N'928007', 340, N'A', N'P', 3),
(N'20120323', N'928007', 250, N'A', N'P', 3),
(N'20120323', N'928007', 600, N'B', N'P', 3),
(N'20120323', N'928007', 559, N'A', N'P', 3),
(N'20120323', N'928007', 348, N'B', N'P', 3),
(N'20120323', N'928007', 276, N'C', N'P', 3),
(N'20120323', N'928007', 739, N'C', N'P', 3),
(N'20120323', N'928007', 387, N'D', N'P', 3),
(N'20120323', N'928007', 99, N'F', N'F', 0),
(N'20120323', N'928007', 223, N'D', N'P', 3),
(N'20120323', N'928007', 276, N'C', N'P', 3);
GO

INSERT INTO UndergraduateGrades(DateGradePosted, TeacherNumber, RegistrationID, LetterGrade, PassFailStatus, CreditReceived) 
VALUES(N'20120323', N'928007', 136, N'A', N'P', 3),
(N'20120323', N'928007', 279, N'C', N'P', 3),
(N'20120323', N'928007', 374, N'B', N'P', 3),
(N'20120323', N'928007', 704, N'B', N'P', 3),
(N'20120323', N'928007', 660, N'A', N'P', 3),
(N'20120323', N'928007', 460, N'F', N'F', 0),
(N'20120323', N'928007', 212, N'F', N'P', 3),
(N'20120323', N'520203', 443, N'C', N'P', 3),
(N'20120323', N'520203', 511, N'B', N'P', 3),
(N'20120323', N'520203', 715, N'B', N'P', 3),
(N'20120323', N'520203', 598, N'B', N'P', 3),
(N'20120323', N'520203', 35, N'D', N'P', 3),
(N'20120323', N'520203', 198, N'A', N'P', 3),
(N'20120323', N'520203', 311, N'F', N'F', 0),
(N'20120323', N'520203', 607, N'A', N'P', 3),
(N'20120323', N'520203', 261, N'A', N'P', 3),
(N'20120323', N'520203', 61, N'D', N'P', 3),
(N'20120323', N'520203', 245, N'B', N'P', 3),
(N'20120323', N'520203', 456, N'C', N'P', 3),
(N'20120323', N'520203', 428, N'C', N'P', 3),
(N'20120323', N'520203', 650, N'C', N'P', 3),
(N'20120323', N'520203', 574, N'A', N'P', 3),
(N'20120323', N'520203', 630, N'F', N'F', 0),
(N'20120323', N'520203', 588, N'A', N'P', 3),
(N'20120323', N'928007', 154, N'B', N'P', 3),
(N'20120323', N'928007', 669, N'A', N'P', 3),
(N'20120323', N'928007', 87, N'A', N'P', 3),
(N'20120323', N'928007', 343, N'D', N'P', 3),
(N'20120323', N'520203', 588, N'A', N'P', 3);
GO

INSERT INTO UndergraduateGrades(DateGradePosted, TeacherNumber, RegistrationID, LetterGrade, PassFailStatus, CreditReceived) 
VALUES(N'20120323', N'928007', 727, N'C', N'P', 3),
(N'20120323', N'928007', 221, N'D', N'P', 3),
(N'20120323', N'928007', 338, N'A', N'P', 3),
(N'20120323', N'928007', 760, N'F', N'F', 0),
(N'20120323', N'928007', 383, N'C', N'P', 3),
(N'20120323', N'928007', 332, N'A', N'P', 3),
(N'20120323', N'928007', 132, N'A', N'P', 3),
(N'20120323', N'928007', 434, N'A', N'P', 3),
(N'20120323', N'928007', 316, N'A', N'P', 3),
(N'20120323', N'928007', 480, N'B', N'P', 3),
(N'20120323', N'928007', 162, N'B', N'P', 3),
(N'20120324', N'520203', 544, N'B', N'P', 3),
(N'20120324', N'520203', 627, N'C', N'P', 3),
(N'20120324', N'520203', 194, N'F', N'F', 0),
(N'20120324', N'520203', 719, N'B', N'P', 3),
(N'20120324', N'520203', 163, N'A', N'P', 3),
(N'20120324', N'520203', 4, N'A', N'P', 3),
(N'20120324', N'520203', 566, N'F', N'F', 0),
(N'20120324', N'520203', 663, N'D', N'P', 3),
(N'20120324', N'520203', 737, N'C', N'P', 3),
(N'20120324', N'520203', 419, N'C', N'P', 3),
(N'20120324', N'520203', 566, N'C', N'P', 3),
(N'20120324', N'520203', 125, N'D', N'P', 3),
(N'20120324', N'520203', 724, N'D', N'P', 3),
(N'20120324', N'520203', 469, N'A', N'P', 3),
(N'20120324', N'520203', 545, N'C', N'P', 3),
(N'20120324', N'520203', 595, N'B', N'P', 3),
(N'20120324', N'520203', 150, N'B', N'P', 3),
(N'20120324', N'520203', 724, N'D', N'P', 3);
GO

INSERT INTO UndergraduateGrades(DateGradePosted, TeacherNumber, RegistrationID, LetterGrade, PassFailStatus, CreditReceived) 
VALUES(N'20120324', N'520203', 286, N'B', N'P', 3),
(N'20120324', N'520203', 577, N'A', N'P', 3),
(N'20120324', N'520203', 747, N'D', N'P', 3),
(N'20120324', N'520203', 77, N'C', N'P', 3),
(N'20120324', N'520203', 498, N'C', N'P', 3),
(N'20120324', N'520203', 269, N'C', N'P', 3),
(N'20120324', N'520203', 139, N'F', N'F', 0),
(N'20120324', N'520203', 381, N'A', N'P', 3),
(N'20120324', N'520203', 686, N'C', N'P', 3),
(N'20120324', N'520203', 490, N'B', N'P', 3),
(N'20120324', N'520203', 80, N'B', N'P', 3),
(N'20120324', N'520203', 529, N'A', N'P', 3),
(N'20120324', N'520203', 695, N'D', N'P', 3),
(N'20120324', N'520203', 195, N'F', N'F', 0),
(N'20120324', N'263648', 300, N'A', N'P', 3),
(N'20120324', N'263648', 603, N'A', N'P', 3),
(N'20120324', N'263648', 239, N'A', N'P', 3),
(N'20120324', N'263648', 365, N'C', N'P', 3),
(N'20120324', N'263648', 292, N'A', N'P', 3),
(N'20120324', N'263648', 145, N'A', N'P', 3),
(N'20120324', N'263648', 335, N'B', N'P', 3),
(N'20120324', N'263648', 635, N'B', N'P', 3),
(N'20120324', N'263648', 95, N'B', N'P', 3),
(N'20120324', N'263648', 282, N'B', N'P', 3),
(N'20120324', N'263648', 235, N'B', N'P', 3),
(N'20120324', N'263648', 483, N'C', N'P', 3),
(N'20120324', N'263648', 214, N'D', N'P', 3),
(N'20120324', N'263648', 741, N'D', N'P', 3),
(N'20120324', N'263648', 282, N'B', N'P', 3);
GO

INSERT INTO UndergraduateGrades(DateGradePosted, TeacherNumber, RegistrationID, LetterGrade, PassFailStatus, CreditReceived) 
VALUES(N'20120324', N'263648', 248, N'F', N'F', 0), (N'20120324', N'263648', 521, N'A', N'P', 3), (N'20120324', N'263648', 342, N'A', N'P', 3),
(N'20120324', N'263648', 679, N'F', N'F', 0), (N'20120324', N'263648', 601, N'A', N'P', 3), (N'20120324', N'263648', 706, N'B', N'P', 3),
(N'20120324', N'263648', 379, N'B', N'F', 0), (N'20120324', N'263648', 160, N'A', N'P', 3), (N'20120324', N'263648', 481, N'A', N'P', 3),
(N'20120324', N'263648', 668, N'A', N'P', 3), (N'20120324', N'263648', 113, N'F', N'F', 0), (N'20120324', N'263648', 53, N'A', N'P', 3),
(N'20120324', N'263648', 538, N'A', N'P', 3), (N'20120324', N'263648', 115, N'A', N'P', 3), (N'20120324', N'263648', 728, N'A', N'P', 3),
(N'20120324', N'263648', 701, N'F', N'F', 0), (N'20120324', N'263648', 124, N'A', N'P', 3), (N'20120324', N'263648', 386, N'A', N'P', 3),
(N'20120324', N'263648', 317, N'A', N'P', 3), (N'20120324', N'263648', 176, N'F', N'F', 0), (N'20120324', N'263648', 345, N'B', N'P', 3),
(N'20120324', N'263648', 74, N'A', N'P', 3), (N'20120324', N'263648', 134, N'B', N'P', 3), (N'20120324', N'263648', 224, N'B', N'P', 3),
(N'20120324', N'263648', 337, N'A', N'P', 3), (N'20120324', N'263648', 433, N'B', N'P', 3), (N'20120324', N'263648', 265, N'F', N'F', 0),
(N'20120324', N'263648', 461, N'A', N'P', 3),
(N'20120324', N'263648', 224, N'B', N'P', 3);
GO

INSERT INTO UndergraduateGrades(DateGradePosted, TeacherNumber, RegistrationID, LetterGrade, PassFailStatus, CreditReceived) 
VALUES(N'20120324', N'263648', 477, N'B', N'P', 3), (N'20120324', N'263648', 375, N'C', N'P', 3), (N'20120325', N'928007', 116, N'A', N'P', 3),
	  (N'20120325', N'928007',  29, N'C', N'P', 3), (N'20120325', N'928007', 764, N'A', N'P', 3), (N'20120325', N'928007', 228, N'D', N'P', 3),
	  (N'20120325', N'928007',  16, N'F', N'F', 0), (N'20120325', N'928007', 768, N'B', N'P', 3), (N'20120325', N'928007', 230, N'A', N'P', 3),
	  (N'20120325', N'928007',  26, N'B', N'P', 3), (N'20120325', N'928007',   7, N'B', N'P', 3), (N'20120325', N'928007',  19, N'B', N'P', 3),
	  (N'20120325', N'928007', 188, N'B', N'P', 3), (N'20120325', N'928007',  46, N'A', N'P', 3);
