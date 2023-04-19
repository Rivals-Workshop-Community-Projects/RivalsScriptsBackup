image_index = round((sc_coin_lifetime - 2) / 4) % 4;

hsp = hsp * 0.95;
vsp += 0.3;

if place_meeting(x + 10, y - 10, asset_get("par_block")) || place_meeting(x - 10, y - 10, asset_get("par_block")) && hsp >= -0.1 && hsp <= 0.1{
    hsp *= -0.95;
    x -= (5 * (place_meeting(x + 10, y - 10, asset_get("par_block"))? 1:-1))
}
if (place_meeting(x, y + 2, asset_get("par_block")) || (place_meeting(x, y + 2, asset_get("par_jumpthrough")) && place_meeting(x, y + 24, asset_get("par_jumpthrough")))) && vsp >= 0{
    vsp *= -0.8 + (vsp / 100);
    y -= 5;
}

sc_coin_lifetime++;

if sc_coin_lifetime >= 600{
    instance_destroy(self);
    exit;
}
else
if sc_coin_lifetime >= 90{
    with oPlayer{
        if place_meeting(x, y, other) && other.sc_coin_lifetime >= 90{
            if sc_coins < 20{
                sc_coins += 1;
            }
            sound_play(asset_get("mfx_mm_coin"));
            instance_destroy(other);
            exit;
        }
    }
}
else if sc_coin_lifetime >= 30 && place_meeting(x, y, player_id){
    if player_id.sc_coins < 20{
        player_id.sc_coins += 1;
    }
    sound_play(asset_get("mfx_mm_coin"));
    instance_destroy(self);
    exit;
}

if sc_coin_lifetime >= 420{
    sprite_index = (sc_coin_lifetime % 20 >= 10? sprite_get("coin"):asset_get("empty_spr"));
}