
-- DROP TRIGGER enforce_guests_status_wait_trgr ON guests;

create
    trigger enforce_guests_status_wait_trgr before insert
        or update
            on
            pantry.guests for each row execute procedure pantry.enforce_guests_status_waiting();;
