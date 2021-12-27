CREATE TABLE guests
(Guest_User_ID VARCHAR(50) PRIMARY KEY NOT NULL,
Password VARCHAR(50) NOT NULL,
First_Name VARCHAR(50) NOT NULL,
Last_Name VARCHAR(50) NOT NULL,
Email VARCHAR(50) NOT NULL,
Date_Of_Birth Date NOT NULL,
Address VARCHAR(50)NOT NULL
);

INSERT INTO guests
VALUES
('jane.l','thisisnotprivateehh?','Jane','Lewis','jane.lew@gmail.com','28-Mar-1990','645 Blyatstreet Poltava');
INSERT INTO guests
VALUES
('kratos.z','medusawashot','Kratos','Zeusson','kratos.zson@hotmail.com','1-July-1930','Mount Olympus Greek');
INSERT INTO guests
VALUES
('jotaro.k','whereisdio','Jotaro','Kujo','jotaro.ora@gmail.com','05-Jul-1981','339-9900 Nakagiri Okawa-mura Tosa-gun Kochi');
INSERT INTO guests
VALUES
('dio.b','homukattekuronoga','Dio','Brando','dio.muda@gmail.com','15-Dec-1899','P. O Box No. 408 Helioplis P.O. Box: 11997');
INSERT INTO guests
VALUES
('speedwagon.p','speeeeeedwagone','Speedwagon','Peterson','wagone.p@gmail.com','07-Nov-1898','69 South Western Terrace');
INSERT INTO guests
VALUES
('johnpierre.p','horahorahoranonnonnon','John Pierre','Polnareff','johnpierre.p@hotmail.com','18-Oct-1980','332 Canal El-Mahmoudeya St., Moharram Bey');
INSERT INTO guests
VALUES
('kakyoin.n','rerorerorerorerorero','Kakyoin','Noriaki','mlf.rero@hotmail.com','02-Apr-1981','433-1067, Minamifunaji, Otsu-shi, Shiga');
INSERT INTO guests
VALUES
('mohammed.a','tsktsktskyesiam','Mohammed','Avdol','avdol.tsk@gmail.com','12-May-1978','180-1069, Higashima,Tokyo');
INSERT INTO guests
VALUES
('von.s','germanscienceisthebestinzawarudo','Von','Stroheim','von.s@gmail.com','09-Sep-1899','G Leyva NO. 420, Lus Muchis Ceintro Puta, 81300');
INSERT INTO guests
VALUES
('boris.b','vadimblyat','Boris','Blyat','boris.b@hotmail.com','16-Jan-1992','Peshestreletskaya, bld. 157, appt. 25');
INSERT INTO guests
VALUES
('daenaerys.t','dracarys','Daenaerys','Targaryen','daenaerys.t@hotmail.com','13-Jan-1991','3681 Lang Avenue');

CREATE TABLE hosts
(Host_User_ID VARCHAR(50) PRIMARY KEY NOT NULL,
Password VARCHAR(50) NOT NULL,
First_Name VARCHAR(50) NOT NULL,
Last_Name VARCHAR(50) NOT NULL,
Email VARCHAR(50) NOT NULL,
Date_Of_Birth Date NOT NULL,
Address VARCHAR(50) NOT NULL
);

INSERT INTO hosts
VALUES
('mike.s','whyshouldweexist','Mike','Smith','mike.s@gmail.com','10-Jul-1979','45 Jalan Tun Ismail 50480 Kuala Lumpur');
INSERT INTO hosts
VALUES
('val033','valyriansteel','Valyria','Essos','valyria.e@gmail.com','02-Jun-1999','199 3rd Ave');
INSERT INTO hosts
VALUES
('barbara.s','whydowexist','Barbara','Smith','barbara.s@gmail.com','04-Aug-1982','45 Jalan Tun Ismail 50480 Kuala Lumpur');
INSERT INTO hosts
VALUES
('rafi.m','ohmygoddd','Rafi','Martin','rafi.m@hotmail.com','12-Jun-1918','El Gazar, Landmark: Near Abdu Seda Mosque');
INSERT INTO hosts
VALUES
('maisha.m','borisblyat','Maisha','Morice','maisha.m@gmail.com','16-Dec-1987','Peshestreletskaya, bld. 157, appt. 25');
INSERT INTO hosts
VALUES
('nurfarah.a','naturalcontent,','Nurfarah','Aziim','nurfarah.a@hotmail.com','23-April-1995','Glushko Akademika Pr., bld. 24/B, appt. 87');
INSERT INTO hosts
VALUES
('vanilla.i','iceicebaby','Vanilla','Ice','vanilla.i@hotmail.com','31-Oct-1967','South Dallas, Dallas, Texas, United States');
INSERT INTO hosts
VALUES
('susumu.h','kaigyobyongenikantudesuka','Susumu','Hirasawa','susumu.h@hotmail.com','23-Jan-1968','165 3rd avenue, Jingsuki District');
INSERT INTO hosts
VALUES
('josuke.h','dontmesswithmyhair','Josuke','Higashigata','josuke.h@hotmail.com','12-May-1989','32 5th avenue, Pinkai District, Morioh');
INSERT INTO hosts
VALUES
('giorrno.g','konogiorrnogiovannaniwayumegaru','Giorrno','Giovanna','giorrno.g@gmail.com','30-July-1990','Via Antonio Cecchi 22');
INSERT INTO hosts
VALUES
('jon.s','samsnodifferentfromtherestofus','Jon','Snow Targaryen Stark','jon.s@hotmail.com','31-Mar-1989','Nothington, Eastwatch by the Sea, Cabin 9');
INSERT INTO hosts
VALUES
('benedict.c','dormammuivecometobargain','Benedict','Cucumberbatch','benedict.c@gmail.com','04-Apr-1985','Burmingham, District 42, UK');
INSERT INTO hosts
VALUES
('nina.k','thisismypassword','Nina','Krintarvardth','nina.k@gmail.com','09-Dec-1989','22nd Floor Panchratna Building, -a, Girgaum');

CREATE TABLE transactions
(Transaction_ID VARCHAR(50) PRIMARY KEY NOT NULL,
Payee_ID VARCHAR(50) NOT NULL,
Guest_User_ID VARCHAR(50) NOT NULL,
Rate_per_night NUMBER(5,0) NOT NULL,
Total_amount NUMBER(5,0) NOT NULL, 
Discounted_amount NUMBER(5,0),
Amount_paid NUMBER(5,0) NOT NULL,
Status VARCHAR(20) NOT NULL,
Payment_date Date NOT NULL,
Constraint trans_host_fk foreign key (Payee_ID)
References hosts(Host_User_ID),
Constraint trans_guest_fk foreign key (Guest_User_ID)
References guests(Guest_User_ID)
);

INSERT INTO transactions
VALUES
('TX281219926','val033','jotaro.k',250,750,null,750,'Successful','28-Dec-2019');
INSERT INTO transactions
VALUES
('TX6120140','barbara.s','jane.l',200,800,null,680,'Successful','6-Jan-2020');
INSERT INTO transactions
VALUES
('TX7120075','val033','kratos.z',250,1250,250,1000,'Void','7-Jan-2020');
INSERT INTO transactions
VALUES
('TX69696969','giorrno.g','kakyoin.n',250,1000,250,750,'Successful','2-Dec-2019');
INSERT INTO transactions
VALUES
('TX577809874','rafi.m','dio.b',250,500,35,465,'Successful','3-Aug-2019');
INSERT INTO transactions
VALUES
('TX788900654','maisha.m','boris.b',200,600,180,420,'Successful','8-Dec-2019');
INSERT INTO transactions
VALUES
('TX990876543','mike.s','mohammed.a',200,1600,320,1280,'Void','12-Jan-2020');
INSERT INTO transactions
VALUES
('TX677789900','nurfarah.a','johnpierre.p',200,1000,100,900,'Void','14-Feb-2020');
INSERT INTO transactions
VALUES
('TX999999999','vanilla.i','von.s',250,1500,1050,450,'Successful','20-Feb-2020');
INSERT INTO transactions
VALUES
('TX1089889888','barbara.s','speedwagon.p',220,440,220,220,'Successful','02-Mar-2020');
INSERT INTO transactions
VALUES
('TX897867565','jon.s','daenaerys.t',220,660,231,429,'Successful','06-Mar-2020');
INSERT INTO transactions
VALUES
('TX885446778','susumu.h','dio.b',220,880,null,880,'Successful','12-Mar-2020');

CREATE TABLE coupons
(Coupon_code VARCHAR(50) PRIMARY KEY NOT NULL,
Description VARCHAR(150) NOT NULL,
Coupon_amount NUMBER(3,2) NOT NULL,
PRIMARY KEY(Coupon_code)
);

INSERT INTO coupons
VALUES
('NY015','New Year 15% off for transaction above RM500',0.15);
INSERT INTO coupons
VALUES
('NY020','New Year 20% off for transaction above RM1,000',0.20);
INSERT INTO coupons
VALUES
('VAL2020','February Special 10% for all transactions',0.10);
INSERT INTO coupons
VALUES
('VON970','70% specifically for Von Stroheim for saving the life of Joseph',0.70);
INSERT INTO coupons
VALUES
('SPDWGN050','50% specifically for Speeeeeeedwagone for helping the Joestar family',0.50);
INSERT INTO coupons
VALUES
('POP010','Random 10% off because the CEO is feeling good',0.10);
INSERT INTO coupons
VALUES
('LII025','25% off because it is the CEO is celebrating his birthday',0.25);
INSERT INTO coupons
VALUES
('GOT420','7% off because the last game of thrones season was total shiet',0.07);
INSERT INTO coupons
VALUES
('GTA69','30% off because all CJ had to do was follow the damn train',0.3);
INSERT INTO coupons
VALUES
('PBK666','35% off because Scofield messed with George',0.35);

CREATE TABLE coupon_validity
(Coupon_code VARCHAR(50) NOT NULL,
Guest_User_ID VARCHAR(50) NOT NULL,
Start_date Date NOT NULL,
End_date Date,
PRIMARY KEY(Coupon_code,Guest_User_ID),
FOREIGN KEY (Coupon_code)
References Coupons(Coupon_code),
FOREIGN KEY (Guest_User_ID)
REFERENCES Guests(Guest_User_ID),
CHECK (End_date > Start_date)
);

INSERT INTO coupon_validity
VALUES
('NY015','jane.l','1-Jan-2020','31-Jan-2020');
INSERT INTO coupon_validity
VALUES
('NY020','kratos.z','1-Jan-2020','31-Jan-2020');
INSERT INTO coupon_validity
VALUES
('LII025','kakyoin.n','1-Dec-2019','31-Dec-2019');
INSERT INTO coupon_validity
VALUES
('GOT420','dio.b','1-Aug-2019','31-Aug-2019');
INSERT INTO coupon_validity
VALUES
('GTA69','boris.b','7-Dec-2019','19-Dec-2019');
INSERT INTO coupon_validity
VALUES
('NY020','mohammed.a','1-Jan-2020','31-Jan-2020');
INSERT INTO coupon_validity
VALUES
('VAL2020','johnpierre.p','1-Feb-2020','29-Feb-2020');
INSERT INTO coupon_validity
VALUES
('VON970','von.s','10-Feb-2020','21-Feb-2020');
INSERT INTO coupon_validity
VALUES
('SPDWGN050','speedwagon.p','01-Mar-2020','10-Mar-2020');
INSERT INTO coupon_validity
VALUES
('PBK666','daenaerys.t','01-Mar-2020','12-Mar-2020');

CREATE TABLE host_ID
(ID_number VARCHAR(50) PRIMARY KEY NOT NULL,
Host_User_ID VARCHAR(50) NOT NULL,
ID_type VARCHAR(50) NOT NULL,
Constraint id_host_fk foreign key(Host_User_ID)
References hosts(Host_User_ID)
);

INSERT INTO host_ID
VALUES
('W4324553','barbara.s','Passport');
INSERT INTO host_ID
VALUES
('W4424554','mike.s','Passport');
INSERT INTO host_ID
VALUES
('667789876543','val033','IC');
INSERT INTO host_ID
VALUES
('319976543288','rafi.m','IC');
INSERT INTO host_ID
VALUES
('MP887765','maisha.m','Passport');
INSERT INTO host_ID
VALUES
('BV776543','nurfarah.a','Passport');
INSERT INTO host_ID
VALUES
('654388889908','vanilla.i','IC');
INSERT INTO host_ID
VALUES
('887763212445','susumu.h','IC');
INSERT INTO host_ID
VALUES
('MB567770','josuke.h','Passport');
INSERT INTO host_ID
VALUES
('IT788875','giorrno.g','Passport');
INSERT INTO host_ID
VALUES
('433255667843','jon.s','IC');

CREATE TABLE guest_ID
(ID_number VARCHAR(50) PRIMARY KEY NOT NULL,
Guest_User_ID VARCHAR(50) NOT NULL,
ID_type VARCHAR(50) NOT NULL,
Constraint id_guest_fk foreign key(Guest_User_ID)
References guests(Guest_User_ID)
);

INSERT INTO guest_ID
VALUES
('WD783334','jane.l','Passport');
INSERT INTO guest_ID
VALUES
('WP877878','kratos.z','Passport');
INSERT INTO guest_ID
VALUES
('990765555454','jotaro.k','IC');
INSERT INTO guest_ID
VALUES
('565665887547','dio.b','IC');
INSERT INTO guest_ID
VALUES
('UP987654','speedwagon.p','Passport');
INSERT INTO guest_ID
VALUES
('KK887990','johnpierre.p','Passport');
INSERT INTO guest_ID
VALUES
('554343267890','kakyoin.n','IC');
INSERT INTO guest_ID
VALUES
('433456689765','mohammed.a','IC');
INSERT INTO guest_ID
VALUES
('TR990768','von.s','Passport');
INSERT INTO guest_ID
VALUES
('HU877765','boris.b','Passport');
INSERT INTO guest_ID
VALUES
('911234556669','daenaerys.t','IC');

CREATE TABLE banks
(bank_name VARCHAR(50) NOT NULL,
bank_country VARCHAR(50) NOT NULL,
PRIMARY KEY(bank_name)
);

INSERT INTO banks
VALUES
('Maybank','Malaysia');
INSERT INTO banks
VALUES
('CIMB','Malaysia');
INSERT INTO banks
VALUES
('RHB','Malaysia');
INSERT INTO banks
VALUES
('DBS','Singapore');
INSERT INTO banks
VALUES
('POSB','Singapore');
INSERT INTO banks
VALUES
('OCBC','Singapore');
INSERT INTO banks
VALUES
('Siam','Thailand');
INSERT INTO banks
VALUES
('Kasikorn','Thailand');
INSERT INTO banks
VALUES
('Krung Thai','Thailand');
INSERT INTO banks
VALUES
('CB','Myanmar');
INSERT INTO banks
VALUES
('KBZ','Myanmar');

CREATE TABLE host_accounts
(Account_number NUMBER(15) PRIMARY KEY NOT NULL,
Host_User_ID VARCHAR(50) NOT NULL,
Account_holder VARCHAR(50) NOT NULL,
bank_name VARCHAR(50) NOT NULL,
Constraint host_accounts_host_fk foreign key(Host_User_ID)
References hosts(Host_User_ID),
Constraint host_accounts_banks_fk foreign key(bank_name)
References banks(bank_name)
);

INSERT INTO host_accounts
VALUES
(6543234567,'barbara.s','Barbara Smith','Maybank');
INSERT INTO host_accounts
VALUES
(9876543321,'mike.s','Mike Smith','CIMB');
INSERT INTO host_accounts
VALUES
(6322145670,'val033','Valyria Essos','RHB');
INSERT INTO host_accounts
VALUES
(9321446788,'rafi.m','Rafi Martin','DBS');
INSERT INTO host_accounts
VALUES
(6644567890,'maisha.m','Maisha Morice','POSB');
INSERT INTO host_accounts
VALUES
(9990874335,'nurfarah.a','Nurfarah Aziim','OCBC');
INSERT INTO host_accounts
VALUES
(7688754432,'vanilla.i','Vanilla Ice','Siam');
INSERT INTO host_accounts
VALUES
(3452690864,'susumu.h','Susumu Hirasawa','Kasikorn');
INSERT INTO host_accounts
VALUES
(9752567897,'josuke.h','Josuke Higashigata','Krung Thai');
INSERT INTO host_accounts
VALUES
(8653567899,'giorrno.g','Giorrno Giovanna','CB');
INSERT INTO host_accounts
VALUES
(2467887643,'jon.s','Jon Snow','KBZ');

CREATE TABLE guest_accounts
(Account_number NUMBER(15) PRIMARY KEY NOT NULL,
Guest_User_ID VARCHAR(50) NOT NULL,
Account_holder VARCHAR(50) NOT NULL,
bank_name VARCHAR(50) NOT NULL,
Constraint guest_accounts_guest_fk foreign key(Guest_User_ID)
References guests(Guest_User_ID),
Constraint host_accounts_banks_fk foreign key(bank_name)
References banks(bank_name)
);

INSERT INTO guest_accounts
VALUES
(7654335789,'jane.l','Jane Lewis','Maybank');
INSERT INTO guest_accounts
VALUES
(9876543234,'kratos.z','Kratos Zeusson','CIMB');
INSERT INTO guest_accounts
VALUES
(2064365056,'jotaro.k','Jotaro Kujo','RHB');
INSERT INTO guest_accounts
VALUES
(9157937554,'dio.b','Dio Brando','DBS');
INSERT INTO guest_accounts
VALUES
(4904635385,'speedwagon.p','Speedwagon Peterson','POSB');
INSERT INTO guest_accounts
VALUES
(3963750373,'johnpierre.p','John Pierre Polnareff','OCBC');
INSERT INTO guest_accounts
VALUES
(3036592684,'kakyoin.n','Kakyoin Noriaki','Siam');
INSERT INTO guest_accounts
VALUES
(8363933725,'mohammed.a','Mohammed Avdol','Kasikorn');
INSERT INTO guest_accounts
VALUES
(3875927844,'von.s','Von Stroheim','Krung Thai');
INSERT INTO guest_accounts
VALUES
(6368375859,'boris.b','Boris Blyat','CB');
INSERT INTO guest_accounts
VALUES
(3238484574,'daenaerys.t','Daenaerys Targaryen','KBZ');

CREATE TABLE credit_cards
(Credit_card_no NUMBER(20) PRIMARY KEY NOT NULL,
Guest_User_ID VARCHAR(50) NOT NULL,
Credit_card_type VARCHAR(50) NOT NULL,
Credit_card_expiry_date Date NOT NULL,
Constraint credit_cards_guest_fk foreign key(Guest_User_ID)
References guests(Guest_User_ID)
);

INSERT INTO credit_cards
VALUES
(111172610485632,'jane.l','Mastercard','28-Feb-2022');
INSERT INTO credit_cards
VALUES
(370389777849406,'kratos.z','Mastercard','31-Mar-2022');
INSERT INTO credit_cards
VALUES
(345625934533272,'jotaro.k','Mastercard','30-Apr-2022');
INSERT INTO credit_cards
VALUES
(373331795923877,'dio.b','Visa','30-May-2022');
INSERT INTO credit_cards
VALUES
(372392991259418,'speedwagon.p','Visa','30-June-2022');
INSERT INTO credit_cards
VALUES
(343857826198664,'johnpierre.p','Visa','31-July-2022');
INSERT INTO credit_cards
VALUES
(363115559622979,'kakyoin.n','Mastercard','30-Aug-2022');
INSERT INTO credit_cards
VALUES
(361777260002668,'mohammed.a','Mastercard','30-Sep-2022');
INSERT INTO credit_cards
VALUES
(374346857166057,'von.s','Mastercard','31-Oct-2022');
INSERT INTO credit_cards
VALUES
(366536449740670,'boris.b','Visa','30-Nov-2022');
INSERT INTO credit_cards
VALUES
(345939055649340,'daenaerys.t','Visa','31-Dec-2022');

CREATE TABLE spaces
(Space_ID VARCHAR(50) PRIMARY KEY NOT NULL,
Space_Type_ID VARCHAR(50) NOT NULL,
Space_Type VARCHAR(50) NOT NULL,
Amount_of_bedrooms NUMBER(2,0) NOT NULL,
Amount_of_beds NUMBER(2,0) NOT NULL,
Amount_of_bathrooms NUMBER(2,0) NOT NULL
);

INSERT INTO spaces
VALUES
('P003','ST001','Entire Home',2,2,2);
INSERT INTO spaces
VALUES
('P004','ST002','Private Room',1,1,2);
INSERT INTO spaces
VALUES
('P018','ST003','Shared Room',2,2,2);
INSERT INTO spaces
VALUES
('P021','ST001','Entire Home',2,2,2);
INSERT INTO spaces
VALUES
('P023','ST002','Private Room',1,1,2);
INSERT INTO spaces
VALUES
('P025','ST003','Shared Room',2,2,2);
INSERT INTO spaces
VALUES
('P030','ST001','Entire Home',2,2,2);
INSERT INTO spaces
VALUES
('P033','ST002','Private Room',1,1,2);
INSERT INTO spaces
VALUES
('P044','ST003','Shared Room',2,2,2);
INSERT INTO spaces
VALUES
('P048','ST001','Entire Home',2,2,2);
INSERT INTO spaces
VALUES
('P055','ST002','Private Room',1,1,2);

CREATE TABLE assignment
(Space_ID VARCHAR(50) NOT NULL,
Host_User_ID VARCHAR(50) NOT NULL,
Host VARCHAR(50) NOT NULL,
Remark NUMBER(1,0),
PRIMARY KEY (Space_ID, Host_User_ID),
FOREIGN KEY (Space_ID)
References spaces(Space_ID),
FOREIGN KEY(Host_User_ID)
References hosts(Host_User_ID)
);

INSERT INTO assignment
VALUES
('P003','barbara.s','Barbara Smith',1);
INSERT INTO assignment
VALUES
('P003','mike.s','Mike Smith',0);
INSERT INTO assignment
VALUES
('P004','rafi.m','Rafi Martin',1);
INSERT INTO assignment
VALUES
('P004','maisha.m','Maisha Morice',0);
INSERT INTO assignment
VALUES
('P004','nurfarah.a','Nurfarah Aziim',0);
INSERT INTO assignment
VALUES
('P018','barbara.s','Barbara Smith',1);
INSERT INTO assignment
VALUES
('P018','mike.s','Mike Smith',0);
INSERT INTO assignment
VALUES
('P021','giorrno.g','Giorrno Giovanna',1);
INSERT INTO assignment
VALUES
('P023','maisha.m','Maisha Morice',0);
INSERT INTO assignment
VALUES
('P025','jon.s','Jon Snow Targaryen Stark',1);
INSERT INTO assignment
VALUES
('P030','vanilla.i','Vanilla Ice',1);
INSERT INTO assignment
VALUES
('P055','mike.s','Mike Smith',0);
INSERT INTO assignment
VALUES
('P044','barbara.s','Barbara Smith',1);
INSERT INTO assignment
VALUES
('P048','val033','Valyria Essos',1);
INSERT INTO assignment
VALUES
('P023','rafi.m','Rafi Martin',1);

CREATE TABLE reservations
(Guest_User_ID VARCHAR(50) NOT NULL,
Space_ID VARCHAR(50) NOT NULL,
Confirmation_code VARCHAR(50) NOT NULL,
Guest_Name VARCHAR(50) NOT NULL,
Number_of_guests NUMBER(2,0) NOT NULL,
Unit VARCHAR(50) NOT NULL,
Check_in_date Date NOT NULL,
Check_out_date Date,
PRIMARY KEY (Guest_User_ID,Space_ID),
FOREIGN KEY (Guest_User_ID)
References guests(Guest_User_ID),
FOREIGN KEY (Space_ID)
References spaces(Space_ID),
FOREIGN KEY (Confirmation_code)
References transactions(Transaction_ID),
CHECK (Check_out_date > Check_in_date)
);

INSERT INTO reservations
VALUES
('jotaro.k','P021','TX281219926','Jotaro Kujo',2,'Comfortable Jojo friendly Apartment','29-Dec-2019','31-Dec-2019');
INSERT INTO reservations
VALUES
('jane.l','P003','TX6120140','Jane Lewis',3,'Cozy Vintage Apartment','13-Jan-2020','17-Jan-2020');
INSERT INTO reservations
VALUES
('kratos.z','P048','TX7120075','Kratos Zeusson',2,'Greek style Apartment','8-Jan-2020','12-Jan-2020');
INSERT INTO reservations
VALUES
('kakyoin.n','P021','TX69696969','Kakyoin Noriaki',3,'Aesthetically pleasing Apartment','4-Dec-2020','7-Dec-2020');
INSERT INTO reservations
VALUES
('dio.b','P004','TX577809874','Dio Brando',1,'The Mansion of Dio','4-Aug-2019','5-Aug-2019');
INSERT INTO reservations
VALUES
('boris.b','P023','TX788900654','Boris Blyat',1,'The Mansion of Blyat','8-Dec-2019','10-Dec-2019');
INSERT INTO reservations
VALUES
('mohammed.a','P055','TX990876543','Mohammed Avdol',2,'Apartment of Flames','13-Dec-2019','19-Dec-2019');
INSERT INTO reservations
VALUES
('johnpierre.p','P004','TX677789900','John Pierre Polnareff',2,'The Mansion of Dio','15-Feb-2020','20-Feb-2020');
INSERT INTO reservations
VALUES
('von.s','P030','TX999999999','Von Stroheim',1,'German friendly apartment','21-Feb-2020','26-Feb-2020');
INSERT INTO reservations
VALUES
('speedwagon.p','P044','TX1089889888','Speedwagon Peterson',1,'Foundation Funded Apartment','3-Mar-2020','4-Mar-2020');
INSERT INTO reservations
VALUES
('daenaerys.t','P025','TX897867565','Daenaerys Targaryen',2,'The Keep','07-Mar-2020','09-March-2020');

CREATE TABLE guest_reviews
(Guest_Review_ID VARCHAR(50) NOT NULL,
Guest_User_ID VARCHAR(50) NOT NULL,
Host_User_ID VARCHAR(50) NOT NULL,
Communication NUMBER(1,0) NOT NULL,
Cleanliness NUMBER(1,0) NOT NULL,
Accuracy NUMBER(1,0) NOT NULL,
Location NUMBER(1,0) NOT NULL,
Check_in NUMBER(1,0) NOT NULL,
Value NUMBER(1,0) NOT NULL,
Public_feedback VARCHAR(150),
Private_feedback VARCHAR(150),
PRIMARY KEY (Guest_Review_ID,Guest_User_ID),
FOREIGN KEY (Guest_User_ID)
References guests(Guest_User_ID),
FOREIGN KEY (Host_User_ID)
References hosts(Host_User_ID)
);

INSERT INTO guest_reviews
VALUES
('GRV001','jotaro.k','val033',4,3,4,5,4,5,'','Please appreciate Star Platinum.');
INSERT INTO guest_reviews
VALUES
('GRV002','jane.l','barbara.s',5,3,2,4,5,3,'Barbara still does not know how to communicate with customers.','');
INSERT INTO guest_reviews
VALUES
('GRV003','kratos.z','val033',4,3,4,2,4,6,'May the gods be with you before I kill them!','');
INSERT INTO guest_reviews
VALUES
('GRV004','kakyoin.n','giorrno.g',4,2,4,5,5,3,'','I only go for my types. Not like you!');
INSERT INTO guest_reviews
VALUES
('GRV005','dio.b','rafi.m',4,2,4,3,4,5,'','Ho! Mukatte kuronoga! Nugesuni Kono DIO ni chikatsute kuronoga!');
INSERT INTO guest_reviews
VALUES
('GRV006','boris.b','maisha.m',3,4,5,2,4,5,'Vadim Blyat','');
INSERT INTO guest_reviews
VALUES
('GRV007','mohammed.a','mike.s',4,5,3,5,3,2,'','Hell 2 you!');
INSERT INTO guest_reviews
VALUES
('GRV008','johnpierre.p','nurfarah.a',4,4,4,4,4,4,'Tres bien dayo Tres BI EN','');
INSERT INTO guest_reviews
VALUES
('GRV009','von.s','vanilla.i',3,3,3,3,3,3,'Baka morunga! German Science is ze best in za warudo!','NEIN! NEIN! NEIN! NEIN! NEIN! NEIN!');
INSERT INTO guest_reviews
VALUES
('GRV010','speedwagon.p','barbara.s',2,2,2,2,2,2,'','I will hire lawyers from Speedwagon Foundation and sue you for false advertising.');
INSERT INTO guest_reviews
VALUES
('GRV011','daenaerys.t','jon.s',4,3,4,3,4,3,'You know nothing, Jon Snow','Just kidding! Still love you hun bun <3');

CREATE TABLE host_reviews
(Host_Review_ID VARCHAR(50) NOT NULL,
Host_User_ID VARCHAR(50) NOT NULL,
Guest_User_ID VARCHAR(50) NOT NULL,
Communication NUMBER(1,0) NOT NULL,
Cleanliness NUMBER(1,0) NOT NULL,
Observance_of_house_rules NUMBER(1,0) NOT NULL,
Recommmend_to_a_friend VARCHAR(10) NOT NULL,
Public_feedback VARCHAR(150),
Private_feedback VARCHAR(150),
PRIMARY KEY (Host_Review_ID,Host_User_ID),
FOREIGN KEY (Host_User_ID)
References hosts(Host_User_ID),
FOREIGN KEY (Guest_User_ID)
References guests(Guest_User_ID)
);

INSERT INTO host_reviews
VALUES
('HRV001','val033','jotaro.k',3,4,3,'Yes','','Okie Dokie. Maybe next time!');
INSERT INTO host_reviews
VALUES
('HRV002','barbara.s','jane.l',2,3,4,'No','I do not understand your problem. Please be specific.','');
INSERT INTO host_reviews
VALUES
('HRV003','val033','kratos.z',3,5,5,'No','I am an atheist.','');
INSERT INTO host_reviews
VALUES
('HRV004','giorrno.g','kakyoin.n',4,3,3,'Yes','','But let me know when you change your mind ;-*');
INSERT INTO host_reviews
VALUES
('HRV005','rafi.m','dio.b',4,3,4,'No','','Chikazu kunaga taemaeno bushizaynai dana');
INSERT INTO host_reviews
VALUES
('HRV006','maisha.m','boris.b',1,1,1,'No','','Idi nakhhui Cyka Blyat!');
INSERT INTO host_reviews
VALUES
('HRV007','mike.s','mohammed.a',5,5,5,'Yes','','Hell 2 you 2!');
INSERT INTO host_reviews
VALUES
('HRV008','nurfarah.a','johnpierre.p',4,3,5,'No','OMG Please stop it, you are making me blush...','');
INSERT INTO host_reviews
VALUES
('HRV009','vanilla.i','von.s',3,2,1,'Yes','Ice Ice Baby!','STFU!');
INSERT INTO host_reviews
VALUES
('HRV010','barbara.s','speedwagon.p',1,1,1,'No','','Much as i like to restraint i have the right to remain violent any rhymes that i say can & WILL be used against you!');
INSERT INTO host_reviews
VALUES
('HRV011','jon.s','daenaerys.t',5,5,5,'Yes','Eh you are right...','Love u too babe <3');