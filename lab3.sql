--q2.1
insert into student(s_email,s_name,major)
values('s1@jmu.edu','s1','IA'),
		('s2@jmu.edu','s2','IA'),
		('s3@jmu.edu','s3','ISAT'),
		('s4@jmu.edu','s4','ISAT')
--q2.2
insert into professor(p_email,p_name,office)
values			('p1@jmu.edu','p1','o1'),
				('p2@jmu.edu','p2','o2')
--q2.3
insert into course(c_number,c_name,room,p_email)
values      ('c1','postgresql','r1','p1@jmu.edu'),
			('c2','mongodb','r2','p2@jmu.edu'),
			('c3','twitter','r1','p1@jmu.edu')
--q2.4
insert into enroll(s_email,c_number)
values            ('s1@jmu.edu','c1'),
				('s2@jmu.edu','c1'),
				('s3@jmu.edu','c1'),
				('s4@jmu.edu','c2'),
				('s2@jmu.edu','c3'),
				('s3@jmu.edu','c3')
--q2.5
insert into professor(p_email,p_name,office)
values		('p3@jmu.edu','p3','o3') ;

insert into course(c_number,c_name,room,p_email)
values		('c4','facebook','r1','p3@jmu.edu')
-- you need to insert the professor line first because the course requires the professor's email, which doesn't exist until inserting the row into professor

--q2.6
update course
set p_email = 'p3@jmu.edu'
where p_email = 'p1@jmu.edu'  ;

delete from professor
where p_email = 'p1@jmu.edu'
-- you need to update the course before you delete the professor. if you try and delete the professor first, there will be an error because the code won't 
-- recognize the professor's email if it's already been deleted
