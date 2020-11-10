pico-8 cartridge // http://www.pico-8.com
version 29
__lua__
-- annonciation des variables
function _init()
    p1={
        x=40,
        y=105,
        tete=50,
        flipx=false,
        jambe=1
    }
    p2={
        x=80,
        y=105,
        tete=51,
        flipx=false,
        jambe=2,
    }
    a={
    				x=60,
    				y=80,
    				tete=55,
    				jambe=56,
    				tetefaute=51,
    }
    b={
        x=60,
        y=1,
        sprite=3,
    }
   	s={
   	y=40,
   	}
end


-->8
--draw, map et sprites

function _draw()
    cls()
    map(m,0,0,0)
 spr(p1.tete, p1.x, p1.y+8, 1, 1, p1.flipx)
 spr(p1.jambe, p1.x, p1.y, 1, 1, p1.flipx)
 spr(p2.tete, p2.x, p2.y+8, 1, 1, p2.flipx)
 spr(p2.jambe, p2.x, p2.y, 1, 1, p2.flipx)
 spr(b.sprite, b.x, b.y, 1, 1)
 spr(10, 60, s.y+6, 1, 1)
 spr(10, 97, s.y-52, 1, 1)
 spr(10, 75, s.y+6, 1, 1)
 spr(10, 45, s.y+6, 1, 1)
 spr(a.tete, a.x, a.y, 1, 1)
 spr(a.jambe, a.x, a.y+8, 1, 1)
end
-->8
-- mecas

function _update60()
 if b.y<105 then
	 	b.y+=1
 end
	if s.y>65 then
		s.y-=1
		else s.y+=1
	end
  if (btn(➡️,0)) then
  p1.flipx=false
  if p1.x<120 then
    p1.x+=1
  end
 end
  if (btn(⬅️,0)) then
  p1.flipx=true
  if p1.x>0 then
    p1.x-=1
  end
 end
  if (btn(➡️,1)) then
  p2.flipx=true
  if p2.x<120 then
  	p2.x+=1
  end
 end
  if (btn(⬅️,1)) then
  p2.flipx=false
  if p2.x>0 then
   p2.x-=1
  end
 end
 if (btn(⬆️,0)) then
  p1.y-=1
 end
 if (btn(⬆️,1)) then
  p2.y-=1
 end
 if p1.y>80 then
  	a.tete=55
 end
 if (btn(⬇️,0)) then
 p1.y+=1
 end
 if p1.y<80 then
  	a.tete=57
 end 
 if p1.y<0 then
  	m=16
	end
	if p1.y>128 then
  	m=0
	end
--[[ if p2.y>80 then
  	a.tete=55
 end
 if (btn(⬇️,1)) then
 p2.y+=1
 end
 if p2.y<80 then
  	a.tete=57
 end ]]
end
-->8

__gfx__
00000000000000000000000000777700cccccccc00000000ffffffffffffffffeeeeecccccceeeee000ff000000000ccffff5fffcccccccc55cccc5c00000000
0000000000000000000000000779b770cccccccc05757570ffffffffffffffff66666ecccce66666f00ff00f6666660cffffffffcccccccc55cccc5c00000000
00700700000000000000000077c77877cccccccc07575750ffffffffffffffff666666ecce666666f0ffff0f66666660f9ffff9fc9cccc9c55cccc5c00000000
0007700000011000000880007a777717cccccccc05757570fffff5ffffffffff666666ecce6666660ffffff0666666609ffffff99cccccc955cccc5c00000000
0007700000011100008880007d777727cccc777707575750fffffffffffffaff666666ecce66666600ffff0066666660f909909fc909909c55cccc5c00000000
00700700000ee000000ee00077e77377ccc7cccc05757570ffffffffffffffff666666ecce6666660088880066666660ff9999ffcc9999cc55cccc5c00000000
00000000000ee000000ee000077f4770cc7ccccc07575750f5fffffffff5ffff66666ecccce6666600f88f006666660cf9ffff9fc9cccc9c55cccc5c00000000
00000000001111000088880000777700c7cccccc05757570ffffffffffffffffeeeeecccccceeeee00f00f00000000cc9ffffff99cccccc955cccc5c00000000
fff4ffffcccccccccccccccccccccccc060606005656565655555555cccccccccccccccccc000000ffff7fffcccccc9907ccccccffff4fffcc1ccccc00000000
fff4ffff11cc1cc1c1ccc1c1cccccccc6060606065656565ffffffffccccccccccccccccc0666666fff707ffccccc9cc077cccccffff4fffc11ccccc00000000
fff4ffff1c1c1cc1c11cc1cccccccccc0606060056565656ffffffffcccccccccccccccc06666666fff707ffc0990ccc0777ccccffff4fff111ccccc00000000
fff4ffff11cc1cc1c1c1c1cccccccccc6060606065656565ffffffffcccccccccccccccc06666666fff707ffc9999ccc0777ccccffff45ff111ccccc00000000
fff4ffff1ccc1cc1c1cc11cc7777cccc0606060056565656f5ffffffccccccccccc77ccc06666666fff707ffccccc99c0777ccccffff4fff111ccccc00000000
ffffffff1ccc1cc1c1cc11cccccc7ccc6060606065656565ffffffffcccccccccc7cc7cc06666666ff77077fcccccc990777ccccffff4fff111ccccc00000000
fffff5ff1cccc11cc1ccc1ccccccc7cc0606060056565656ffffffffccccccccc7cccc7cc0666666f577077fcccccccc0777ccccf5ff4fffc11ccccc00000000
ffffffffcccccccccccccccccccccc7c0000000065656565ffff5fffcccccccc7cccccc7cc000000ffff0fffcccccccc0cccccccffffffffcc1ccccc00000000
cccccccccccccccccccccccc075757505656565656565656f111111f11111111f666666f66666666f777777ffccccccccccccccfffffffffcccccccc00000000
1111c111111c111c1cc1c111057575706565656565656565111111ffff999ff1666666ffff888ff67fff0ff7ffccccccccccccfffffb3bffcccccccc00000000
c1ccc1c11ccc1c1c11c1c1c107575750565656565656565611fff1ffff99111166fff6ffff886666ffff0ffffffccccccccccffff3bb3bb3ccc1111c00000000
c1ccc1111ccc111c1c11c11105757570656565656565656511ffffffff99111166ffffffff886666ffff0fffffffccccccccffaffb3b3b3bcc17111100000000
c1ccc1c11ccc1c1c1cc1c1c107575750565656565656565611fff1ffff99111166fff6ffff886666ffff0ffffffffccccccffffffbb333bbcc11111100000000
c1ccc1c11ccc1c1c1cc1c1c1057575706565656565656565111111ffff999ff1666666ffff888ff6ffff0fffffffffccccfffffff3334333cc11111100000000
c1ccc1c1111c1c1c1cc1c1c10757575056565656565656561111111f111111116666666f66666666f5ff0fffffff5ffccfffffffffff4fffccc1111100000000
cccccccccccccccccccccccc057575706565656565656565f11111111111111ff66666666666666fffff0fffffffffffffff5fffffff4fffcccccccc00000000
cccc4ccccccccccc011111100888888000000000755555579999999900000000009999000000000066664448888888885fffffff844466668888888800000000
cccc4ccccccb3bcc10111101808888080000000057555575999999990000000000999900000000004446444884444444f5ffffff844464444444444800000000
cccc4cccc3bb3bb3e011110ee088880e000000005c7557c599999999000ee00000900900000ee0004446444884444444ff5fffff844464444444444800000000
cccc4ccccb3b3b3b0077770000777700000000005557755599999999000ee00000e00e00000ee0084444644884444444ffffffff844644444444444800000000
cccc4ccccbb333bb0077770000777700000000005857758599999999009999000dd00dd0009999084444644884444444ffffffff844644444444444800000000
cccc4cccc3334333007007000070070000000000887557889999999909999990000000000999999e4444644884444444ffffffff844644444444444800000000
cccc4ccccccc4ccc00e00e0000e00e000000000057555575999999999099990900000000909999004444444884444444ffffffff844444444444444800000000
cccc4ccccccc4ccc0050050000500500000000007555555799999999e099990e00000000e09999008888888884444444ffffffff888888884444444800000000
11cc1111888888888666666666666668555555557755557766666666888888888888888888888888c00000000000000c00000000cccccc0000cccccc76666616
1c1c1cc1666666686866666666666686555555555555555566666666666666866866666666666666c07777777777770c07777770cccc00777700ccccc7666666
1c1c1cc1666666686686666666666866555555555555555566666666666668666686666666666666c07cccc77cccc70c07cccc70cc0077c77c7700cccc761666
11cc1111666666686668666666668666555555555555555566666666666686666668666666666666c07cccc77cccc70c07cccc70c077ccc77ccc770cccc77777
1ccc1cc1666666686666866666686666555555555555555566666666666866666666866666666666c07cccc77cccc70c07cccc70c07cccc77cccc70ccccccccc
1ccc1cc1666666686666686666866666555555555555555566666666668666666666686666666666c07cccc77cccc70c07cccc70c07cccc77cccc70ccccccc1c
1ccc1cc1666666686666668668666666555555555555555566666666686666666666668666666666c07cccc77cccc70c07cccc70c07cccc77cccc70ccccccccc
1ccc1cc1666666686666666886666666775555776666666666666666866666666666666866666666c07777777777770c07777770c07777777777770cccc1ccc1
c1cc1c11888888888666666556666668cccccccc55ffff5ccccccccc66666666575555755575575566666667ccccccccccccccccccc00ccc66666666cccccccc
c1cc1c1c866666666866666556666686cccccccc55ffff5ccccccccc6111111657555575557557556666667ccccccccccccccccccc0660cc16111161cccccccc
c11c1c1c866666666686666556666866cccccccc55ffff5ccccccccc611111165555555555555555661667cccccccccccccccccccc0110cc1611116177cccc77
c1c11c11866666666668666556668666cccccccc55fff55ccccccccc61111116555555555555555577777cccccccccccccccccccc061160c16111161cc7cc7cc
c1cc1c1c866666666666866556686666cccccccc55ff555ccccccccc611111165555555555555555cccccccc77777cccccc77777c061160c16111161ccc55ccc
c1cc1c1c866666666666686556866666cccccccc55f55f5cc0000ccc611111165555555555555555cc1ccccc666667cccc766666c061160c16111161cccccccc
c1cc1c1c866666666666668558666666cccccccc5555ff5c07cc70cc611111165555555555555555cccccccc6666667cc76666660611116016111161cccccccc
c1cc1c1c866666666666666886666666cccccccc555fff5c0c77c0cc611111165555555555555555cc1ccccc66666667766666660611116016111161cccccccc
11c11ccc8888888888888888cccccc55cccccccc5ffffff50c77c0cc60cccccccccccc06ccccccc00ccccccc06666660666666666666666666666666cccccccc
c1c1c1c16666666666666666cccccc55cccccccc5ffffff507cc70cc60cccccccccccc06ccccccc00ccccccc06111160616116161611116161111116cccccc1c
c1c1cc1c6666665555666666cccccc55cccccccc5ffffff5c0000ccc60cccccccccccc06ccccccc00ccccccc06111160616116161611116161111116cccccccc
11c1cccc6666669999666666cccccc55cccccccc5ffffff5cccccccc60cccccccccccc06ccccccc00ccccccc06111160616116161611116161111116cccccccc
c1c1cccc6666669999666666cccccc55cccccccc5ffffff5cccccccc60cccccccccccc06ccccccc00ccccccc06111160616116161611116161111116c1cccccc
c1c1cccc6666669999666666cccccc55cccccccc5ffffff5cccccccc60cccccccccccc06ccccccc00ccccccc06111160616116161611116161111116cccccccc
c1c1cccc6666666556666666cccccc555555555555555555555555cc60cccccccccccc06ccccccc00ccccccc06111160616116161611116161111116cccccc1c
c1c1cccc6666666556666666cccccc5555555555555555555555555c60cccccccccccc06ccccccc00ccccccc06111160616116161611116161111116cccccccc
11c111cc5ffffff5cc0000ccccccc000ccccccccccccccccc06666666666660ccc066666666660ccccc0666666660ccc6660cccccccc0666660cccccccccc066
c1c1cccc5ffffff5cc0cccccccc00000ccccccccccccccccc06111111111160ccc061111111160ccccc0611111160ccc1160cccccccc0611160cccccccccc061
c1c1cccc5ffffff5ccc000000000cccc5555555555555555c06111111111160ccc061111111160ccccc0611111160ccc1160cccccccc0611160cccccccccc061
c1c11ccc5ffffff5ccccccc0c0ccccccccccccc00cccccccc06111111111160ccc061111111160ccccc0611111160ccc1160cccccccc0611160cccccccccc061
c1c1cccc5f0000f5cccccc0ccc0ccccccccc00000000ccccc06111111111160ccc061111111160ccccc0611111160ccc1160cccccccc0611160cccccccccc061
c1c1cccc5f0660f5ccccc0ccccc0ccccccc0ff0ccccc0cccc06111111111160ccc061111111160ccccc0611111160ccc1160cccccccc0611160cccccccccc061
c1c1cccc5f0660f55555555555555555cc0fff0cccccc0ccc06111111111160ccc061111111160ccccc0611111160ccc1160cccccccc0611160cccccccccc061
c1c111cc5f0660f55555555555555555cc0fff0cccccc000c06111111111160ccc061111111160ccccc0611111160ccc1160cccccccc0611160cccccccccc061
55ffff5cfccc4ccccccc4ccffccccccc075757506363636363636363636363636363636363636363636363636363636363636363636363636363636363636363
55ffff5cffcc4ccccccc4cffffcccccc057575706363636363636363636363636363636363636363636363636363636363636363636363636363636363636363
55ffff5cfffc4ccccccc4ffffffccccc075757506363636363636363636363636363636363636363636363636363636363636363636363636363636363636363
55fff55cffff4ccccccc4fffffffcccc057575706363636363636363636363636363636363636363636363636363636363636363636363636363636363636363
55ff555cffff4ccccccf4ffffffffccc075757506363636363636363636363636363636363636363636363636363636363636363636363636363636363636363
55f5555cffff4fccccff4f5fffffffcc057575706363636363636363636363636363636363636363636363636363636363636363636363636363636363636363
5555555cfffffffccfffffffffff5ffc075757506363636363636363636363636363636363636363636363636363636363636363636363636363636363636363
5555555cffffffffffffffffffffffff000000006363636363636363636363636363636363636363636363636363636363636363636363636363636363636363
63636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363
63636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363
63636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363
63636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363
63636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363
63636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363
63636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363
63636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363
63636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363
63636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363
63636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363
63636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363
63636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363
63636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363
63636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363
63636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363
63636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363
63636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363
63636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363
63636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363
63636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363
63636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363
63636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363
63636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363
63636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363
63636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363
63636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363
63636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363
63636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363
63636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363
63636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363
63636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363
63636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363
63636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363
63636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363
63636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363
63636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363
63636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363
63636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363
63636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363
63636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363
63636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363
63636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363
63636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363
63636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363
63636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363
63636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363
63636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363
63636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363
63636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363
63636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363
63636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363
63636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363
63636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363
63636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363
63636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363
__map__
111220171717170413170d1717171717405060705c5b54545d545c5b545f5454353535353535353535353535353535353535353535353535353535353535353535353535353535363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636
21221717171b1c1717171717171c0d17545f0d174f5a545f6b544f5a54747556353535353535353535353535353535353535353535353535353535353535353535353535353535363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636
1717171717190b171717171709081717544d4c4c4e5454696e6a6f5464727366353535353551515151515135353535353535353535353535353535353535353535353535353535363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636
17041317171717171717171717041317174a4c4c4b545f686d67546365656555353535353551515151515135353535353535353535353535353535353535353535353535353535363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636
17172e1e1704131717171717172e1e17174a4c4c4b54547f6d7e5f6365656555353535353551515151515135353535353535353535353535353535353535353535353535353535363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636
2b31171717171717041317171717312c174a4c4c4b545f7d5e7c546365656555353535353551515151515135353535353535353535353535353535353535353535353535353535363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636
0781311717170d171717171717178206174a4c4c4b54547a577b5f6365656555353535353551515151515135353535353535353535353535353535353535353535353535353535363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636
2a0681181818181818181818182c070c174a4c4c4b5454785779546365656555353535353535353535353535353535353535353535353535353535353535353535353535353535363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636
2627062b18181818181818182c072a06174a4c4c4b1717765777546365656555353535353535353535353535353535353535353535353535353535353535353535353535353535363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636
070c07062b1818181818182c07282906314a4c4c4b3131765777316365656580353535353535353535353535353535353535353535353535353535353535353535353535353535363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636
1a06062d061a063b3e3c2d0606062d07624748616247483b3e47486162474861353535353535353535353535353535353535353535353535353535353535353535353535353535363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636
0706061d0c06063d3a061d1a060c1d07534151525341513d3a41515253415152353535353535353535353535353535353535353535353535353535353535353535353535353535363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636
050606060606063c063c06060706060505444444444444444444444444444405353535353535353535353535353535353535353535353535353535353535353535353535353535363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636
2306060706060606060706070606062323454545454545454545454545454523353535353535353535353535353535353535353535353535353535353535353535353535353535363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636
8407060606060707060606060707068484444444444444444444444444444484353535353535353535353535353535353535353535353535353535353535353535353535353535363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636
1616161616161616161616161616161645454545454545454545454545454545353535353535353535353535353535353535353535353535353535353535353535353535353535363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636
3636363636363635353538383838383838383838383838383838353535353535353535353535353535353535353535353535353535353535353535353535353535353535353535363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636
3636363636363635353538383838383838383838383838383838353535353535353535353535353535353535353535353535353535353535353535353535353535353535353535363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636
3636363636363635353538383838383838383838383838383838353535353535353535353535353535353535353535353535353535353535353535353535353535353535353535363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636
3636363636363635353538383838383801340238383838383838353535353535353535353535353535353535353535353535353535353535353535353535353535353535353535363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636
3636363636363635353538383838383832343338383838383838353535353535353535353535353535353535353535353535353535353535353535353535353535353535353535363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636
3636363636363635353538383838383838383838383838383838353535353535353535353535353535353535353535353535353535353535353535353535353535353535353535363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636
3636363636363635353535353535353535353535353535353535353535353535353535353535353535353535353535353535353535353535353535353535353535353535353535363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636
3636363636363635353535353535353535353535353535353535353535353535353535353535353535353535353535353535353535353535353535353535353535353535353535363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636
3636363636363635353535353535353535353535353535353535353535353535353535353535353535353535353535353535353535353535353535353535353535353535353535363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636
3636363636363635353535353535353535353535353535353535353535353535353535353535353535353535353535353535353535353535353535353535353535353535353535363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363600000000000000000000
3636363636363635353535353535353535353535353535353535353535353535353535353535353535353535353535353535353535353535353535353535353535353535353535363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363600000000000000000000
3636363636363635353535353535353535353535353535353535353535353535353535353535353535353535353535353535353535353535353535353535353535353535353535363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363600000000000000000000
3636363636363635353535353535353535353535353535353535353535353535353535353535353535353535353535353535353535353535353535353535353535353535353535363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363600000000000000000000
3636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636
3636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636
3636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636
