# README

Ruby Version: '2.5.3'
Rails Version:  '6.1.6'
node Version : v16.14.2
postgres_database for development:  rumby_development
postgres_database user for development:  postgres
postgres_database password for development:  Mypassword

Models: Teacher, School, SkoolYear

Controllers:
TeachersController


Associations:

SkoolYear
---------
belongs_to :teacher

attribute:
"year"

School
------
has_and_belongs_to_many :teachers

attribute:
"school_name"

Teacher
-------
has_many :skool_years
has_and_belongs_to_many :schools

attributes:

"teacher_name"
"school_name"
"school_year"
"teacher_id"

I have used the following:
Rails 6
Bootstrap
PostgreSQL
RSpec
Faker

I have test specs for all the models and the one controller. I am able to add multiple teachers, skool_years and schools. As can be seen from the test specs.

The following requirement is tested either through the console or by test scripts.

"Teacher can have multiple schools
School has multiple teachers
Teachers can have multiple school years"

I am able to add teacher to database, with 4 columns:
Teacher ID
Teacher Name
School Name
School Year

For the requirements below:
"The columns can be sorted/reverse sorted by clicking on column header. Table can must be paginated with a default row numbers of 15, and can be changed to 25 and 50 rows.
Sort/paging methods done as a Concerns controller.""

The columns can be sorted/reverse sorted by clicking on column header. (for this I referred and followed Rails cast on the web) The Sort methods are not done as concerns controller.

First I used, will_paginate gem, then I commented and have put some methods in the concerns directory. (I referred and followed a blog on the web) So by default the number of rows are 15. That can be changed 
by changing the params.


What needs to be done:

The application to be made as a single page application (I had very weird problems of javascript undefined error, though I had included jQuery and etc Need to do more debugging)

I am not able to display multiple school_years and School_names. I am able to add them to teachers at the 
console and in the test specs.

Sorting methods are not in concerns directory.

Updates with 2nd commit:
========================
I recreated the models using scaffold as the nested forms had problems and was finding it difficult to trace the problem. Affter scaffolding it was little easier.

Currently sorting and pagination work and not from concerns directory.

Adding/editing and deleting schools and skool_years work.


Updates with 3rd commit:
========================
Sorting methods are put in the concerns directory.
For pagination, we can provide the per page value as params. If no value provided in params then it will default
to 15. 

What is still missing?

1.I could not convert it into single page application. I tried it using jQuery and Ajax. It worked to some extent but not fully. So I reverted back. This took a lot of time.
2.I did not start with HAML. Not familiar with it. I did not convert erb to HAML. I tried it on a different code base, using 'haml-rails' gem. It looked like it worked. I wasn't sure, so I did not convert it. But I can pick it up.
3.More testing needed.




