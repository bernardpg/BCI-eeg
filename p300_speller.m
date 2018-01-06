%%frame_rate (每次閃的時間)

%%trial (實驗刺激數)

%%sound :25 (聽到25個子母的其中五個)

function p300_speller()

clc

clear all

exp_alphabet

end

%顯示字母(黑底 先灰階再變白字(framerate)) %gui (調控實驗)

function exp_alphabet()

clear global all

global wptr wrect;

sti_sc=0.015;

iti_sc=0.05;

size_char=80;text_color_old=125;text_color_new=255;

[wptr,wrect]=Screen('OpenWindow',0,0);%numberofbuffer flip 暫存

x=300;y=0;

Screen('TextSize',wptr,size_char);

Screen('TextColor',wptr,text_color_old);

initial(wptr,x,y,size_char,text_color_old);

%Screen('TextBackgroundColor',wptr,[125,0,0,50]); 字的背景色

%Screen('Flip',wptr);%使用於前後台設定(換frame)

Screen('Flip',wptr);

a=shuffle();%row_column_stimulus

start=GetSecs;%精準時間stay 3 秒

WaitSecs('UntilTime',start+3);

rand_begin(wptr,x,y,size_char,text_color_old,text_color_new,a,sti_sc,iti_sc);

%Screen('Flip',wptr);

Screen('Close',wptr);

end

function a=shuffle()

for j=1:100

a(j)=j;

end

for i=1:100

tmp=a(i);

ans=rem(randi(65536),101-i)+1;

a(i)=a(ans);

a(ans)=tmp;

end

end

function rand_begin(wptr,x,y,size_char,text_color_old,text_color_new,a,sti_sc,iti_sc)%shuffl

for i=1:100

if rem(a(i),10) ==0

sti_row_1(wptr,x,y,size_char,text_color_old,text_color_new);

Screen('Flip',wptr);

WaitSecs(sti_sc);

initial(wptr,x,y,size_char,text_color_old);

Screen('Flip',wptr);

WaitSecs(iti_sc);

elseif rem(a(i),10)==1

sti_row_2(wptr,x,y,size_char,text_color_old,text_color_new);

Screen('Flip',wptr);

WaitSecs(sti_sc);

initial(wptr,x,y,size_char,text_color_old);

Screen('Flip',wptr);

WaitSecs(iti_sc);

elseif rem(a(i),10)==2

sti_row_3(wptr,x,y,size_char,text_color_old,text_color_new);

Screen('Flip',wptr);

WaitSecs(sti_sc); initial(wptr,x,y,size_char,text_color_old);

Screen('Flip',wptr);

WaitSecs(iti_sc);

elseif rem(a(i),10)==3

sti_row_4(wptr,x,y,size_char,text_color_old,text_color_new);

Screen('Flip',wptr);

WaitSecs(sti_sc);

initial(wptr,x,y,size_char,text_color_old);

Screen('Flip',wptr);

WaitSecs(iti_sc);

elseif rem(a(i),10)==4

sti_row_5(wptr,x,y,size_char,text_color_old,text_color_new);

Screen('Flip',wptr);

WaitSecs(sti_sc);

initial(wptr,x,y,size_char,text_color_old);

Screen('Flip',wptr);

WaitSecs(iti_sc);

elseif rem(a(i),10)==5

column_1(wptr,x,y,size_char,text_color_old,text_color_new);

Screen('Flip',wptr);

WaitSecs(sti_sc);

initial(wptr,x,y,size_char,text_color_old);

Screen('Flip',wptr);

WaitSecs(iti_sc);

elseif rem(a(i),10)==6

column_2(wptr,x,y,size_char,text_color_old,text_color_new);

Screen('Flip',wptr);

WaitSecs(sti_sc);

initial(wptr,x,y,size_char,text_color_old);

Screen('Flip',wptr);

WaitSecs(iti_sc);

elseif rem(a(i),10)==7

column_3(wptr,x,y,size_char,text_color_old,text_color_new);

Screen('Flip',wptr);

WaitSecs(sti_sc);

initial(wptr,x,y,size_char,text_color_old);

Screen('Flip',wptr);

WaitSecs(iti_sc);

elseif rem(a(i),10)==8

column_4(wptr,x,y,size_char,text_color_old,text_color_new);

Screen('Flip',wptr);

WaitSecs(sti_sc);

initial(wptr,x,y,size_char,text_color_old);

Screen('Flip',wptr);

WaitSecs(iti_sc);

elseif rem(a(i),10)==9

column_5(wptr,x,y,size_char,text_color_old,text_color_new);

Screen('Flip',wptr);

WaitSecs(sti_sc);

initial(wptr,x,y,size_char,text_color_old);

Screen('Flip',wptr);

WaitSecs(iti_sc);

end

end

end

function initial(wptr,x,y,size_char,text_color_old)

row_old_1(wptr,x,y,size_char,text_color_old);

row_old_2(wptr,x,y,size_char,text_color_old);

row_old_3(wptr,x,y,size_char,text_color_old);

row_old_4(wptr,x,y,size_char,text_color_old);

row_old_5(wptr,x,y,size_char,text_color_old);

end

function sti_row_1(wptr,x,y,size_char,text_color_old,text_color_new)

initial(wptr,x,y,size_char,text_color_old);

Screen('TextColor',wptr,text_color_new);

row_old_1(wptr,x,y,size_char,text_color_new);

end

function sti_row_2(wptr,x,y,size_char,text_color_old,text_color_new)

initial(wptr,x,y,size_char,text_color_old);

Screen('TextColor',wptr,text_color_new);

row_old_2(wptr,x,y,size_char,text_color_new);

end

function sti_row_3(wptr,x,y,size_char,text_color_old,text_color_new)

initial(wptr,x,y,size_char,text_color_old);

Screen('TextColor',wptr,text_color_new);

row_old_3(wptr,x,y,size_char,text_color_new);

end

function sti_row_4(wptr,x,y,size_char,text_color_old,text_color_new)

initial(wptr,x,y,size_char,text_color_old);

Screen('TextColor',wptr,text_color_new);

row_old_4(wptr,x,y,size_char,text_color_new);

end

function sti_row_5(wptr,x,y,size_char,text_color_old,text_color_new)

initial(wptr,x,y,size_char,text_color_old);

Screen('TextColor',wptr,text_color_new);

row_old_5(wptr,x,y,size_char,text_color_new);

end

function column_1(wptr,x,y,size_char,text_color_old,text_color_new)

initial(wptr,x,y,size_char,text_color_old);

Screen('TextColor',wptr,text_color_new);

Screen('DrawText',wptr,'A',x,y);

Screen('DrawText',wptr,'F',x,y+size_char*2);

Screen('DrawText',wptr,'K',x,y+size_char*4);

Screen('DrawText',wptr,'P',x,y+size_char*6);

Screen('DrawText',wptr,'U',x,y+size_char*8);

end

function column_2(wptr,x,y,size_char,text_color_old,text_color_new)

initial(wptr,x,y,size_char,text_color_old);

Screen('TextColor',wptr,text_color_new);

Screen('DrawText',wptr,'B',x+size_char*2,y);

Screen('DrawText',wptr,'G',x+size_char2,y+size_char2);

Screen('DrawText',wptr,'L',x+size_char2,y+size_char4);

Screen('DrawText',wptr,'Q',x+size_char2,y+size_char6);

Screen('DrawText',wptr,'V',x+size_char2,y+size_char8);

end

function column_3(wptr,x,y,size_char,text_color_old,text_color_new)

initial(wptr,x,y,size_char,text_color_old);

Screen('TextColor',wptr,text_color_new);

Screen('DrawText',wptr,'C',x+size_char*4,y);

Screen('DrawText',wptr,'H',x+size_char4,y+size_char2);

Screen('DrawText',wptr,'M',x+size_char4,y+size_char4);

Screen('DrawText',wptr,'R',x+size_char4,y+size_char6);

Screen('DrawText',wptr,'W',x+size_char4,y+size_char8);

end

function column_4(wptr,x,y,size_char,text_color_old,text_color_new)

initial(wptr,x,y,size_char,text_color_old);

Screen('TextColor',wptr,text_color_new);

Screen('DrawText',wptr,'D',x+size_char*6,y);

Screen('DrawText',wptr,'I',x+size_char6,y+size_char2);

Screen('DrawText',wptr,'N',x+size_char6,y+size_char4);

Screen('DrawText',wptr,'S',x+size_char6,y+size_char6);

Screen('DrawText',wptr,'X',x+size_char6,y+size_char8);

end

function column_5(wptr,x,y,size_char,text_color_old,text_color_new)

initial(wptr,x,y,size_char,text_color_old);

Screen('TextColor',wptr,text_color_new);

Screen('DrawText',wptr,'E',x+size_char*8,y);

Screen('DrawText',wptr,'J',x+size_char8,y+size_char2);

Screen('DrawText',wptr,'O',x+size_char8,y+size_char4);

Screen('DrawText',wptr,'T',x+size_char8,y+size_char6);

Screen('DrawText',wptr,'Y',x+size_char8,y+size_char8);

end

function row_old_1(wptr,x,y,size_char,text_color_old)

Screen('TextColor',wptr,text_color_old);

Screen('DrawText',wptr,'A',x,y);

Screen('DrawText',wptr,'B',x+size_char*2,y);

Screen('DrawText',wptr,'C',x+size_char*4,y);

Screen('DrawText',wptr,'D',x+size_char*6,y);

Screen('DrawText',wptr,'E',x+size_char*8,y);

end

function row_old_2(wptr,x,y,size_char,text_color_old)

Screen('TextColor',wptr,text_color_old);

Screen('DrawText',wptr,'F',x,y+size_char*2);

Screen('DrawText',wptr,'G',x+size_char2,y+size_char2);

Screen('DrawText',wptr,'H',x+size_char4,y+size_char2);

Screen('DrawText',wptr,'I',x+size_char6,y+size_char2);

Screen('DrawText',wptr,'J',x+size_char8,y+size_char2);

end

function row_old_3(wptr,x,y,size_char,text_color_old)

Screen('TextColor',wptr,text_color_old);

Screen('DrawText',wptr,'K',x,y+size_char*4);

Screen('DrawText',wptr,'L',x+size_char2,y+size_char4);

Screen('DrawText',wptr,'M',x+size_char4,y+size_char4);

Screen('DrawText',wptr,'N',x+size_char6,y+size_char4);

Screen('DrawText',wptr,'O',x+size_char8,y+size_char4);

end

function row_old_4(wptr,x,y,size_char,text_color_old)

Screen('TextColor',wptr,text_color_old);

Screen('DrawText',wptr,'P',x,y+size_char*6);

Screen('DrawText',wptr,'Q',x+size_char2,y+size_char6);

Screen('DrawText',wptr,'R',x+size_char4,y+size_char6);

Screen('DrawText',wptr,'S',x+size_char6,y+size_char6);

Screen('DrawText',wptr,'T',x+size_char8,y+size_char6);

end

function row_old_5(wptr,x,y,size_char,text_color_old)

Screen('TextColor',wptr,text_color_old);

Screen('DrawText',wptr,'U',x,y+size_char*8);

Screen('DrawText',wptr,'V',x+size_char2,y+size_char8);

Screen('DrawText',wptr,'W',x+size_char4,y+size_char8);

Screen('DrawText',wptr,'X',x+size_char6,y+size_char8);

Screen('DrawText',wptr,'Y',x+size_char8,y+size_char8);

end