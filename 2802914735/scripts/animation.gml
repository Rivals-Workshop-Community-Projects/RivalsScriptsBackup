//a
if (state == PS_ATTACK_AIR) or (state == PS_ATTACK_GROUND) {
    switch(attack) { //change axe throw animation depending on how many axes you got
        //regular axe throw
        case AT_FTILT:
            if free {
                if axes_num >= 1 {
                    sprite_index = sprite_get("ftilt_air");
                } else {
                    sprite_index = sprite_get("ftilt_air_axeless");
                }
                hurtboxID.sprite_index = sprite_get("ftilt_air_hurt");
            } else {
                if fspec_jumpstart {
                    if axes_num >= 1 {
                        sprite_index = sprite_get("ftilt_jumpstart");
                    } else {
                        sprite_index = sprite_get("fspecial_jumpstart_axeless");
                    }
                    hurtboxID.sprite_index = sprite_get("fspecial_jumpstart_hurt");
                    image_index = fspec_jumpstart_timer * 0.5;
                } else if fspec_land_timer > 0 {
                    if axes_num >= 1 {
                        sprite_index = sprite_get("ftilt_land");
                    } else {
                        sprite_index = sprite_get("fspecial_land_axeless");
                    }
                    hurtboxID.sprite_index = sprite_get("fspecial_land_hurt");
                    image_index = 3/fspec_land_timer;
                }else if hsp == 0 {
                    if axes_num >= 1 {
                        sprite_index = sprite_get("ftilt");
                    } else {
                        sprite_index = sprite_get("ftilt_axeless");
                    }
                    hurtboxID.sprite_index = sprite_get("ftilt_hurt");
                } else {
                    if axes_num >= 1 {
                        if window == 3 && window_timer >= 12 {
                            sprite_index = sprite_get("walk_noleftaxe");
                            image_index = fspec_walk_timer * 0.2;
                            hurtboxID.sprite_index = sprite_get("walk_axeless_hurt");
                        } else {
                            sprite_index = sprite_get("ftilt_walking");
                            hurtboxID.sprite_index = sprite_get("ftilt_walking_hurt");
                        }
                    } else {
                        if window == 3 && window_timer >= 12 {
                            sprite_index = sprite_get("walk_axeless");
                            image_index = fspec_walk_timer * 0.2;
                            hurtboxID.sprite_index = sprite_get("walk_axeless_hurt");
                        } else {
                            sprite_index = sprite_get("ftilt_walking_axeless");
                            hurtboxID.sprite_index = sprite_get("ftilt_walking_hurt");
                        }
                    }
                }
            }
            hurtboxID.image_index = image_index;
            break;
        case AT_FSPECIAL:
            if fspecial_charging && hsp == 0 && !free {
                set_window_value(AT_FSPECIAL,1,AG_WINDOW_ANIM_FRAMES,3);
                set_window_value(AT_FSPECIAL,2,AG_WINDOW_ANIM_FRAMES,2);
                set_window_value(AT_FSPECIAL,2,AG_WINDOW_ANIM_FRAME_START,3);
                set_window_value(AT_FSPECIAL,3,AG_WINDOW_ANIM_FRAMES,1);
                set_window_value(AT_FSPECIAL,3,AG_WINDOW_ANIM_FRAME_START,5);
                set_window_value(AT_FSPECIAL,4,AG_WINDOW_ANIM_FRAMES,3);
                set_window_value(AT_FSPECIAL,4,AG_WINDOW_ANIM_FRAME_START,6);
                if axes_num >= 1 {
                    sprite_index = sprite_get("fspecial_charged");
                } else {
                    sprite_index = sprite_get("fspecial_charged_axeless");
                }
                hurtboxID.sprite_index = sprite_get("fspecial_charged_hurt");
            }
            else {
                set_window_value(AT_FSPECIAL,1,AG_WINDOW_ANIM_FRAMES,2);
                set_window_value(AT_FSPECIAL,2,AG_WINDOW_ANIM_FRAMES,1);
                set_window_value(AT_FSPECIAL,2,AG_WINDOW_ANIM_FRAME_START,2);
                set_window_value(AT_FSPECIAL,3,AG_WINDOW_ANIM_FRAMES,1);
                set_window_value(AT_FSPECIAL,3,AG_WINDOW_ANIM_FRAME_START,3);
                set_window_value(AT_FSPECIAL,4,AG_WINDOW_ANIM_FRAMES,2);
                set_window_value(AT_FSPECIAL,4,AG_WINDOW_ANIM_FRAME_START,4);
                if free {
                    if axes_num >= 1 {
                        sprite_index = sprite_get("fspecial_air");
                    } else {
                        sprite_index = sprite_get("fspecial_air_axeless");
                    }
                    hurtboxID.sprite_index = sprite_get("fspecial_air_hurt");
                } else {
                    if fspec_jumpstart {
                        if axes_num >= 1 {
                            sprite_index = sprite_get("fspecial_jumpstart");
                        } else {
                            sprite_index = sprite_get("fspecial_jumpstart_axeless");
                        }
                        hurtboxID.sprite_index = sprite_get("fspecial_jumpstart_hurt");
                        image_index = fspec_jumpstart_timer * 0.5;
                    } else if fspec_land_timer > 0 {
                        if axes_num >= 1 {
                            sprite_index = sprite_get("fspecial_land");
                        } else {
                            sprite_index = sprite_get("fspecial_land_axeless");
                        }
                        hurtboxID.sprite_index = sprite_get("fspecial_land_hurt");
                        image_index = 3/fspec_land_timer;
                    } else if hsp == 0 {
                        if axes_num >= 1 {
                            sprite_index = sprite_get("fspecial");
                        } else {
                            sprite_index = sprite_get("fspecial_axeless");
                        }
                        hurtboxID.sprite_index = sprite_get("fspecial_hurt");
                    } else {
                        if axes_num >= 1 {
                            if window == 4 && window_timer >= 20 {
                                sprite_index = sprite_get("walk_norightaxe");
                                image_index = fspec_walk_timer * 0.2;
                                hurtboxID.sprite_index = sprite_get("walk_axeless_hurt");
                            } else {
                                sprite_index = sprite_get("fspecial_walking");
                                hurtboxID.sprite_index = sprite_get("fspecial_walking_hurt");
                            }
                        } else {
                            if window == 4 && window_timer >= 20 {
                                sprite_index = sprite_get("walk_axeless");
                                image_index = fspec_walk_timer * 0.2;
                                hurtboxID.sprite_index = sprite_get("walk_axeless_hurt");
                            } else {
                                sprite_index = sprite_get("fspecial_walking_axeless");
                                hurtboxID.sprite_index = sprite_get("fspecial_walking_hurt");
                            }
                        }
                    }
                }
            }
            hurtboxID.image_index = image_index;
            break;
        //red axe throw
        
        case 44:
            if fspecial_charging && hsp == 0 && !free {
                set_window_value(AT_FSPECIAL_RED,1,AG_WINDOW_ANIM_FRAMES,3);
                set_window_value(AT_FSPECIAL_RED,2,AG_WINDOW_ANIM_FRAMES,3);
                set_window_value(AT_FSPECIAL_RED,2,AG_WINDOW_ANIM_FRAME_START,3);
                set_window_value(AT_FSPECIAL_RED,3,AG_WINDOW_ANIM_FRAMES,1);
                set_window_value(AT_FSPECIAL_RED,3,AG_WINDOW_ANIM_FRAME_START,6);
                set_window_value(AT_FSPECIAL_RED,4,AG_WINDOW_ANIM_FRAMES,4);
                set_window_value(AT_FSPECIAL_RED,4,AG_WINDOW_ANIM_FRAME_START,7);
                if axes_num >= 1 {
                    sprite_index = sprite_get("throwred_charged");
                } else {
                    sprite_index = sprite_get("throwred_charged_axeless");
                }
                hurtboxID.sprite_index = sprite_get("throwred_charged_hurt");
            }
            else {
                set_window_value(AT_FSPECIAL_RED,1,AG_WINDOW_ANIM_FRAMES,3);
                set_window_value(AT_FSPECIAL_RED,2,AG_WINDOW_ANIM_FRAMES,2);
                set_window_value(AT_FSPECIAL_RED,2,AG_WINDOW_ANIM_FRAME_START,3);
                set_window_value(AT_FSPECIAL_RED,3,AG_WINDOW_ANIM_FRAMES,1);
                set_window_value(AT_FSPECIAL_RED,3,AG_WINDOW_ANIM_FRAME_START,5);
                set_window_value(AT_FSPECIAL_RED,4,AG_WINDOW_ANIM_FRAMES,4);
                set_window_value(AT_FSPECIAL_RED,4,AG_WINDOW_ANIM_FRAME_START,6);
                if free {
                    if axes_num >= 1 {
                        sprite_index = sprite_get("throwred_air");
                    } else {
                        sprite_index = sprite_get("throwred_air_axeless");
                    }
                    hurtboxID.sprite_index = sprite_get("throwred_air_hurt");
                } else {
                    if fspec_jumpstart {
                        if axes_num >= 1 {
                            sprite_index = sprite_get("fspecial_jumpstart");
                        } else {
                            sprite_index = sprite_get("fspecial_jumpstart_axeless");
                        }
                        hurtboxID.sprite_index = sprite_get("fspecial_jumpstart_hurt");
                        image_index = fspec_jumpstart_timer * 0.5;
                    } else if fspec_land_timer > 0 {
                        if axes_num >= 1 {
                            sprite_index = sprite_get("fspecial_land");
                        } else {
                            sprite_index = sprite_get("fspecial_land_axeless");
                        }
                        hurtboxID.sprite_index = sprite_get("fspecial_land_hurt");
                        image_index = 3/fspec_land_timer;
                    } else if hsp == 0 {
                        if axes_num >= 1 {
                            sprite_index = sprite_get("throwred");
                        } else {
                            sprite_index = sprite_get("throwred_axeless");
                        }
                        hurtboxID.sprite_index = sprite_get("throwred_hurt");
                    } else {
                        if axes_num >= 1 {
                            if window == 4 && window_timer >= 20 {
                                sprite_index = sprite_get("walk_norightaxe");
                                image_index = fspec_walk_timer * 0.2;
                                hurtboxID.sprite_index = sprite_get("walk_axeless_hurt");
                            } else {
                                sprite_index = sprite_get("throwred_walking");
                                hurtboxID.sprite_index = sprite_get("throwred_walking_hurt");
                            }
                        } else {
                            if window == 4 && window_timer >= 20 {
                                sprite_index = sprite_get("walk_axeless");
                                image_index = fspec_walk_timer * 0.2;
                                hurtboxID.sprite_index = sprite_get("walk_axeless_hurt");
                            } else {
                                sprite_index = sprite_get("throwred_walking_axeless");
                                hurtboxID.sprite_index = sprite_get("throwred_walking_hurt");
                            }
                        }
                    }
                }
            }
            hurtboxID.image_index = image_index;
            break;
        //shield axe throw
        case 45:
            if fspecial_charging && hsp == 0 && !free {
                set_window_value(AT_FSPECIAL_BLUE,1,AG_WINDOW_ANIM_FRAMES,3);
                set_window_value(AT_FSPECIAL_BLUE,2,AG_WINDOW_ANIM_FRAMES,1);
                set_window_value(AT_FSPECIAL_BLUE,2,AG_WINDOW_ANIM_FRAME_START,3);
                set_window_value(AT_FSPECIAL_BLUE,3,AG_WINDOW_ANIM_FRAMES,1);
                set_window_value(AT_FSPECIAL_BLUE,3,AG_WINDOW_ANIM_FRAME_START,4);
                set_window_value(AT_FSPECIAL_BLUE,4,AG_WINDOW_ANIM_FRAMES,2);
                set_window_value(AT_FSPECIAL_BLUE,4,AG_WINDOW_ANIM_FRAME_START,5);
                if axes_num >= 1 {
                    sprite_index = sprite_get("throwblue_charged");
                } else {
                    sprite_index = sprite_get("throwblue_charged_axeless");
                }
                hurtboxID.sprite_index = sprite_get("throwblue_charged_hurt");
            }
            else{
                set_window_value(AT_FSPECIAL_BLUE,1,AG_WINDOW_ANIM_FRAMES,2);
                set_window_value(AT_FSPECIAL_BLUE,2,AG_WINDOW_ANIM_FRAMES,1);
                set_window_value(AT_FSPECIAL_BLUE,2,AG_WINDOW_ANIM_FRAME_START,2);
                set_window_value(AT_FSPECIAL_BLUE,3,AG_WINDOW_ANIM_FRAMES,1);
                set_window_value(AT_FSPECIAL_BLUE,3,AG_WINDOW_ANIM_FRAME_START,3);
                set_window_value(AT_FSPECIAL_BLUE,4,AG_WINDOW_ANIM_FRAMES,2);
                set_window_value(AT_FSPECIAL_BLUE,4,AG_WINDOW_ANIM_FRAME_START,4);
                if free {
                    if axes_num >= 1 {
                        sprite_index = sprite_get("throwblue_air");
                    } else {
                        sprite_index = sprite_get("throwblue_air_axeless");
                    }
                    hurtboxID.sprite_index = sprite_get("throwblue_air_hurt");
                } else {
                    if fspec_jumpstart {
                        if axes_num >= 1 {
                            sprite_index = sprite_get("fspecial_jumpstart");
                        } else {
                            sprite_index = sprite_get("fspecial_jumpstart_axeless");
                        }
                        hurtboxID.sprite_index = sprite_get("fspecial_jumpstart_hurt");
                        image_index = fspec_jumpstart_timer * 0.5;
                    } else if fspec_land_timer > 0 {
                        if axes_num >= 1 {
                            sprite_index = sprite_get("fspecial_land");
                        } else {
                            sprite_index = sprite_get("fspecial_land_axeless");
                        }
                        hurtboxID.sprite_index = sprite_get("fspecial_land_hurt");
                        image_index = 3/fspec_land_timer;
                    } else if hsp == 0 {
                        if axes_num >= 1 {
                            sprite_index = sprite_get("throwblue");
                        } else {
                            sprite_index = sprite_get("throwblue_axeless");
                        }
                        hurtboxID.sprite_index = sprite_get("throwblue_hurt");
                    } else {
                        if axes_num >= 1 {
                            if window == 4 && window_timer >= 20 {
                                sprite_index = sprite_get("walk_norightaxe");
                                image_index = fspec_walk_timer * 0.2;
                                hurtboxID.sprite_index = sprite_get("walk_axeless_hurt");
                            } else {
                                sprite_index = sprite_get("throwblue_walking");
                                hurtboxID.sprite_index = sprite_get("throwblue_walking_hurt");
                            }
                        } else {
                            if window == 4 && window_timer >= 20 {
                                sprite_index = sprite_get("walk_axeless");
                                image_index = fspec_walk_timer * 0.2;
                                hurtboxID.sprite_index = sprite_get("walk_axeless_hurt");
                            } else {
                                sprite_index = sprite_get("throwblue_walking_axeless");
                                hurtboxID.sprite_index = sprite_get("throwblue_walking_hurt");
                            }
                        }
                    }
                }
            }
            hurtboxID.image_index = image_index;
            break;
            
        //wind axe throw
        case 46:
            if fspecial_charging && hsp == 0 && !free {
                set_window_value(AT_FSPECIAL_GREEN,1,AG_WINDOW_ANIM_FRAMES,3);
                set_window_value(AT_FSPECIAL_GREEN,2,AG_WINDOW_ANIM_FRAMES,3);
                set_window_value(AT_FSPECIAL_GREEN,2,AG_WINDOW_ANIM_FRAME_START,3);
                set_window_value(AT_FSPECIAL_GREEN,3,AG_WINDOW_ANIM_FRAMES,1);
                set_window_value(AT_FSPECIAL_GREEN,3,AG_WINDOW_ANIM_FRAME_START,6);
                set_window_value(AT_FSPECIAL_GREEN,4,AG_WINDOW_ANIM_FRAMES,2);
                set_window_value(AT_FSPECIAL_GREEN,4,AG_WINDOW_ANIM_FRAME_START,7);
                if axes_num >= 1 {
                    sprite_index = sprite_get("throwgreen_charged");
                } else {
                    sprite_index = sprite_get("throwgreen_charged_axeless");
                }
                hurtboxID.sprite_index = sprite_get("throwgreen_charged_hurt");
            }
            else{
                set_window_value(AT_FSPECIAL_GREEN,1,AG_WINDOW_ANIM_FRAMES,3);
                set_window_value(AT_FSPECIAL_GREEN,2,AG_WINDOW_ANIM_FRAMES,1);
                set_window_value(AT_FSPECIAL_GREEN,2,AG_WINDOW_ANIM_FRAME_START,3);
                set_window_value(AT_FSPECIAL_GREEN,3,AG_WINDOW_ANIM_FRAMES,1);
                set_window_value(AT_FSPECIAL_GREEN,3,AG_WINDOW_ANIM_FRAME_START,4);
                set_window_value(AT_FSPECIAL_GREEN,4,AG_WINDOW_ANIM_FRAMES,2);
                set_window_value(AT_FSPECIAL_GREEN,4,AG_WINDOW_ANIM_FRAME_START,5);
                if free {
                    if axes_num >= 1 {
                        sprite_index = sprite_get("throwgreen_air");
                    } else {
                        sprite_index = sprite_get("throwgreen_air_axeless");
                    }
                    hurtboxID.sprite_index = sprite_get("throwgreen_air_hurt");
                } else {
                    if fspec_jumpstart {
                        if axes_num >= 1 {
                            sprite_index = sprite_get("fspecial_jumpstart");
                        } else {
                            sprite_index = sprite_get("fspecial_jumpstart_axeless");
                        }
                        hurtboxID.sprite_index = sprite_get("fspecial_jumpstart_hurt");
                        image_index = fspec_jumpstart_timer * 0.5;
                    } else if fspec_land_timer > 0 {
                        if axes_num >= 1 {
                            sprite_index = sprite_get("fspecial_land");
                        } else {
                            sprite_index = sprite_get("fspecial_land_axeless");
                        }
                        hurtboxID.sprite_index = sprite_get("fspecial_land_hurt");
                        image_index = 3/fspec_land_timer;
                    } else if hsp == 0 {
                        if axes_num >= 1 {
                            sprite_index = sprite_get("throwgreen");
                        } else {
                            sprite_index = sprite_get("throwgreen_axeless");
                        }
                        hurtboxID.sprite_index = sprite_get("throwgreen_hurt");
                    } else {
                        if axes_num >= 1 {
                            if window == 4 && window_timer >= 20 {
                                sprite_index = sprite_get("walk_norightaxe");
                                image_index = fspec_walk_timer * 0.2;
                                hurtboxID.sprite_index = sprite_get("walk_axeless_hurt");
                            } else {
                                sprite_index = sprite_get("throwgreen_walking");
                                hurtboxID.sprite_index = sprite_get("throwgreen_walking_hurt");
                            }
                        } else {
                            if window == 4 && window_timer >= 20 {
                                sprite_index = sprite_get("walk_axeless");
                                image_index = fspec_walk_timer * 0.2;
                                hurtboxID.sprite_index = sprite_get("walk_axeless_hurt");
                            } else {
                                sprite_index = sprite_get("throwgreen_walking_axeless");
                                hurtboxID.sprite_index = sprite_get("throwgreen_walking_hurt");
                            }
                        }
                    }
                }
            }
            hurtboxID.image_index = image_index;
            break;
    }
}