// called when the character gets KO'd
meter_prev = meter_cur;
meter_cur = 40;
meter_flash_timer = meter_flash_val;
spark_timer = spark_val;
spark_sprite = sprite_get("sparks" + string((timer mod 2) + 1));
break_active = false
break_timer = 0

with obj_article1 {
    if player_id == other.id {
        die = true;
    }
}