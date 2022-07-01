//Hit Effects
if my_hitboxID.attack == AT_FSPECIAL && spr_dir = 1{
	var fx = spawn_hit_fx(hit_player_obj.x+20, hit_player_obj.y+50, whack)
		fx.depth = -10
    }

if my_hitboxID.attack == AT_FSPECIAL && spr_dir = -1{
	var fx = spawn_hit_fx(hit_player_obj.x-5, hit_player_obj.y+60, bam)
		fx.depth = -10
    }

if my_hitboxID.attack == AT_FSTRONG && spr_dir = 1{
	var fx = spawn_hit_fx(hit_player_obj.x+20, hit_player_obj.y+50, whack)
		fx.depth = -10
    }

if my_hitboxID.attack == AT_FSTRONG && spr_dir = -1{
	var fx = spawn_hit_fx(hit_player_obj.x-5, hit_player_obj.y+60, bam)
		fx.depth = -10
    }

if my_hitboxID.attack == AT_DTILT && spr_dir = 1{
	var fx = spawn_hit_fx(hit_player_obj.x+20, hit_player_obj.y+50, whack)
		fx.depth = -10
    }

if my_hitboxID.attack == AT_DTILT && spr_dir = -1{
	var fx = spawn_hit_fx(hit_player_obj.x-5, hit_player_obj.y+60, bam)
		fx.depth = -10
    }



if my_hitboxID.attack == AT_NSPECIAL && spr_dir = 1{
	var fx = spawn_hit_fx(hit_player_obj.x+30, hit_player_obj.y-50, bap)
		fx.depth = -10
    }

if my_hitboxID.attack == AT_NSPECIAL && spr_dir = -1{
	var fx = spawn_hit_fx(hit_player_obj.x+30, hit_player_obj.y-50, bonk)
		fx.depth = -10
    }

if my_hitboxID.attack == AT_USTRONG && spr_dir = 1{
	var fx = spawn_hit_fx(hit_player_obj.x+30, hit_player_obj.y-50, bap)
		fx.depth = -10
    }

if my_hitboxID.attack == AT_USTRONG && spr_dir = -1{
	var fx = spawn_hit_fx(hit_player_obj.x+30, hit_player_obj.y-50, bonk)
		fx.depth = -10
    }

if my_hitboxID.attack == AT_JAB && window > 6 && spr_dir = 1{
	var fx = spawn_hit_fx(hit_player_obj.x+30, hit_player_obj.y-50, bap)
		fx.depth = -10
    }

if my_hitboxID.attack == AT_JAB && window > 6 && spr_dir = -1{
	var fx = spawn_hit_fx(hit_player_obj.x+30, hit_player_obj.y-50, bonk)
		fx.depth = -10
    }



if my_hitboxID.attack == AT_DSPECIAL && spr_dir = 1{
	var fx = spawn_hit_fx(hit_player_obj.x+20, hit_player_obj.y+50, chop)
		fx.depth = -10
    }

if my_hitboxID.attack == AT_DSPECIAL && spr_dir = -1{
	var fx = spawn_hit_fx(hit_player_obj.x+20, hit_player_obj.y+50, clang)
		fx.depth = -10
    }

if my_hitboxID.attack == AT_DSTRONG && spr_dir = 1{
	var fx = spawn_hit_fx(hit_player_obj.x+20, hit_player_obj.y+50, chop)
		fx.depth = -10
    }

if my_hitboxID.attack == AT_DSTRONG && spr_dir = -1{
	var fx = spawn_hit_fx(hit_player_obj.x+20, hit_player_obj.y+50, clang)
		fx.depth = -10
    }

if my_hitboxID.attack == AT_UTILT && spr_dir = 1{
	var fx = spawn_hit_fx(hit_player_obj.x+20, hit_player_obj.y+50, chop)
		fx.depth = -10
    }

if my_hitboxID.attack == AT_UTILT && spr_dir = -1{
	var fx = spawn_hit_fx(hit_player_obj.x+20, hit_player_obj.y+50, clang)
		fx.depth = -10
    }



if my_hitboxID.attack == AT_USPECIAL && spr_dir = 1{
	var fx = spawn_hit_fx(hit_player_obj.x+30, hit_player_obj.y-60, slash)
		fx.depth = -10
    }

if my_hitboxID.attack == AT_USPECIAL && spr_dir = -1{
	var fx = spawn_hit_fx(hit_player_obj.x+30, hit_player_obj.y-60, slice)
		fx.depth = -10
    }

if my_hitboxID.attack == AT_UAIR && spr_dir = 1{
	var fx = spawn_hit_fx(hit_player_obj.x+30, hit_player_obj.y-60, slash)
		fx.depth = -10
    }

if my_hitboxID.attack == AT_UAIR && spr_dir = -1{
	var fx = spawn_hit_fx(hit_player_obj.x+30, hit_player_obj.y-60, slice)
		fx.depth = -10
    }

if my_hitboxID.attack == AT_BAIR && spr_dir = 1{
	var fx = spawn_hit_fx(hit_player_obj.x+30, hit_player_obj.y-60, slash)
		fx.depth = -10
    }

if my_hitboxID.attack == AT_BAIR && spr_dir = -1{
	var fx = spawn_hit_fx(hit_player_obj.x+30, hit_player_obj.y-60, slice)
		fx.depth = -10
    }

if my_hitboxID.attack == AT_NAIR && spr_dir = 1{
	var fx = spawn_hit_fx(hit_player_obj.x+30, hit_player_obj.y-60, slash)
		fx.depth = -10
    }

if my_hitboxID.attack == AT_NAIR && spr_dir = -1{
	var fx = spawn_hit_fx(hit_player_obj.x+30, hit_player_obj.y-60, slice)
		fx.depth = -10
    }
