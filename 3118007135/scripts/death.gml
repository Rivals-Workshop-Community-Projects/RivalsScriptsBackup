// RESET EVERYTHING
with(oPlayer){
    if other.id != id{
        if wren_riptide_id == other.id{
            wren_caught = false;
            set_state(PS_TUMBLE);
            wren_riptide_id = noone;
        }
    }
}
if instance_exists(wren_yoyo){
    sound_stop(sfx_wren_whirlpool_loop);
    instance_destroy(wren_yoyo);
}
wren_charge = 0;
wren_charge_lvl = 0;