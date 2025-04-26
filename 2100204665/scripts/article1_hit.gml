//
if (!busy && state < 3 && enemy_hitboxID.player_id != player_id){
hitpause_time = enemy_hitboxID.hitpause*1.5;
    hits += 1;

if (hits >= 1){
    
sound_play(sound_get("sfx_monsterhit"));
state = 3;
state_timer = 0;
player_id.move_cooldown[AT_DSPECIAL] += 60;
}
sound_play(enemy_hitboxID.sound_effect);
enemy_hitboxID.has_hit = true;
var enemy_hit_x = enemy_hitboxID.x;
var enemy_hit_y = enemy_hitboxID.y;
var enemy_hit_x_offset = enemy_hitboxID.hit_effect_x;
var enemy_hit_y_offset = enemy_hitboxID.hit_effect_y;
var enemy_hit_effect = enemy_hitboxID.hit_effect;
var enemy_hit_spr_dir = enemy_hitboxID.spr_dir;
with enemy_hitboxID.player_id{
    spawn_hit_fx(enemy_hit_x + enemy_hit_x_offset*enemy_hit_spr_dir, enemy_hit_y + enemy_hit_y_offset, enemy_hit_effect);
}
}
//spawn_hit_fx(enemy_hitboxID.x + enemy_hitboxID.hit_effect_x*enemy_hitboxID.spr_dir, enemy_hitboxID.y + enemy_hitboxID.hit_effect_y, enemy_hitboxID.hit_effect);