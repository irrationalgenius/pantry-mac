
-- DROP TRIGGER enforce_guests_gender_trgr ON guests;

create
    trigger enforce_guests_gender_trgr before insert
        or update
            on
            pantry.guests for each row execute procedure pantry.enforce_guests_gender();;
