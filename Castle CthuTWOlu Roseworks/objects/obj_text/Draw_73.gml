/// @description Insert description here
// You can write your code in this editor

if hud = false
{
    draw_set_font(f)
    draw_set_alpha(a)
    draw_set_halign(fa_middle)
    draw_set_valign(fa_middle)
    drawText(c1,c2,x/global.camZoom,(y-z)/global.camZoom,t)
    draw_set_alpha(1)
}