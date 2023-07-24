//death.gml
s_storedatk = 0;
s_storedwin = 0;
b_storedatk = 0;
b_storedwin = 0;
if(disk_obj != noone) disk_obj.destroyed = true;
disk_obj = noone;
move_cooldown[AT_USPECIAL_2] = 0;
move_cooldown[AT_USPECIAL_2] = 0;
uspec_stall = 4;
assist_aerial_parrystun = false;

if(assist != noone && assist.state != 3){
    assist.shoulddie = true;
}