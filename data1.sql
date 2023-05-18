-- Πίνακας Πύλη
CREATE TABLE Πύλη (
  Κωδικός int(10) NOT NULL,
  `Τύπος πύλης` varchar(255),
  `Όνομα αεροδρομίου` varchar(255) NOT NULL,
  PRIMARY KEY (Κωδικός)
);
INSERT INTO Πύλη (Κωδικός, `Τύπος πύλης`, `Όνομα αεροδρομίου`)
VALUES
  (3, 'Άφιξης', 'Χανιά Διακόφτι'),
  (4, 'Αναχώρησης', 'Καλαμάτα Καπετάν Βασίλης Κωνσταντακόπουλος'),
  (5, 'Άφιξης', 'Ηράκλειο Ν. Καζαντζάκης'),
  (6, 'Αναχώρησης', 'Ρόδος Διαγόρας'),
  (7, 'Άφιξης', 'Θεσσαλονίκη Μακεδονία');

-- Πίνακας Πτήση
CREATE TABLE Πτήση (
  `Αριθμός Πτήσης` int(10) NOT NULL AUTO_INCREMENT,
  `Εταιρία Αεροπλάνου` varchar(255),
  `Τύπος Πτύσης` varchar(255),
  `Πόλη προέλευσης` varchar(255),
  `Πόλη προορισμού` varchar(255),
  `Ημερομηνία πτήσης` date NOT NULL,
  `Πλήρωμα - Αριθμός μελών πληρώματος` int(11) NOT NULL,
  PRIMARY KEY (`Αριθμός Πτήσης`)
);
-- Εισαγωγή τυχαίων δεδομένων στον πίνακα Πτήση
INSERT INTO Πτήση (`Αριθμός Πτήσης`, `Εταιρία Αεροπλάνου`, `Τύπος Πτήσης`, `Πόλη προέλευσης`, `Πόλη προορισμού`, `Ημερομηνία πτήσης`, `Πλήρωμα - Αριθμός μελών πληρώματος`)
VALUES
  (1, 'Olympic Air', 'Αφιχθείσα', 'Αθήνα', 'Θεσσαλονίκη', '2023-05-19', 8),
  (2, 'Aegean Airlines', 'Αναχωρούσα', 'Ρόδος', 'Αθήνα', '2023-05-20', 5),
  (3, 'Ryanair', 'Αναχωρούσα', 'Αθήνα', 'Μύκονος', '2023-05-21', 3),
  (4, 'Aegean Airlines', 'Αφιχθείσα', 'Καλαμάτα', 'Ηράκλειο', '2023-05-22', 6),
  (5, 'Ryanair', 'Αναχωρούσα', 'Θεσσαλονίκη', 'Χανιά', '2023-05-23', 4);

-- Πίνακας: Προσωπικό Ασφαλείας
CREATE TABLE `Προσωπικό Ασφαλείας` (
  `Μοναδικός κωδικός ασφαλείας` int(10) NOT NULL,
  PRIMARY KEY (`Μοναδικός κωδικός ασφαλείας`)
);

INSERT INTO `Προσωπικό Ασφαλείας` (`Μοναδικός κωδικός ασφαλείας`)
VALUES
  (1234567890),
  (9876543210),
  (2468135790),
  (1357924680),
  (5678901234);

-- Πίνακας: Καταγραφή Στοιχείων Επιβατών
CREATE TABLE `Καταγραφή Στοιχείων Επιβατών` (
  `Αριθμός πιστωτικών καρτών` int(10),
  Εισόδημα float,
  Ηλικία numeric(19, 0) NOT NULL,
  Διεύθυνση varchar(255) NOT NULL,
  `Αεροδρόμιο - Όνομα` varchar(255) NOT NULL,
  PRIMARY KEY (Ηλικία)
);
INSERT INTO `Καταγραφή Στοιχείων Επιβατών` (`Αριθμός πιστωτικών καρτών`, `Εισόδημα`, `Ηλικία`, `Διεύθυνση`, `Αεροδρόμιο - Όνομα`)
VALUES
  (1234567890, 50000.00, 35, 'Λεωφόρος Αθηνών 15, Πειραιάς', 'Ελευθέριος Βενιζέλος'),
  (9876543210, 25000.00, 28, 'Οδός Αριστοτέλους 7, Θεσσαλονίκη', 'Μακεδονία'),
  (2468135790, 40000.00, 45, 'Πλατεία Ερμού 12, Ρόδος', 'Αράξος'),
  (1357924680, 35000.00, 31, 'Οδός Ελευθερίας 22, Χανιά', 'Νίκος Καζαντζάκης'),
  (5678901234, 28000.00, 39, 'Λεωφόρος Ανδρέα Συγγρού 123, Αθήνα', 'Επταπύργιο');

-- Πίνακας Ξενοδοχείο Προσωπικού
CREATE TABLE `Ξενοδοχείο Προσωπικού` (
  `Όνομα` varchar(255) NOT NULL,
  `Ηλεκτρονική διεύθυνση` varchar(255),
  `Ταχυδρομική διεύθυνση` varchar(255),
  PRIMARY KEY (`Όνομα`)
);
INSERT INTO `Ξενοδοχείο Προσωπικού` (`Όνομα`, `Ηλεκτρονική διεύθυνση`, `Ταχυδρομική διεύθυνση`)
VALUES ('Γιάννης Παπαδόπουλος', 'giannis@example.com', 'Οδός Αθηνάς 12'),
       ('Μαρία Κοντολέοντα', 'maria@example.com', 'Οδός Ερμού 23'),
       ('Δημήτρης Καραγιάννης', 'dimitris@example.com', 'Οδός Παρθενώνος 8'),
       ('Αναστασία Παππά', 'anastasia@example.com', 'Οδός Σοφοκλέους 15'),
       ('Κωνσταντίνος Αθανασίου', 'konstantinos@example.com', 'Οδός Αριστοτέλους 31');
       
-- Πίνακας Τεστ Αεροπλάνων
CREATE TABLE `Τεστ Αεροπλάνων` (
  `Μέρος Αεροπλάνου προς εξέταση` varchar(255),
  `Όνομα τέστ` varchar(255) NOT NULL,
  `Αεροδρόμιο - Όνομα` varchar(255) NOT NULL,
  PRIMARY KEY (`Όνομα τέστ`)
);
INSERT INTO `Τεστ Αεροπλάνων` (`Μέρος Αεροπλάνου προς εξέταση`, `Όνομα τέστ`, `Αεροδρόμιο - Όνομα`)
VALUES ('Κινητήρας', 'Τεστ 1', 'Αεροδρόμιο Αθηνών'),
       ('Σύστημα πλοήγησης', 'Τεστ 2', 'Αεροδρόμιο Θεσσαλονίκης'),
       ('Πτερύγια', 'Τεστ 3', 'Αεροδρόμιο Ρόδου'),
       ('Εξαερισμός', 'Τεστ 4', 'Αεροδρόμιο Ηρακλείου'),
       ('Πίσω πόρτα', 'Τεστ 5', 'Αεροδρόμιο Χανίων');
       
-- Πίνακας Τμήμα Τεστ
CREATE TABLE `Τμήμα Τεστ` (
    `Αριθμός Τμήματος Τεστ` int(10) NOT NULL AUTO_INCREMENT,
    `Εξειδίκευση Τμήματος` varchar(255),
    `Αριθμός Τεχνικών` int(10),
    `Τεστ Αεροπλάνων - Όνομα τέστ` varchar(255) NOT NULL,
    PRIMARY KEY (`Αριθμός Τμήματος Τεστ`)
);
INSERT INTO `Τμήμα Τεστ` (`Εξειδίκευση Τμήματος`, `Αριθμός Τεχνικών`, `Τεστ Αεροπλάνων - Όνομα τέστ`)
VALUES ('Πτητικά Δοκιμαστικά', 3, 'Τέστ Αεροπλάνου 1'),
       ('Μηχανολογικά Δοκιμαστικά', 5, 'Τέστ Αεροπλάνου 2'),
       ('Ηλεκτρονικά Δοκιμαστικά', 2, 'Τέστ Αεροπλάνου 3'),
       ('Στατικά Δοκιμαστικά', 4, 'Τέστ Αεροπλάνου 4'),
       ('Θερμοδυναμικά Δοκιμαστικά', 6, 'Τέστ Αεροπλάνου 5');
-- Πίνακας Τεχνικοί
CREATE TABLE Τεχνικοί (
    Εξειδίκευση varchar(255) NOT NULL,
    `Τμήμα Τεστ - Αριθμός Τμήματος Τεστ` int(10) NOT NULL,
    PRIMARY KEY (Εξειδίκευση)
);
INSERT INTO Τεχνικοί (Εξειδίκευση, `Τμήμα Τεστ - Αριθμός Τμήματος Τεστ`)
VALUES ('Πτητικά Δοκιμαστικά', 1),
       ('Μηχανολογικά Δοκιμαστικά', 2),
       ('Ηλεκτρονικά Δοκιμαστικά', 1),
       ('Στατικά Δοκιμαστικά', 3),
       ('Θερμοδυναμικά Δοκιμαστικά', 2);

-- Πίνακας Διαφημιστικός χώρος
CREATE TABLE `Διαφημιστικός χώρος` (
  Ιδιοκτήτης varchar(255) NOT NULL,
  `Ημερομηνία λήξης συμβολαίου` date,
  `Αντίτιμο Πληρωμής` float,
  `Αεροδρόμιο - Όνομα` varchar(255) NOT NULL,
  PRIMARY KEY (Ιδιοκτήτης)
);
INSERT INTO `Διαφημιστικός χώρος` (Ιδιοκτήτης, `Ημερομηνία λήξης συμβολαίου`, `Αντίτιμο Πληρωμής`, `Αεροδρόμιο - Όνομα`)
VALUES
  ('Κωνσταντίνος Παπαδόπουλος', '2023-12-31', 1500.50, 'Ελευθέριος Βενιζέλος'),
  ('Μαρία Ανδρέου', '2022-06-15', 800.75, 'Μακεδονία'),
  ('Γιώργος Παπανδρέου', '2024-03-20', 2000.00, 'Ελευθέριος Βενιζέλος'),
  ('Αναστασία Μαρίνου', '2023-08-10', 1200.25, 'Ελευθέριος Βενιζέλος'),
  ('Νίκος Καραμανλής', '2022-09-30', 1800.80, 'Μακεδονία');

-- Πίνακας Συνάντηση
CREATE TABLE Συνάντηση (
  Ημερομηνία date,
  `θέμα συνάντησης` varchar(255) NOT NULL,
  PRIMARY KEY (`θέμα συνάντησης`)
);
INSERT INTO Συνάντηση (Ημερομηνία, `θέμα συνάντησης`)
VALUES
  ('2023-05-20', 'Συζήτηση για τις νέες επενδύσεις'),
  ('2022-12-10', 'Συνάντηση με τον πελάτη ΑΒΓ Ltd.'),
  ('2023-03-05', 'Παρουσίαση νέου προϊόντος'),
  ('2022-09-18', 'Συνάντηση με τον συνεργάτη XYZ Inc.'),
  ('2024-01-07', 'Συζήτηση για την ανάπτυξη του κλάδου');

-- Πίνακας Επιβάτες:
CREATE TABLE Επιβάτες (
    `Απόδειξη αποσκευών` varchar(255),
    Ονοματεπώνυμο varchar(255) NOT NULL,
    `Μοναδικός αριθμός εισιτηρίου` int(10) NOT NULL,
    `Πτήση Αριθμός Πτήσης` int(10) NOT NULL,
    PRIMARY KEY (Ονοματεπώνυμο)
);
INSERT INTO Επιβάτες (`Απόδειξη αποσκευών`, Ονοματεπώνυμο, `Μοναδικός αριθμός εισιτηρίου`, `Πτήση Αριθμός Πτήσης`)
VALUES
    ('ABC123', 'Γιάννης Παπαδόπουλος', 12345, 1001),
    ('DEF456', 'Μαρία Ανδρέου', 67890, 1002),
    ('GHI789', 'Δημήτρης Νικολάου', 54321, 1003),
    ('JKL012', 'Αναστασία Παναγιώτου', 98765, 1004),
    ('MNO345', 'Πέτρος Γεωργίου', 13579, 1005);

-- Πίνακας Αεροπλάνο:
CREATE TABLE Αεροπλάνο (
    Όνομα varchar(255) NOT NULL, -- ήταν int
    `Έτος Κατασκευής` int(10),
    PRIMARY KEY (Όνομα)
);
INSERT INTO Αεροπλάνο (Όνομα, `Έτος Κατασκευής`)
VALUES
    (1, 2010),
    (2, 2015),
    (3, 2005),
    (4, 2018),
    (5, 2012);

-- Πίνακας: Προκαθορισμένες Θέσεις Αεροδρομίου
CREATE TABLE `Προκαθορισμένες Θέσεις Αεροδρομίου` (
  `Όνομα εταιρίας` varchar(255) NOT NULL,
  PRIMARY KEY (`Όνομα εταιρίας`)
);

INSERT INTO `Προκαθορισμένες Θέσεις Αεροδρομίου` (`Όνομα εταιρίας`)
VALUES
  ('Αεροπορικές Εταιρείες ΑΕ'),
  ('Τουριστική Αεροπορία ΟΕ'),
  ('Αεροπορία Α.Ε.Β.Ε.'),
  ('Εξυπηρέτηση Επιβατών Δημ. ΟΕ'),

-- Πίνακας: Αεροδρόμιο
CREATE TABLE Αεροδρόμιο (
  Όνομα varchar(255) NOT NULL,
  PRIMARY KEY (Όνομα)
);
INSERT INTO Αεροδρόμιο (Όνομα)
VALUES
  ('Αεροδρόμιο Αθηνών'),
  ('Διεθνές Αεροδρόμιο Θεσσαλονίκης'),
  ('Κρατικός Αερολιμένας Ρόδου'),
  ('Αεροδρόμιο Ηρακλείου "Νίκος Καζαντζάκης"'),
  ('Κρατικός Αερολιμένας Χανίων');
  
-- Πίνακας Συμμετέχοντες
CREATE TABLE Συμμετέχοντες (
  `Όνομα Αεροσυνοδού` varchar(255),
  `Όνομα Πιλότου` varchar(255),
  `Όνομα Μέλους Ασφάλειας` varchar(255),
  `Όνομα Τεχνικού` varchar(255),
  `Αριθμός Συμμετεχόντων` varchar(255) NOT NULL,
  PRIMARY KEY (`Αριθμός Συμμετεχόντων`)
);
-- Πίνακας Συμμετέχοντες
INSERT INTO Συμμετέχοντες (`Όνομα Αεροσυνοδού`, `Όνομα Πιλότου`, `Όνομα Μέλους Ασφάλειας`, `Όνομα Τεχνικού`, `Αριθμός Συμμετεχόντων`)
VALUES
  ('Μαρία Παπαδοπούλου', 'Γιάννης Νικολάου', 'Ανδρέας Δημητρίου', 'Κώστας Σωτηρίου', '001'),
  ('Ελένη Ανδρέου', 'Νίκος Παπανδρέου', 'Γιώργος Κυριακού', 'Δημήτρης Πέτρου', '002'),
  ('Σοφία Μιχαηλίδου', 'Ανδρέας Χατζηανδρέου', 'Αναστάσης Παπαδόπουλος', 'Γεώργιος Χριστοδούλου', '003'),
  ('Δημήτρης Κολοκοτρώνης', 'Κώστας Παναγιωτίδης', 'Νίκος Αναστασίου', 'Αλέξανδρος Αθανασίου', '004'),
  ('Αναστασία Λυκούργου', 'Στέλιος Πετρίδης', 'Δημήτρης Μακρής', 'Σωτήρης Κοντός', '005');

-- Πίνακας Τύπος Αεροπλάνου
CREATE TABLE `Τύπος Αεροπλάνου` (
  `Χωρητικότητα Θέσεων` int(10),
  `Μέγιστη Απόσταση Διαδρομής` float,
  `Όνομα Μοντέλου` int(10) NOT NULL,
  PRIMARY KEY (`Όνομα Μοντέλου`)
);
-- Πίνακας Τύπος Αεροπλάνου
INSERT INTO `Τύπος Αεροπλάνου` (`Χωρητικότητα Θέσεων`, `Μέγιστη Απόσταση Διαδρομής`, `Όνομα Μοντέλου`)
VALUES
  (200, 1500.75, 1001),
  (150, 1200.25, 1002),
  (180, 1400.50, 1003),
  (250, 1800.00, 1004),
  (300, 2000.50, 1005);

-- Πίνακας Καύσιμα: 
CREATE TABLE Καύσιμα (
    Όνομα int(10) NOT NULL,
    `Αριθμός Οκτανίων` int(10),
    `Τιμή ανα λίτρο` decimal(10, 2),
    PRIMARY KEY (Όνομα)
);
INSERT INTO Καύσιμα (Όνομα, `Αριθμός Οκτανίων`, `Τιμή ανα λίτρο`)
VALUES (1, 95, 1.59),
       (2, 98, 1.75),
       (3, 100, 2.05),
       (4, 91, 1.40),
       (5, 99, 1.85);

-- Πίνακας Πλήρωμα: 
CREATE TABLE Πλήρωμα (
    `Βαθμός Πιλότου` int(10),
    `Βαθμός Αεροσυνοδού` int(10),
    `Αριθμός μελών πληρώματος` int(11) NOT NULL AUTO_INCREMENT,
    PRIMARY KEY (`Αριθμός μελών πληρώματος`)
);
INSERT INTO Πλήρωμα (`Βαθμός Πιλότου`, `Βαθμός Αεροσυνοδού`, `Αριθμός μελών πληρώματος`)
VALUES (1, 2, 1),
       (2, 3, 2),
       (3, 1, 3),
       (2, 2, 4),
       (3, 3, 5);

-- Πίνακας Τμήμα Τεστ_Τεστ Αεροπλάνων
CREATE TABLE `Τμήμα Τεστ_Τεστ Αεροπλάνων` (
  `Τεστ ΑεροπλάνωνΌνομα τέστ` varchar(255) NOT NULL,
  PRIMARY KEY (`Τεστ ΑεροπλάνωνΌνομα τέστ`)
);
-- Πίνακας Τμήμα Τεστ_Τεστ Αεροπλάνων
INSERT INTO `Τμήμα Τεστ_Τεστ Αεροπλάνων` (`Τεστ ΑεροπλάνωνΌνομα τέστ`) VALUES
  ('Τέστ Αεροπλάνου 1'),
  ('Τέστ Αεροπλάνου 2'),
  ('Τέστ Αεροπλάνου 3'),
  ('Τέστ Αεροπλάνου 4'),
  ('Τέστ Αεροπλάνου 5');

