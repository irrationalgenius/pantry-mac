
-- DROP TRIGGER last_date_upd_guest_trgr ON guests;

create
    trigger last_date_upd_guest_trgr before update
        on
        pantry.guests for each row execute procedure pantry.update_last_date_current();;
