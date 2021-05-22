// called when the character gets KO'd
meter_prev = meter_cur;
meter_cur = 20;
meter_flash_timer = meter_flash_val;

with obj_article1 {
    if player_id == other.id {
        die = true;
    }
}