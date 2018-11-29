program Sniper;
uses crt,graph;
var
gd,gm,x,x1,i,select,Plpoint,P2point,Pl1point,Pl2point,y:integer ;
Sshoot,delayshoot,Xshoot,point,Ytarget,bullets,player, st:integer;
hit:word;
b:char;
direct,p,bu,pi:string;
shoot,exitg:boolean;
procedure M_target;
begin
if direct='down' then
begin
direct:='down' ;
setcolor (9) ;
line(600,Ytarget,600,Ytarget+70) ;
line(599,Ytarget,599,Ytarget+70) ;
line(598,Ytarget,598,Ytarget+70) ;
line(601,Ytarget,601,Ytarget+70) ;
line(602,Ytarget,602,Ytarget+70) ;
Ytarget:=Ytarget+1;
setcolor(0);line(600,0,600,320);
setcolor(15) ;
line(600,Ytarget,600,Ytarget+10) ;
line(599,Ytarget,599,Ytarget+10);line(598,Ytarget,598,Ytarget+10) ;
setcolor(1) ;
line(600,Ytarget+10,600,Ytarget+20) ;
line(599,Ytarget+10,599,Ytarget+20);line( 598,Ytarget+10,598,Ytarget+20) ;
setcolor(2) ;
line (600,Ytarget+20,600,Ytarget+30) ;
line(599,Ytarget+20,599,Ytarget+30);line(598,Ytarget+20,598,Ytarget+30) ;
setcolor(4);
line(600,Ytarget+30,600,Ytarget+40) ;
line(599,Ytarget+30,599,Ytarget+40);line(598,Ytarget+30,598,Ytarget+40) ;
setcolor (2) ;
line(600,Ytarget+40,600,Ytarget+50) ;
line(599,Ytarget+40,599,Ytarget+50);line(598,Ytarget+10,598,Ytarget+50) ;
setcolor (1);
line(600,Ytarget+50,600,Ytarget+60) ;
line(599,Ytarget+50,599,Ytarget+60);line(598,Ytarget+50,598,Ytarget+60) ;
setcolor(15) ;
line(600,Ytarget+60,600,Ytarget+70) ;
line(599,Ytarget+60,599,Ytarget+70);line(598,Ytarget+60,598,Ytarget+70) ;
setcolor(15) ;
rectangle ( 601,Ytarget,602,Ytarget+70) ;
if shoot=true then
begin
if delayshoot=500 then delay(500);
if delayshoot=100 then delay(900);
end;
if shoot=false then
 delay(1000) ;
if Ytarget=249 then direct:='up';
end;
if direct='up' then
begin
direct:='up' ;
setcolor(9) ;
line(600,Ytarget,600,Ytarget+70) ;
line(599,Ytarget,599,Ytarget+70) ;
line(598,Ytarget,598,Ytarget+70) ;
line(601,Ytarget,601,Ytarget+70) ;
line(602,Ytarget,602,Ytarget+70) ;
Ytarget:=Ytarget-1;
setcolor(0);line(600,0,600,320) ;
setcolor(15) ;
line(600,Ytarget,600,Ytarget+10) ;
line(599,Ytarget,599,Ytarget+10);line(598,Ytarget,598,Ytarget+10) ;
setcolor(1);
line(600,Ytarget+10,600,Ytarget+20) ;
line(599,Ytarget+10,599,Ytarget+20);line(598,Ytarget+10,598,Ytarget+20) ;
setcolor(2) ;
line (600,Ytarget+20,600,Ytarget+30) ;
line(599,Ytarget+20,599,Ytarget+30);line(598,Ytarget+20,598,Ytarget+30) ;
setcolor(4 ) ;
line(600,Ytarget+30,600,Ytarget+40) ;
line(599,Ytarget+30,599,Ytarget+40);line(598,Ytarget+30,598,Ytarget+40) ;
setcolor(2) ;
line ( 600,Ytarget+40,600,Ytarget+50) ;
line(599,Ytarget+40,599,Ytarget+50);line(598,Ytarget+40,598,Ytarget+50) ;
setcolor (1);
line(600,Ytarget+50,600,Ytarget+60) ;
line (599, Ytarget+50, 599, Ytarget+60);line(598,Ytarget+50,598,Ytarget+60 ) ;
setcolor(15) ;
line (600,Ytarget+60,600,Ytarget+70) ;
line(599,Ytarget+60,599,Ytarget+70);line(598,Ytarget+60,598,Ytarget+70) ;
setcolor (15);
rectangle(601,Ytarget,602,Ytarget+70) ;
if shoot=true then
begin
if delayshoot=500 then delay(500);
if delayshoot=100 then delay(900);
end;
if shoot=false then
delay(1000) ;
if Ytarget=0 then direct :='down';
end;
end;
procedure fire;
begin
if Xshoot=585 then
begin
hit:=getpixel(599,200) ;
case hit of
red:point:=point+1000;
green:point:=point+500;
blue:point:=point+250 ;
white:point:=point+100;

end;
end;
if Xshoot<=640 then
begin
Xshoot:=Xshoot+5;
setcolor(0) ;
rectangle (Xshoot,200,Xshoot+5,201) ;
delay(delayshoot) ;
setcolor(9) ;
rectangle (Xshoot,200,Xshoot+5,201) ;
shoot:=true;
end;
if Xshoot>=640 then
begin
Xshoot:=110;
shoot:=false;
end;
end;
procedure game(player,shertcolor:integer) ;
begin
exitg:=false;
setfillstyle(1,15) ;
floodfill(320,240,1);
setcolor(0) ;
line(59,190,60,195);
line(56,190,57,195) ;
line(59,190,56,190) ;
circle(58,199,4) ;
circle(58,199,2);line(66,190,54, 190);
line(54,190,50,192);
line(49,196,50,200);
line(51,201,52,206);
line(56,205,57,203);
line(67,196,68,198);
line(50,192,49,196);
line(50,200,51,201);
line(52,206,56,205);
line(66,192,67,196);
line(68,198,66,206);
line(66,190,66,192);line(66,192,60,195);
line(66,206,62,206);line(62,206,62, 208);
line(108,197,94,198);line(94,198 , 94,200 ) ;
line(94,200,108,200);line(108,200,108,197);
line(100,200,100,202);line (100,202,98,202);
line(98,202,96,206);
line(94,206,88,210);
line(81,211,78,214);
line(72,214,68,218);
line(94,200,93,202);
line(76,205,74,206);
line(80,206,76,205);
line(76,205,74,206);
line(70,208,62,208);
line(66,208,53,207);
line(53,207,50,210);
line(96,206,94,206);
line(88,210,81,211);
line(78,214,72,214);
line(68,218,63,220);
line(93,202,86,202);
line(80,206,86,202);
line(74,206,70,208);
line(62,208,60,208);
line(53,207,53,206);
line(50,210,49,216);
line(49,216,50,220);line(50,220,56,232);
line(56,232,62,232);
line(68,231,69,226);
line(70,220,70,216);
line(82,214,87,212);
line(90,210,94,206);
line(74,206,76,214);
line(54,238,54,252);
line(42,254,41,264);
line(62,262,62,256);
line(67,242,78,242);
line(80,250,78,258);
line(88,257,87,234);
line(62,232,68,231);
line(69,226,70,220);
line(79,213,82,214);
line(87,212,90,210);
line(63,207,69,208);
line(56,232,54,238);
line(54,252,42,254);
line(41,264,62,262);
line(62,256,68,238);
line(78,242,80,250);
line(78,258,88,257);
line(87,234,74,230);
line(74,230,68,231);line(42,256,38,255);
line(38,255,30,266);line(30,266,41,262);
line(81,258,81,264);line ( 81,264,95,264);
line(95,264,86,257);
setfillstyle(1,0);floodfill (53,192,0) ;
floodfill(62,191,0) ;
setfillstyle(1,1);floodfill(60,240,0) ;
setfillstyle(1,9);floodfill(58,198,0) ;
floodfill(58,192,0) ;
setfillstyle(1,8) ;floodfill (100,199,0);
setfillstyle(1,shertcolor);floodfill(60,220,0) ;
{Sniper end)}
line(0,265,120,265);line (120,265,120,480);
line(520,320,640,320);line(520,320,520,480);
line (600,0,600,320);{Tarqet line}
setfillstyle(1,7);floodfill(50,340,0) ;
floodfill(560,350,0) ;
setfillstyle(1,9);floodfill(320,100,0);{skay}
floodfill(70,250,0);floodfill(40,264,0);{skay}
floodfill(620, 150,0) ;
line(120,340,520,340) ;
setfillstyle(1, 1) ; floodfill ( 320, 360, 0) ;
setcolor(0) ;
settextstyle(2,0,4);outtextxy(10,5,'Player');
outtextxy(10,15,'Points');
outtextxy(10,25,'Bullets');
Ytarget:=165;
direct:='up';
delayshoot:=500;
Sshoot:=0;
shoot:=false;
Xshoot:=110;
point:=0;
bullets:=20;
repeat
if keypressed then
begin
b:=readkey;
if b=' ' then
begin
if shoot=false then
begin
bullets:=bullets-1;
sound (1000) ;
delay(1700) ;
nosound;
delay(500) ;
sound(1500) ;
delay(900) ;
nosound;
end;
fire;
end;
if (b='s')  then
Sshoot:=Sshoot+1;
end;
if shoot=true then
fire;
if Sshoot=40 then
begin
setcolor(4);outtextxy(10,25,'Bullets');
delay(5000);setcolor(0);outtextxy(10,25,'Bullets');
delayshoot:=100;
Sshoot:=0;
end;
setfillstyle(1, 9) ;
bar(50,2,90,40) ;
setcolor(0) ;
str(point,p) ;
str(player,pi) ;
str (bullets,bu) ;
outtextxy(60,5,PI) ;
outtextxy(60, 15, p) ;
outtextxy(60,25,bu) ;
M_target;
if bullets=-1 then exitg:=true;
if b=#27 then exitg:=true;
until exitg=true;
end;
procedure oneplayer;
begin
clearviewport ;
point:=0;
setcolor(15) ;
settextstyle(1,0,4);
outtextxy(280,200,'Player 1');
outtextxy(270,250,'get ready');
readln;
game(1,4);
clearviewport;
Pl1point:=point;
str(Pl1point,p) ;
setcolor (15) ;
settextstyle(1,0,3) ;
outtextxy(180,200,'Your Point =');
outtextxy(350,200,p) ;
readln;
st:=0;
end;
procedure towplayers;
begin
clearviewport;
point:=0;
setcolor (15) ;
settextstyle(1,0,4);
outtextxy(280,200,'Player 1');
outtextxy(270,250,'get ready');
readln;
clearviewport;
game(1,4) ;
clearviewport;
Pl1point:=point;
str(Pl1point,p) ;
setcolor(15) ;
settextstyle(1,0,3);
outtextxy(180,200,'Your Point =');
outtextxy(350,200,p) ;
readln;
clearviewport;
point:=0;
setcolor(15) ;
settextstyle(1,0,4);
outtextxy(280,200,'Player 2');
outtextxy(270,250,'get ready');
readln;
clearviewport ;
game(2,3) ;
clearviewport;
Pl2point:=point;
str(Pl2point,p) ;
setcolor(15);
settextstyle(1,0,3) ;
outtextxy(180,200,'Your Point =');
outtextxy(350,200,p) ;
readln;
st:=0;
clearviewport;
if Pl1point>Pl2point then
begin
settextstyle(1,0,3);
setcolor(15) ;
outtextxy(200,150,'PI') ;
str(Pl1point,p) ;
outtextxy(250,150,P) ;
outtextxy(200,200,'P2') ;
str(Pl2point,P) ;
outtextxy(250,200,P) ;
outtextxy(180,300,'Player One Wins');
readln;
end
else
if Pl1point<Pl2point then
begin
settextstyle(1,0,3);
setcolor(15) ;
outtextxy(200,150,'PI') ;
str(Pl1point,P) ;
outtextxy(250,150,P) ;
outtextxy(200,200,'P2');
str(Pl2point,P) ;
outtextxy(250,200,P) ;
outtextxy(180,300,'Player Two Wins');
readln;
end
else
begin
settextstyle(1,0,3);
setcolor(15) ;
outtextxy(200,150,'PI') ;
str(Pl1point,P) ;
outtextxy(250,150,P) ;
outtextxy(200,200,'P2') ;
str(Pl2point,P) ;
outtextxy(250,200,P) ;
outtextxy(180,300,'Game is Tied');
readln;
end
end;
procedure abaut;
begin
setfillstyle(1,15) ;
floodfill(320,240,1) ;
settextstyle(8,0,1);
y:=500;
repeat
y:=y-5;
setcolor(4) ;
outtextxy(270,y,'The Sniper');
setcolor(1);
outtextxy(240,y+30,'TEAM MANAGEER') ;
outtextxy(245,y+60,'GAME DESIGNER') ;
setcolor(0) ;
outtextxy(260,y+80,'Omar Farok');
setcolor(1);
outtextxy(190,y+110,'GRAPHICS DESIGN & WORK');
setcolor(0) ;
outtextxy(260,y+130,'Omar Farok') ;
outtextxy(258,y+150,'Ra`ed Hussen');
setcolor(1) ;
outtextxy(245,y+180,'SOUND ASSISET') ;
setcolor (0) ;
outtextxy (260, y+200, 'Omar Farok' ) ;
outtextxy (250, y+220, 'Mu`aeid Hatam' ) ;
setcolor(1);
outtextxy(234,y+250,'GAME CONTROLER') ;
setcolor(0) ;
outtextxy(260,y+270,'Omar Farok') ;
outtextxy(250,y+290,'Zaied A.Alsatar') ;
setcolor(1);
outtextxy(170,y+320,'GAME TESTING & MAINTINANCE');
setcolor(0) ;
outtextxy(260,y+340,'Omar Farok');
outtextxy(250,y+360,'Ahmed Yassein') ;
setcolor(1);
outtextxy(240,y+390,'SPECIAL THANKS') ;
setcolor(0) ;
outtextxy(230,y+410,'MSC.ZAINAB KASSIM') ;
outtextxy(270,y+430,'M.ZAINAB') ;
setcolor(1);
outtextxy(235,y+460,'MAIN PROGRAMER') ;
setcolor(0) ;
outtextxy(260,y+480,'Omar Farok') ;
setcolor(2) ;
outtextxy(210,y+520,'2005 All Right Resevid');
delay(4500) ;
setcolor(15) ;
outtextxy(270,y,'The Sniper');
outtextxy(240,y+30,'TEAM MANAGEER') ;
outtextxy(245,y+60,'GAME DESIGNER') ;
outtextxy(260,y+80,'Omar Farok');
outtextxy(190,y+110,'GRAPHICS DESIGN & WORK');
outtextxy(260,y+130,'Omar Farok') ;
outtextxy(258,y+150,'Ra`ed Hussen');
outtextxy(245,y+180,'SOUND ASSISET') ;
outtextxy(260,y+200,'Omar Farok');
outtextxy(250,y+220,'Mu`aeid Hatam');
outtextxy(234,y+250,'GAME CONTROLER') ;
outtextxy(260,y+270,'Omar Farok') ;
outtextxy(250,y+290,'Zaied A.Alsatar');
outtextxy (170,y+320,'GAME TESTING & MAINTINANCE');
outtextxy(260, y+340, 'Omar Farok') ;
outtextxy (250, y+360, 'Ahmed Yassein' ) ;
outtextxy(240,y+390,'SPECIAL THANKS') ;
outtextxy(230,y+410, 'MSC.ZAINAB KASSIM') ;
outtextxy(270,y+430,'M.ZAINAB') ;
outtextxy(235,y+460,'MAIN PROGRAMER') ;
outtextxy(260,y+480,'Omar Farok');
outtextxy(210,y+520,'2005 All Right Resevid');
until y=-600;
setcolor(0) ;
settextstyle(3,0,2) ;
outtextxy(150,200,'For more details vesite ours web site');
outtextxy(200,240,'http://www.game soft.corn' ) ;
readln;
st:=0;
end;
procedure tmark;
begin
settextstyle(7,0,5) ;
for x:=690 downto 190 do
begin
setcolor(9) ;
outtextxy(x,200,'G');
delay(70) ;
setcolor(0) ;
outtextxy(x,200,'G') ;
end;
setcolor (9) ;
outtextxy(x,200,'G') ;
for x:=690 downto 210 do
begin
setcolor(9);
outtextxy(x,200,'A') ;
delay(70) ;
setcolor (0) ;
outtextxy(x,200,'A');
end;
setcolor(9) ;
outtextxy(x,200,'A');
for x:=690 downto 240 do
begin
setcolor(9) ;
outtextxy(x,200,'M');
delay(70) ;
setcolor(0);
outtextxy(x,200,'M');
end;
setcolor(9);
outtextxy(x,200,'M') ;
for x:=690 downto 270 do
begin
setcolor(9) ;
outtextxy(x,200,'E');
delay(70) ;
setcolor(0) ;
outtextxy(x,200,'E') ;
end;
setcolor(9) ;
outtextxy(x,200,'E');
for x:=690 downto 315 do
begin
setcolor(9) ;
outtextxy(x,200,'S');
delay(70) ;
setcolor(0);
outtextxy(x,200,'S');
end;
setcolor (9) ;
outtextxy(x,200,'S') ;
for x:=690 downto 343 do
begin
setcolor(9) ;
outtextxy(x,200,'0');
delay(70) ;
setcolor(0) ;
outtextxy (x,200,'0') ;
end;
setcolor(9) ;
outtextxy(x,200,'0') ;
for x:=690 downto 365 do
begin
setcolor(9) ;
outtextxy(x,200,'F');
delay(70) ;
setcolor(0) ;
outtextxy(x,200,'F') ;
end;
setcolor(9) ;
outtextxy(x,200,'F') ;
for x:=690 downto 395 do
begin
setcolor(9) ;
outtextxy (x, 200, 'T' ) ;
delay(70) ;
setcolor(0) ;
outtextxy (x, 200, 'T' ) ;
end;
setcolor(9) ;
outtextxy (x, 200, 'T' ) ;
x1:=310;setcolor(4) ;
for x:=310 downto 170 do
begin
line(x,250,x1,250) ;
delay(30) ;
x1:=x1+1;
end;setcolor(2) ;
for x:=258 to 270 do
begin
line(180,x,440,x) ;
delay(30) ;
end;
settextstyle(2,0,5) ;
setcolor(0);outtextxy(190,255,'For Computer Programes & Games');
settextstyle(7,0,2);setcolor(12);outtextxy(270,285,'Prisent') ;
delay(60000);
delay(60000);
delay(60000);
clearviewport ;
settextstyle(4,0,6);
setcolor(4) ;
outtextxy(190,180,'The Sniper') ;
settextstyle(2,0,7) ;
outtextxy(140,250,'Copy Right') ;
circle(270,260,10);outtextxy(266, 248 , 'C') ;
outtextxy(285,250,'All Right Resived');
outtextxy(280,280,'2005');
delay(60000);
delay(60000);
delay(60000);
for x:=1 to 500 do
begin
for i:=1 to 1220 do
begin
putpixel(random(360)+130,random(115)+190,0) ;
delay(0) ;
end;
end;
end;
procedure start;
begin
setcolor(15) ;
for i:=1 to 390 do
circle(350,180,i) ;
setcolor(9) ;
i:=0;
setcolor(9) ;
repeat
i:=i+10;
circle(350,180,i) ;
until i=380;
line (0,180,640,180);line(350,0,350,480) ;
setcolor(4) ;
for i:=1 to 130 do
begin
delay(100) ;
line(5,i,150,i) ;
end;
setcolor (14) ;
for x:= 20 to 130 do
begin
circle(x,20,10) ;
delay(100) ;
end;
for x:=20 to 130 do
begin
circle(x,50,10) ;
delay(100) ;
end;
for x:=20 to 130 do
begin
circle(x,80,10) ;
delay(100) ;
end;
for x:=20 to 130 do
begin
circle(x,110,10) ;
delay(100) ;
end;
settextstyle(2,0,5) ;
setcolor (4 ) ;outtextxy (26, 10, 'Single player' ) ;
setcolor (8) ;outtextxy (29, 40, 'Tow Players ' ) ;
outtextxy(28,70,'Abaut Sniper');outtextxy(33,100,'Exit Game') ;
end;
procedure VOption;
begin
case select of
1:begin
setcolor(4);outtextxy(26,10,'Single player') ;
setcolor(8);outtextxy(29,40,'Tow Players');
outtextxy(28,70,'Abaut Sniper');outtextxy(33,100,'Exit Game') ;
end;
2:begin
setcolor(8);outtextxy(26,10,'Single player');
setcolor (4) ;outtextxy(29,40, 'Tow Players ') ; setcolor (8) ;
outtextxy(28,70,'Abaut Sniper');outtextxy(33,100,'Exit Game');
end;
3:begin
setcolor(8);outtextxy(26,10,'Single player');
outtextxy(29,40,'Tow Players');setcolor(4);
outtextxy(28,70,'Abaut Sniper') ;
setcolor(8);
outtextxy(33,100,'Exit Game');
end;
4:begin
setcolor(8);outtextxy(26,10,'Single player');
outtextxy(29,40,'Tow Players');
outtextxy(28,70,'Abaut Sniper');
setcolor (4) ;
outtextxy(33,100,'Exit Game');
end;
end;
end;
begin
gd:=detect;
initgraph(gd,gm, '');
st:=0;
tmark;
repeat
if st=0 then clearviewport ;
if st=0 then start;
if st=0 then select:=1;
st:=1;
b:=readkey;
if b=#0 then
begin
b:=readkey;
case b of
'H':begin
select:=select-1;
if select=0 then select:=4 ;
VOption;
end;
'P':begin
select:=select+1;
if select=5 then select:=1;
VOption;
end;
end;
end;
if b=#13 then
begin
case select of
1:oneplayer;
2:towplayers;
3:abaut;
end;
end;
until (b=#13) and (select=4);
closegraph;
end.
