//

sound_stop(cur_sound);
cur_sound = sound_play(sound_get("v_dowitdabear"),false,noone,.85,1.05 - random_func(1,10,true)/100)
hsp = 0
old_hsp = 0

if attack == AT_FSPECIAL {
    window = 4
}

with oPlayer {
    if hatstate == other.player*other.player or hatstate == 2*other.player*other.player {
         hatstate = 0
         sound_stop(asset_get("sfx_forsburn_cape_hit"))
         sound_play(asset_get("sfx_forsburn_cape_hit"),false,noone,1,1.2)
         with other {
         h3x = spawn_hit_fx(floor(other.x), floor(other.y - other.char_height-10), h3)
         h3x.depth = -6
         create_hitbox(AT_NSPECIAL,3,floor(other.x), floor(other.y - other.char_height-10))
         }
             
    }
}