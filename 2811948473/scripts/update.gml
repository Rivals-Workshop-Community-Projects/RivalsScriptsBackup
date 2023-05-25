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

if(spr_dir = 1){
set_hitbox_value(AT_NAIR, 7, HG_VISUAL_EFFECT, boom);
}
if(spr_dir = -1){
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

//roll
switch (state)
{
    case PS_ROLL_BACKWARD:
    case PS_ROLL_FORWARD:
    case PS_TECH_BACKWARD:
    case PS_TECH_FORWARD:
        if (state_timer == 1)
        {
            sound_stop(sound_get ("dodge_2"));
            sound_play(sound_get ("dodge_2"), false, 0, 0.4);
        }
    break;
    default:
    break;
}

//galaxy

if(hit_player_obj != -4)
{
    if (hit_player_obj.activated_kill_effect = 1 && hit_player_obj.state_timer = 0){
		sound_stop(sound_get("hit_med"));
		sound_stop(sound_get("hit_heavy"));
		sound_stop(sound_get("hit_fire"));
		sound_stop(sound_get("hit_weak"));
		sound_stop(sound_get("hit_med"));
		sound_stop(sound_get("hit_thunder"));
		sound_stop(sound_get("hit_thunder_med"));
		sound_stop(sound_get("hit_thunder_weak"));
		sound_stop(sound_get("spring"));
		sound_stop(sound_get("bwip"));
		sound_stop(sound_get("boep"));
		sound_stop(sound_get("bloop"));
		sound_stop(sound_get("hit_smash"));
		sound_play(sound_get("hit_heavy"), false, 0, 0.5, 1);
        hit_player_obj.state_timer = 1
        hit_player_obj = -1;
    }
}

//kill.

var killedPlayer = false;
with oPlayer {
    if(player != other.player && state == PS_RESPAWN && state_timer == 1 && other.lastlastplayer == last_player_hit_me){
        killedPlayer = true;
    } else {
        lastlastplayer = last_player_hit_me;
    }
}

if (killedPlayer) {
    sound_play (sound_get ("die"), false, 0, 0.5, 1);
}

//fastfall fixes wow

if (state == PS_PRATFALL){
        can_fast_fall = 0;
}

if (attack == AT_FSPECIAL){
        can_fast_fall = 0;
}

if (attack == AT_DSPECIAL){
        can_fast_fall = 0;
}

if (attack == AT_USPECIAL){
        can_fast_fall = 0;
}