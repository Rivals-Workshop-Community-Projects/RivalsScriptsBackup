if (get_gameplay_time() < 5)
{
    if (!has_enter) and (!instance_exists(oTestPlayer))
    {
        has_enter = true;
        set_attack(AT_NTHROW);
        
    }
}

if (attack == AT_NTHROW) and (window == 2) and (window_timer == 57)
{
    set_state(PS_SPAWN);
    state_timer += 66;
    
}



if(spr_dir = 1){
set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT, boom);
}
if(spr_dir = -1){
set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT, boom2);
}

if(spr_dir = -1){
set_hitbox_value(AT_NAIR, 7, HG_VISUAL_EFFECT, boom);
}
if(spr_dir = 1){
set_hitbox_value(AT_NAIR, 7, HG_VISUAL_EFFECT, boom2);
}

if(spr_dir = 1){
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, boom);
}
if(spr_dir = -1){
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, boom2);
}

if(spr_dir = 1){
set_attack_value(AT_NTHROW, AG_SPRITE, sprite_get("entrance"));
}
if(spr_dir = -1){
set_attack_value(AT_NTHROW, AG_SPRITE, sprite_get("entrance2"));
}

if(spr_dir = 1){
set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
}
if(spr_dir = -1){
set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt2"));
}

if (state == PS_IDLE_AIR && PS_IDLE)
{
    knockback_adj = 1.2;
    
}

if (state == PS_PRATFALL && state_timer = 1)
{
	sound_play(sound_get("fall"));
    
}

if (state == PS_AIR_DODGE && state_timer = 0)
{
	sound_play(sound_get("dodge"));
    
}

if (state == PS_RESPAWN && state_timer = 90)
{
	sound_play(sound_get("respawn"));
    
}

if (state == PS_DASH_TURN && state_timer = 1)
{
	sound_play(sound_get("dash"));
    
}
if (state == PS_DASH_STOP && state_timer = 1)
{
	sound_play(sound_get("dash2"));
    
}
if (state == PS_CROUCH && state_timer = 0)
{
	sound_play(sound_get("step5"));
}

if (state == PS_WALK) {
	if (state_timer % 40 == 20) { 
		sound_play(sound_get("step1"));
	} 
	if (state_timer % 40 == 0) {
		sound_play(sound_get("step2"));
	}
}
if (state == PS_DASH) {
	if (state_timer % 28 == 7) { 
		sound_play(sound_get("step3"));
	} 
	if (state_timer % 28 == 20) {
		sound_play(sound_get("step4"));
	}
}
