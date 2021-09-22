set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);//0 =接地のみ  1 =空中のみ  2 =接地または空中にできる
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 4);
set_attack_value(AT_USPECIAL, AG_LANDING_LAG, 20);
set_attack_value(AT_USPECIAL, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_USPECIAL, AG_OFF_LEDGE, 1);//0 =崖で停止する  1 =崖から出る
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));//攻撃に使用するスプライト
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));//攻撃の当たり判定に使用するスプライト

//-----------------------------------------
//構え
set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 10);//フレーム単位のウィンドウの継続時間
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 5);//ウィンドウの期間中に表示するアニメーションフレームの数
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED, 0);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_CUSTOM_GRAVITY, 0);

//-----------------------------------------
//打ち上げ
set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 3);//フレーム単位のウィンドウの継続時間
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 2);//ウィンドウの期間中に表示するアニメーションフレームの数
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 5);//ウィンドウが開始するアニメーションフレーム
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, -14);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_INVINCIBILITY, 2);//飛び道具に対して無敵
set_window_value(AT_USPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, .65);

set_window_value(AT_USPECIAL, 2, AG_WINDOW_HAS_SFX, 1);//0 =効果音がない   1 =効果音がある
set_window_value(AT_USPECIAL, 2, AG_WINDOW_SFX, sound_get("miso_Usp"));//効果音のインデックス
set_window_value(AT_USPECIAL, 2, AG_WINDOW_SFX_FRAME, 1);//効果音が再生されるウィンドウ内のフレーム

//-----------------------------------------
//上昇ループ

set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 20);//フレーム単位のウィンドウの継続時間
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);//ウィンドウの期間中に表示するアニメーションフレームの数
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 5);//ウィンドウが開始するアニメーションフレーム
set_window_value(AT_USPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY, .65);

//-----------------------------------------
//回転ループ

set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 10);//落下までループ
set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 18);//フレーム単位のウィンドウの継続時間
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 9);//ウィンドウの期間中に表示するアニメーションフレームの数
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 7);//ウィンドウが開始するアニメーションフレーム
set_window_value(AT_USPECIAL, 4, AG_WINDOW_CUSTOM_GRAVITY, 1);

//-----------------------------------------

set_window_value(AT_USPECIAL, 5, AG_WINDOW_LENGTH, 16);//フレーム単位のウィンドウの継続時間
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 2);//ウィンドウの期間中に表示するアニメーションフレームの数
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 16);//ウィンドウが開始するアニメーションフレーム
set_window_value(AT_USPECIAL, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_SFX, asset_get("sfx_land"));

//-----------------------------------------
//横攻撃

//set_window_value(AT_USPECIAL, 6, AG_WINDOW_TYPE, 7);//落下
set_window_value(AT_USPECIAL, 6, AG_WINDOW_LENGTH, 14);//フレーム単位のウィンドウの継続時間
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 7);//ウィンドウの期間中に表示するアニメーションフレームの数
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 22);//ウィンドウが開始するアニメーションフレーム
set_window_value(AT_USPECIAL, 6, AG_WINDOW_CUSTOM_GRAVITY, 1);

set_window_value(AT_USPECIAL, 6, AG_WINDOW_HAS_SFX, 1);//0 =効果音がない   1 =効果音がある
set_window_value(AT_USPECIAL, 6, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_USPECIAL, 6, AG_WINDOW_SFX_FRAME, 4);//効果音が再生されるウィンドウ内のフレーム


set_window_value(AT_USPECIAL, 7, AG_WINDOW_TYPE, 7);//落下
set_window_value(AT_USPECIAL, 7, AG_WINDOW_LENGTH, 12);//フレーム単位のウィンドウの継続時間
set_window_value(AT_USPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 2);//ウィンドウの期間中に表示するアニメーションフレームの数
set_window_value(AT_USPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 29);//ウィンドウが開始するアニメーションフレーム
set_window_value(AT_USPECIAL, 7, AG_WINDOW_CUSTOM_GRAVITY, 1);


//攻撃の当たり判定-----------------------------------------------------------------------------
set_num_hitboxes(AT_USPECIAL, 2);

set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 9999);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, -8);
set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 36);
set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 20);
set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 55);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING, .45);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_USPECIAL, 1, HG_HITPAUSE_SCALING, .45);
set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("body_proj"));
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, .4);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_GRAVITY, .5);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_UNBASHABLE, false);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_PARRY_STUN, false);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);

set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 6);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X, 14);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, 4);
set_hitbox_value(AT_USPECIAL, 2, HG_WIDTH, 80);
set_hitbox_value(AT_USPECIAL, 2, HG_HEIGHT, 62);
set_hitbox_value(AT_USPECIAL, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_USPECIAL, 2, HG_DAMAGE, 14);
set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE, 45);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USPECIAL, 2, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_HITPAUSE, 14);
set_hitbox_value(AT_USPECIAL, 2, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_USPECIAL, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USPECIAL, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_USPECIAL, 2, HG_HIT_LOCKOUT, 4);


