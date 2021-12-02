
with (asset_get("oPlayer")){
    if (state == PS_RESPAWN){
        needles_hit = false;
		stucks = 0;
		//explosion_ready = false;
    }
}

if (introTimer2 == 1) {
    introTimer2++;
} else {
    introTimer2 = 0;
    introTimer++;
}

if (introTimer < 31) {
    draw_indicator = false;
} else {
    draw_indicator = true;
}

if (introTimer2 == 0 && introTimer == 2) {
    sound_play (sound_get("BEEPS"));
}

if (weapon > 8)
{
	weapon -= 8;
}

if (PR_ammo > 100)
{
	PR_ammo = 100;
}

if (PR_ammo < 0)
{
	PR_ammo = 0;
}

if (PP_charge > 50)
{
	PP_charge = 50;
}

if (PP_charge < 0)
{
	PP_charge = 0;
}

if (needle_ammo > 56)
{
	needle_ammo = 56;
}

if (needle_ammo < 0)
{
	needle_ammo = 0;
}

if (needles > 56)
{
    needles = 0;
}

if (BS_ammo < 0)
{
	BS_ammo = 0;
}

if (BS_ammo > 6)
{
	BS_ammo = 6;
}

if (BS_shots > 6)
{
    BS_shots = 0;
}

if (BR_ammo < 0)
{
	BR_ammo = 0;
}

if (BR_ammo > 36)
{
	BR_ammo = 36;
}

if (BR_shots > 36)
{
    BR_shots = 0;
}

if (sniper_ammo < 0)
{
	sniper_ammo = 0;
}

if (sniper_ammo > 4)
{
	sniper_ammo = 4;
}

if (sniper_shots > 4)
{
    sniper_shots = 0;
}

if (RPG_ammo < 0)
{
	RPG_ammo = 0;
}

if (RPG_ammo > 2)
{
	RPG_ammo = 2;
}

if (RPG_shots > 2)
{
    RPG_shots = 0;
}

if (plasma_timer < 0)
{
	plasma_timer = 0;
}

if (plasma_timer > 50)
{
	plasma_timer = 50;
}

if (grav_liftime > 0)
{
	grav_liftime--;
}

if (grav_liftime <= 0)
{
	grav_liftime = 0;
}

if (frags > 10)
{
	frags = 10;
}