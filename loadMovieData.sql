BULK INSERT actors
 FROM 'C:\Users\messi\Desktop\sxolh\3ο Έτος\2ο Εξάμηνο\Συστήματα Διαχείρισης Και Ανάλυσης Δεδομένων\Project1\movieData\movieData\actors.txt'
WITH (FIRSTROW =2, FIELDTERMINATOR= '|', ROWTERMINATOR = '\n');

BULK INSERT directors
 FROM 'C:\Users\messi\Desktop\sxolh\3ο Έτος\2ο Εξάμηνο\Συστήματα Διαχείρισης Και Ανάλυσης Δεδομένων\Project1\movieData\movieData\directors.txt'
WITH ( FIRSTROW =2, FIELDTERMINATOR= '|', ROWTERMINATOR = '\n');

BULK INSERT movies
 FROM 'C:\Users\messi\Desktop\sxolh\3ο Έτος\2ο Εξάμηνο\Συστήματα Διαχείρισης Και Ανάλυσης Δεδομένων\Project1\movieData\movieData\movies.txt'
WITH ( FIRSTROW =2, FIELDTERMINATOR= '|', ROWTERMINATOR = '\n');

BULK INSERT movie_directors
 FROM 'C:\Users\messi\Desktop\sxolh\3ο Έτος\2ο Εξάμηνο\Συστήματα Διαχείρισης Και Ανάλυσης Δεδομένων\Project1\movieData\movieData\movie_directors.txt'
WITH ( FIRSTROW =2, FIELDTERMINATOR= '|', ROWTERMINATOR = '\n');

BULK INSERT movies_genre
 FROM 'C:\Users\messi\Desktop\sxolh\3ο Έτος\2ο Εξάμηνο\Συστήματα Διαχείρισης Και Ανάλυσης Δεδομένων\Project1\movieData\movieData\movies_genre.txt'
WITH ( FIRSTROW =2, FIELDTERMINATOR= '|', ROWTERMINATOR = '\n');

BULK INSERT roles
 FROM 'C:\Users\messi\Desktop\sxolh\3ο Έτος\2ο Εξάμηνο\Συστήματα Διαχείρισης Και Ανάλυσης Δεδομένων\Project1\movieData\movieData\roles.txt'
WITH ( FIRSTROW =2, FIELDTERMINATOR= '|', ROWTERMINATOR = '\n');

BULK INSERT users
 FROM 'C:\Users\messi\Desktop\sxolh\3ο Έτος\2ο Εξάμηνο\Συστήματα Διαχείρισης Και Ανάλυσης Δεδομένων\Project1\movieData\movieData\users.txt'
WITH (FIRSTROW =2, FIELDTERMINATOR= '|', ROWTERMINATOR = '\n');

BULK INSERT user_movies
 FROM 'C:\Users\messi\Desktop\sxolh\3ο Έτος\2ο Εξάμηνο\Συστήματα Διαχείρισης Και Ανάλυσης Δεδομένων\Project1\movieData\movieData\user_movies.txt'
WITH (FIRSTROW =2, FIELDTERMINATOR= '|', ROWTERMINATOR = '\n');

