//

// user_event(10);//fps counter

if(state == PS_CROUCH && (!disguised || disguisedAsSelf))
{
	var crouchMoveDir = 0;
	if(right_down)
		crouchMoveDir++;
	if(left_down)
		crouchMoveDir--;
	hsp = crouchMoveDir * 1;
    go_through = true;
}

if(disguised && chars[charIndex] == "frog")
{
    if(state == PS_JUMPSQUAT && lastState == PS_CROUCH)
        doFrogHighJump = true;
    else if(state != PS_JUMPSQUAT && state != PS_FIRST_JUMP)
        doFrogHighJump = false;
        
    if(state == PS_FIRST_JUMP && doFrogHighJump && state_timer == 1)
        vsp -= 3;
}


if(state == PS_PARRY && state_timer == 1)
    sound_play(sound_get("item_watch_pickup"), false, noone, 1);

if(perfect_dodged && !perfect_dodged_last && enemy_hitboxID != noone && !custom_clone)
{
    if(parryClone != noone)
    {
        spawn_hit_fx(parryClone.x, parryClone.y-char_height*0.5, disguseFx);
        instance_destroy(parryClone);
        parryClone = noone;
    }
    parryClone = instance_create(x, y, "oPlayer");
    parryClone.custom_clone = true;
    parryClone.damage_scaling = 0;
    
    var hit_angle = get_hitbox_angle(enemy_hitboxID);
    var hit_kb = get_kb_formula(get_player_damage(player), knockback_adj, 1.0, enemy_hitboxID.damage, enemy_hitboxID.kb_value, enemy_hitboxID.kb_scale);
    hit_kb = min(hit_kb, 20);
    parryClone.old_hsp = lengthdir_x(hit_kb, hit_angle);
    parryClone.old_vsp = lengthdir_y(hit_kb, hit_angle);

    parryCloneDestroyTimer = 0;
}
parryCloneDestroyTimer++;

if(variable_instance_exists(self, "parryClone") && 
parryClone != noone &&
(parryCloneDestroyTimer >= parryCloneDestroyLength
|| (parryCloneDestroyTimer >= 30 && !parryClone.free)
|| parryClone.state == PS_DEAD
|| parryClone.state == PS_RESPAWN))
{
    spawn_hit_fx(parryClone.x, parryClone.y-char_height*0.5, disguseFx);
    instance_destroy(parryClone);
    parryClone = noone;
}

// {
//     // perfect_dodged = false;

//     if(cloneChar != noone)
//         instance_destroy(cloneChar);
//     cloneChar = instance_create(x, y, "oPlayer");
//     cloneChar.custom_clone = true;
//     cloneChar.disable_ai = true;
//     //TODO: restore any percentage that is dealt to the clone + kill it after a delay
    
//     //TODO: move below into user event -> why does it not work at all?
// 	invis = true;
// 	clear_button_buffer(PC_SPECIAL_PRESSED);
// 	invisExitStateTimer = 0;
// 	invisExitAnimationIndex = 0;
// 	sound_play(sound_get("spy_cloak"));
    
// 	invisStateTimer = 0;
// 	invisStartAnimationIndex = 0;
// }


/*if(taunt_down && !spawnedClone)
{
    spawnedClone = true;
    
    var p = instance_create(x,y,"oPlayer");
    //p.custom_clone = false;
    //p.image_index = asset_get("bear_idle");
    p.clones_player_id = 1;
    //-> try to make it from other player?
    
    //with(asset_get("etalus"))
    with(oPlayer)
    {
        if(player != 1)
            continue;
        //var p = instance_create(x,y,"oPlayer");
        //p.image_index = asset_get("bear_idle");
    }
}*/


/*with(oPlayer)//pHitBox//obj_article1
{
	print(sprite_get_name(sprite_index));
}*/


if(perfect_dodged && !perfect_dodged_last)
	sound_play(sound_get("parry_success"), false, noone, 0.75);

    
user_event(0);//Update Invisibility

if(!custom_clone)
{
    user_event(1);//Update Disguise/Taunt
    user_event(4);//Compatability
    prep_hitboxes();
}

user_event(12);//voice lines
user_event(13);//custom SFX

invisAlphaLast = invisAlpha;
state_timer_last = state_timer;

has_walljumpLast = has_walljump;

taunt_down_last = taunt_down;
right_down_last = right_down;
left_down_last = left_down;
up_down_last = up_down;
down_down_last = down_down;
right_stick_down_last = right_stick_down;
left_stick_down_last = left_stick_down;
up_stick_down_last = up_stick_down;
down_stick_down_last = down_stick_down;
attack_down_last = attack_down;
special_down_last = special_down;
strong_down_last = strong_down;
shield_down_last = shield_down;
jump_down_last = jump_down;
perfect_dodged_last = perfect_dodged;
has_hit_last = has_hit;
has_hit_player_last = has_hit_player;
has_hit_player_fspecial = false;
has_hit_player_fspecial_crit = false;
idleWaitIndLast = idleWaitInd;

if(!hitpause)
{
    backstabSuccessLast = backstabSuccess;
    attachedSapper = false;
}
tauntIsOnWaitFrameLast = tauntIsOnWaitFrame;

lastState = state;
matchTimer++;


//Custom Hitbox Colors System (by @SupersonicNK)
#define prep_hitboxes
if(!get_match_setting(SET_PRACTICE))
    return;
//Applies the hitbox sprites and prepares them to be drawn (with color!)
with (pHitBox) if orig_player_id == other {
    if ("col" not in self && "dont_color" not in self) {
        with other {
            other.col = get_hitbox_value(other.attack, other.hbox_num, HG_HITBOX_COLOR);
            if other.col == 0 other.col = c_red;
            other.shape = get_hitbox_value(other.attack, other.hbox_num, HG_SHAPE)
            other.draw_colored = true;
            if other.type == 1
                other.sprite_index = __hb_hd_spr[other.shape];
            else if get_hitbox_value(other.attack, other.hbox_num, HG_PROJECTILE_MASK) == -1
                other.mask_index = __hb_hd_spr[other.shape];
            else 
                other.draw_colored = false;
            other.draw_spr = __hb_draw_spr;
        }
    }
}