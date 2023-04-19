var hitbox_midpoint_x = (enemy_hitboxID.x+x)/2;
var hitbox_midpoint_y = (enemy_hitboxID.y+y)/2;


if enemy_hitboxID.throws_rock != 2 && enemy_hitboxID != old_enemy_hitboxID{

old_enemy_hitboxID = enemy_hitboxID;

enemy_hitboxID.player_id.has_hit = true;

health -= enemy_hitboxID.damage;

sound_play(enemy_hitboxID.sound_effect);
spawn_hit_fx(hitbox_midpoint_x, hitbox_midpoint_y, enemy_hitboxID.hit_effect);

hitstop = enemy_hitboxID.player_id.hitstop;

if state == 2{ state = 3; }

if enemy_hitboxID.player_id == player_id{
    if enemy_hitboxID.attack == AT_FSTRONG{ //FStrong Launch
        free = true;
        state = 2;
        state_timer = 0;
        vsp = -5;
        hsp = 8*player_id.spr_dir;
        image_index = 4.9;
    }
    
    if enemy_hitboxID.attack == AT_DSPECIAL{ //DSpecial Launch
        free = true;
        state = 2;
        state_timer = 0;
        vsp = -16;
        image_index = 4.9;
    }
    
    if enemy_hitboxID.attack == AT_NSPECIAL && player_id.has_hit_player == false { //NSpecial Grab
        player_id.grabbed_bike = true;
        player_id.hitstop = 6;
        player_id.bike_health = health;
    }
    
}

}

if enemy_hitboxID.player_id == player_id
&& enemy_hitboxID.attack == AT_FSPECIAL
&& enemy_hitboxID.hbox_num == 5{
    hitstop = 0;
}