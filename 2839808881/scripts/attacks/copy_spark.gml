set_attack_value(AT_COPY_SPARK, AG_SPRITE, sprite_get("ability_spark"));
set_attack_value(AT_COPY_SPARK, AG_NUM_WINDOWS, 7);
set_attack_value(AT_COPY_SPARK, AG_HURTBOX_SPRITE, sprite_get("ability_spark_hurt"));
set_attack_value(AT_COPY_SPARK, AG_CATEGORY, 2);
set_attack_value(AT_COPY_SPARK, AG_OFF_LEDGE, 1);

//startup
set_window_value(AT_COPY_SPARK, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_COPY_SPARK, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_COPY_SPARK, 1, AG_WINDOW_ANIM_FRAMES, 3);

//active frames, can be held
set_window_value(AT_COPY_SPARK, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_COPY_SPARK, 2, AG_WINDOW_LENGTH, 16);
set_window_value(AT_COPY_SPARK, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_COPY_SPARK, 2, AG_WINDOW_ANIM_FRAME_START, 3);

//inbetween active and final
set_window_value(AT_COPY_SPARK, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_COPY_SPARK, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_COPY_SPARK, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_COPY_SPARK, 3, AG_WINDOW_ANIM_FRAME_START, 7);

//release hitbox
set_window_value(AT_COPY_SPARK, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_COPY_SPARK, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_COPY_SPARK, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_COPY_SPARK, 4, AG_WINDOW_ANIM_FRAME_START, 9);

//endlag 1
set_window_value(AT_COPY_SPARK, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_COPY_SPARK, 5, AG_WINDOW_LENGTH, 8);
set_window_value(AT_COPY_SPARK, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_COPY_SPARK, 5, AG_WINDOW_ANIM_FRAME_START, 10);

//endlag 2
set_window_value(AT_COPY_SPARK, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_COPY_SPARK, 6, AG_WINDOW_LENGTH, 16);
set_window_value(AT_COPY_SPARK, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_COPY_SPARK, 6, AG_WINDOW_ANIM_FRAME_START, 12);

//endlag 3
set_window_value(AT_COPY_SPARK, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_COPY_SPARK, 7, AG_WINDOW_LENGTH, 5);
set_window_value(AT_COPY_SPARK, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_COPY_SPARK, 7, AG_WINDOW_ANIM_FRAME_START, 14);

set_num_hitboxes(AT_COPY_SPARK, 5);

for (var i = 1; i < 5; i++){//>
set_hitbox_value(AT_COPY_SPARK, i, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_COPY_SPARK, i, HG_WINDOW, 2);
if(i == 1){
set_hitbox_value(AT_COPY_SPARK, i, HG_WINDOW_CREATION_FRAME, 0);
} else if(i == 2){
set_hitbox_value(AT_COPY_SPARK, i, HG_WINDOW_CREATION_FRAME, 4);
} else if(i == 3){
set_hitbox_value(AT_COPY_SPARK, i, HG_WINDOW_CREATION_FRAME, 8);
} else if(i == 4){
set_hitbox_value(AT_COPY_SPARK, i, HG_WINDOW_CREATION_FRAME, 12);
}
set_hitbox_value(AT_COPY_SPARK, i, HG_LIFETIME, 2);
set_hitbox_value(AT_COPY_SPARK, i, HG_HITBOX_X, 3);
set_hitbox_value(AT_COPY_SPARK, i, HG_HITBOX_Y, -18);
set_hitbox_value(AT_COPY_SPARK, i, HG_WIDTH, 106);
set_hitbox_value(AT_COPY_SPARK, i, HG_HEIGHT, 106);
set_hitbox_value(AT_COPY_SPARK, i, HG_SHAPE, 0);
set_hitbox_value(AT_COPY_SPARK, i, HG_PRIORITY, 1);
set_hitbox_value(AT_COPY_SPARK, i, HG_DAMAGE, 2);
set_hitbox_value(AT_COPY_SPARK, i, HG_ANGLE, 40);
set_hitbox_value(AT_COPY_SPARK, i, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_COPY_SPARK, i, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_COPY_SPARK, i, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_COPY_SPARK, i, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_COPY_SPARK, i, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_COPY_SPARK, i, HG_HITSTUN_MULTIPLIER, 0.75);
set_hitbox_value(AT_COPY_SPARK, i, HG_VISUAL_EFFECT, 21);
set_hitbox_value(AT_COPY_SPARK, i, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_COPY_SPARK, i, HG_HIT_SFX, asset_get("sfx_absa_singlezap1"));
set_hitbox_value(AT_COPY_SPARK, i, HG_HITBOX_GROUP, -1);
}

//Release Hitbox
set_hitbox_value(AT_COPY_SPARK, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_COPY_SPARK, 5, HG_WINDOW, 4);
set_hitbox_value(AT_COPY_SPARK, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_COPY_SPARK, 5, HG_HITBOX_X, 3);
set_hitbox_value(AT_COPY_SPARK, 5, HG_HITBOX_Y, -18);
set_hitbox_value(AT_COPY_SPARK, 5, HG_WIDTH, 120);
set_hitbox_value(AT_COPY_SPARK, 5, HG_HEIGHT, 120);
set_hitbox_value(AT_COPY_SPARK, 5, HG_SHAPE, 0);
set_hitbox_value(AT_COPY_SPARK, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_COPY_SPARK, 5, HG_DAMAGE, 7);
set_hitbox_value(AT_COPY_SPARK, 5, HG_ANGLE, 70);
set_hitbox_value(AT_COPY_SPARK, 5, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_COPY_SPARK, 5, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_COPY_SPARK, 5, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_COPY_SPARK, 5, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_COPY_SPARK, 5, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_COPY_SPARK, 5, HG_VISUAL_EFFECT, 157);
set_hitbox_value(AT_COPY_SPARK, 5, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_COPY_SPARK, 5, HG_HIT_SFX, asset_get("sfx_absa_kickhit"));
set_hitbox_value(AT_COPY_SPARK, 5, HG_HITBOX_GROUP, 5);