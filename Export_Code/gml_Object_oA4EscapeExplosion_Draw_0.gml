if (!fadeout)
{
    draw_set_blend_mode(bm_add)
    draw_sprite_ext(sprite_index, -1, x, y, image_xscale, image_yscale, image_angle, -1, image_alpha)
    draw_sprite_ext(sprite_index, -1, x, y, (image_xscale * -1), image_yscale, image_angle, -1, image_alpha)
    draw_sprite_ext(sprite_index, -1, x, y, (image_xscale * -1), (image_yscale * -1), image_angle, -1, image_alpha)
    draw_sprite_ext(sprite_index, -1, x, y, image_xscale, (image_yscale * -1), image_angle, -1, image_alpha)
    draw_set_blend_mode(bm_normal)
}
draw_set_blend_mode(bm_add)
draw_set_color(c_white)
draw_set_alpha(whitealpha)
draw_rectangle((view_xview[0] - (oControl.widescreen_space / 2)), view_yview[0], ((view_xview[0] + view_wview[0]) + (oControl.widescreen_space / 2)), (view_yview[0] + view_hview[0]), false)
draw_set_alpha(1)
draw_set_blend_mode(bm_normal)
