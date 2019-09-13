-- Drop table

-- DROP TABLE pantry.guests

CREATE TABLE pantry.guests (
	id serial NOT NULL, -- Unique ID
	status varchar(10) NULL, -- Status of Pantry Guest [A=Active; I=Inactive; W=Waiting; X=Archive]
	first_name varchar(35) NULL, -- First name of the Pantry Guest
	last_name varchar(35) NULL, -- Last name of the Pantry Guest
	gender varchar(6) NULL, -- Is the Guest: Male or Female
	st_address varchar(50) NULL, -- Street Address of the Pantry Guest
	state bpchar(2) NULL, -- State code of the Pantry Guest
	city varchar(35) NULL, -- City of the Pantry Guest
	zip varchar(11) NULL, -- 5 digit zip code of the Pantry Guest
	tel_no varchar(12) NULL, -- Primary contact number of the Pantry Guest
	email varchar(50) NULL, -- Primary email alias of the Pantry Guest
	child_no int4 NULL, -- Total child count of the Pantry Guest
	adult_no int4 NULL, -- Total adult count of the Pantry Guest
	is_member varchar(3) NULL DEFAULT 0, -- Is Pantry Guest a Member of the Laurel Church of Christ
	is_baptized varchar(3) NULL DEFAULT 0, -- Is Pantry Guest Baptized into Jesus Christ
	is_espanol varchar(3) NULL DEFAULT 0, -- Is Pantry Guest Spanish speaking, Hispanic
	date_enrolled date NULL DEFAULT 'now'::text::date, -- The first day date of Pantry Guests Visit
	notes text NULL, -- Overall comments about Guest
	is_job_searching varchar(3) NULL DEFAULT 0, -- This Guest is looking for employment
	worship_place varchar(80) NULL, -- Name of where the Pantry Guests Worships
	last_date_updated date NULL, -- Last date that this record of this Guest was updated
	"unit#" varchar(20) NULL, -- number of the location: street, apt, etc.
	is_homeless varchar(3) NULL DEFAULT 0, -- Is the Guest Homeless? Does not have a Home? Stable roof over the head
	is_family varchar(3) NULL DEFAULT 0, -- Does this Guest have at least 1 child?
	is_contact_ok varchar(3) NULL DEFAULT 0, -- Is it okay to Contact this Guest? [0 = No, -1 = Yes]
	allergies text NULL, -- List of all the Guests Allergies
	CONSTRAINT pk_guests PRIMARY KEY (id),
	CONSTRAINT status_chk CHECK (((status)::text = ANY ((ARRAY['Active'::character varying, 'Waiting'::character varying, 'Inactive'::character varying, 'Archive'::character varying])::text[])))
);
COMMENT ON TABLE pantry.guests IS 'A Collection of all Laurel Pantry Guests';

-- Column comments

COMMENT ON COLUMN pantry.guests.id IS 'Unique ID';
COMMENT ON COLUMN pantry.guests.status IS 'Status of Pantry Guest [A=Active; I=Inactive; W=Waiting; X=Archive]';
COMMENT ON COLUMN pantry.guests.first_name IS 'First name of the Pantry Guest';
COMMENT ON COLUMN pantry.guests.last_name IS 'Last name of the Pantry Guest';
COMMENT ON COLUMN pantry.guests.gender IS 'Is the Guest: Male or Female';
COMMENT ON COLUMN pantry.guests.st_address IS 'Street Address of the Pantry Guest';
COMMENT ON COLUMN pantry.guests.state IS 'State code of the Pantry Guest';
COMMENT ON COLUMN pantry.guests.city IS 'City of the Pantry Guest';
COMMENT ON COLUMN pantry.guests.zip IS '5 digit zip code of the Pantry Guest';
COMMENT ON COLUMN pantry.guests.tel_no IS 'Primary contact number of the Pantry Guest';
COMMENT ON COLUMN pantry.guests.email IS 'Primary email alias of the Pantry Guest';
COMMENT ON COLUMN pantry.guests.child_no IS 'Total child count of the Pantry Guest';
COMMENT ON COLUMN pantry.guests.adult_no IS 'Total adult count of the Pantry Guest';
COMMENT ON COLUMN pantry.guests.is_member IS 'Is Pantry Guest a Member of the Laurel Church of Christ';
COMMENT ON COLUMN pantry.guests.is_baptized IS 'Is Pantry Guest Baptized into Jesus Christ';
COMMENT ON COLUMN pantry.guests.is_espanol IS 'Is Pantry Guest Spanish speaking, Hispanic';
COMMENT ON COLUMN pantry.guests.date_enrolled IS 'The first day date of Pantry Guests Visit';
COMMENT ON COLUMN pantry.guests.notes IS 'Overall comments about Guest';
COMMENT ON COLUMN pantry.guests.is_job_searching IS 'This Guest is looking for employment';
COMMENT ON COLUMN pantry.guests.worship_place IS 'Name of where the Pantry Guests Worships';
COMMENT ON COLUMN pantry.guests.last_date_updated IS 'Last date that this record of this Guest was updated';
COMMENT ON COLUMN pantry.guests."unit#" IS 'number of the location: street, apt, etc.';
COMMENT ON COLUMN pantry.guests.is_homeless IS 'Is the Guest Homeless? Does not have a Home? Stable roof over the head';
COMMENT ON COLUMN pantry.guests.is_family IS 'Does this Guest have at least 1 child?';
COMMENT ON COLUMN pantry.guests.is_contact_ok IS 'Is it okay to Contact this Guest? [0 = No, -1 = Yes]';
COMMENT ON COLUMN pantry.guests.allergies IS 'List of all the Guests Allergies';

-- Constraint comments

COMMENT ON CONSTRAINT pk_guests ON pantry.guests IS 'Primary Key for the Guests table: id';
COMMENT ON CONSTRAINT status_chk ON pantry.guests IS 'Validates correct status default values';
