evidence_bounced = false;
evidence_sound = 0;
ev_sprites = [];
ev_sound_id = noone; //plays the sound on the projectile instead of the player

for (i = 0; i < 16; i++){
    array_push(ev_sprites, i);
}

for (i = 0; i < array_length(ev_sprites); i++){
    if (sprite_index == sprite_get("evidence_proj"+string(ev_sprites[i]+1))){
    switch (ev_sprites[i]){
        case 0:
        case 1:
            evidence_sound = 1;
            ev_sound_id = sound_get("fspec_envelope_land");
        break;
        case 2:
        case 15:
            evidence_sound = 2;
            ev_sound_id = sound_get("fspec_photo_land");
        break;
        case 3:
            evidence_sound = 3;
            ev_sound_id = sound_get("fspec_phone_land");
        break;
        case 4:
            evidence_sound = 4
            ev_sound_id = sound_get("fspec_knife_land");
        break;
        case 5:
            evidence_sound = 5;
            ev_sound_id = sound_get("fspec_gun_land");
        break;
        case 6:
            evidence_sound = 6;
            ev_sound_id = sound_get("fspec_squeak_land");
        break;
        case 7:
        case 12:
        case 13:
            evidence_sound = 7;
            ev_sound_id = sound_get("fspec_soft_land");
        break;
        case 8:
            evidence_sound = 8;
            ev_sound_id = sound_get("fspec_shine_land");
        break;
        case 9:
            evidence_sound = 9;
        break;
        case 10:
            evidence_sound = 10;
            ev_sound_id = sound_get("fspec_spraycan_land");
        break;
        case 11:
            evidence_sound = 11;
        break;
        case 14:
            evidence_sound = 12;
            ev_sound_id = sound_get("fspec_bottle_land");
        break;
        }
    }
}