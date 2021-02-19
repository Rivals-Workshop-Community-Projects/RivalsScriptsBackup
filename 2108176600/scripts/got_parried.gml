//got_parried - called when an opponent parries your attack

if instance_exists(shadow) instance_destroy(shadow);
if my_hitboxID.attack == AT_FSTRONG && my_hitboxID.hbox_num == 3 {
    state_timer = -200;
}

if my_hitboxID.attack == AT_DTILT {
    set_state(PS_PRATFALL);
}

set_attack_value(AT_DATTACK,AG_OFF_LEDGE,0);
set_attack_value(AT_DSTRONG,AG_OFF_LEDGE,0);