canbeX = 0
zeta_head[0] = ds_map_find_value(global.zeta_heads, room)
zeta_head[1] = asset_get_index((sprite_get_name(zeta_head[0]) + "_Roar"))
makeActive()
setCollisionBounds(-10, -30, 10, 43)
myhealth = global.mod_zetahealth
flashing = 0
stunned = 0
fxtimer = 0
canbehit = 1
hpush = 7
vpush = -3
damage = global.mod_zetadamage
damagedealt = 0
givebackhp = 200
starthealth = myhealth
hits_taken = 0
limit_right = 544
limit_left = 112
targetx2 = 0
target_mode = 0
blur = 0
roaring = 0
noswipe = 0
swiping = 0
canswipe = 0
mask_obj = instance_create(x, y, oMZetaBodyMask)
surf = surface_create(160, 128)
surf_x = 80
surf_y = 80
image_speed = 0
facing = 1
state = 0
statetime = 0
xoff = 0
yoff = 0
body_obj = instance_create(x, y, oMZetaShield)
body_spr = 580
body_frame = 0
body_x = 0
body_y = 0
body_angle = 0
body_angle_base = 0
body_target_angle = 0
body_angle_max = 25
body_angle_min = -25
head_obj = instance_create(x, y, oMZetaHead)
head_spr = zeta_head[0]
head_follow = 1
head_frame = 0
head_x = 0
head_y = 0
head_xoff = 0
head_yoff = 0
head_len = 46
head_dir = 39
head_angle = 0
head_target_angle = 0
head_angle_max = 45
head_angle_min = -45
mouth_x = 0
mouth_y = 0
mouth_len = 21
mouth_dir = -77
farm_spr = 584
farm_frame = 0
farm_x = 0
farm_y = 0
farm_xoff = 0
farm_len = 28
farm_dir = 25
barm_spr = 575
barm_frame = 0
barm_x = 0
barm_y = 0
barm_xoff = 0
barm_len = 32
barm_dir = 21
fleg_spr = 586
bleg_spr = 576
fleg_frame = 0
bleg_frame = 0
legx = 0
legy = 0
targetx = 0
targety = 0
alarm[3] = 1
alarm[9] = 1
scan_log(14, get_text("ScanEvents", "ScanBioform"), 180, 0)
dead = 0
if instance_exists(oClient)
{
}
myposx = floor((x / 320))
myposy = floor(((y - 8) / 240))
mapposx = (myposx + global.mapoffsetx)
mapposy = (myposy + global.mapoffsety)
if (oControl.ZetaBlur != -1 && oControl.mod_fusion == 1)
    ZetaBlurSprite = oControl.ZetaBlur
else
    ZetaBlurSprite = 595
