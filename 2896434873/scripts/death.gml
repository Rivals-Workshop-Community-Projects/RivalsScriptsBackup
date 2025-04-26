steady_anim = false;
reticule_show_steady_aim = false;
gun = 0;
ammo = max_ammo
reticule_state = 2;
reticule_frame = 16;
concentration = 100;
depleted = false;

if instance_exists(scapegoat_obj) {
    scapegoat_obj.dspecial_wait = 0
     scapegoat_obj.state = PS_ATTACK_GROUND;
     
}