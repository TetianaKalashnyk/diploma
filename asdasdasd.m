function shos
global ax1
par1 = zeros(1,16);
function take (hObject, eventdata)
% global Number_of_patient
       Get_Number = str2num(get(Number_of_patient,'string'));
       [par, Y]= search_open_file_next(Get_Number,par1);
       
       par1 = par;
       
       left_kidney_param_1.String = par1(1);
       left_kidney_param_2.String = par1(3);
       left_kidney_param_3.String = par1(5);
       left_kidney_param_4.String = par1(7);
       left_kidney_param_5.String = par1(9);
       left_kidney_param_6.String = par1(11);
       left_kidney_param_7.String = par1(13);
       left_kidney_param_8.String = par1(15);
       
       right_kidney_param_1.String = par1(2);
       right_kidney_param_2.String = par1(4);
       right_kidney_param_3.String = par1(6);
       right_kidney_param_4.String = par1(8);
       right_kidney_param_5.String = par1(10);
       right_kidney_param_6.String = par1(12);
       right_kidney_param_7.String = par1(14);
       right_kidney_param_8.String = par1(16);
end

f = figure;
 ax1 = axes('Position',[0.10 0.3 0.55 0.65]);
 
pos_Num = [0.79 0.10 0.07 0.04 ];
Number_of_patient = uicontrol(f,'Units','normalized', 'style','Edit','position',pos_Num,'callback',@take);

Button_choise = uicontrol( f,'style','pushbutton','Units','normalized','callback',@take);
Button_choise.Position = [0.79 0.05 0.07 0.04 ];
Button_choise.String = 'Choise Patient';
Button_choise.BackgroundColor = [0.8 0.75 0.72] ;


left_kidney_background = uipanel(f, 'Position',[0.10 0.05 0.20 0.20 ],'Units','normalized',...
                                    'Title','Left kidney','TitlePosition','centertop','FontSize',12);
left_kidney_title_param_1 = uicontrol(left_kidney_background,'style','text','units','normalized','position',[0.048 0.75 0.15 0.11 ],'string','Tmax');
left_kidney_title_param_2 = uicontrol(left_kidney_background,'style','text','units','normalized','position',[0.048 0.55 0.15 0.11 ],'string','E30');
left_kidney_title_param_3 = uicontrol(left_kidney_background,'style','text','units','normalized','position',[0.048 0.35 0.15 0.11 ],'string','W');
left_kidney_title_param_4 = uicontrol(left_kidney_background,'style','text','units','normalized','position',[0.048 0.15 0.15 0.11 ],'string','T1/2');
left_kidney_title_param_5 = uicontrol(left_kidney_background,'style','text','units','normalized','position',[0.565 0.75 0.15 0.11 ],'string','T1/2max');
left_kidney_title_param_6 = uicontrol(left_kidney_background,'style','text','units','normalized','position',[0.565 0.55 0.15 0.11 ],'string','GFR');
left_kidney_title_param_7 = uicontrol(left_kidney_background,'style','text','units','normalized','position',[0.565 0.35 0.15 0.11 ],'string','CKD');
left_kidney_title_param_8 = uicontrol(left_kidney_background,'style','text','units','normalized','position',[0.565 0.15 0.15 0.11 ],'string','ERPF');

left_kidney_param_1 = uicontrol(left_kidney_background,'style','edit','units','normalized','position',[0.248 0.75 0.22 0.11 ],'string','0');
left_kidney_param_2 = uicontrol(left_kidney_background,'style','edit','units','normalized','position',[0.248 0.55 0.22 0.11 ],'string','0');
left_kidney_param_3 = uicontrol(left_kidney_background,'style','edit','units','normalized','position',[0.248 0.35 0.22 0.11 ],'string','0');
left_kidney_param_4 = uicontrol(left_kidney_background,'style','edit','units','normalized','position',[0.248 0.15 0.22 0.11 ],'string','0');
left_kidney_param_5 = uicontrol(left_kidney_background,'style','edit','units','normalized','position',[0.765 0.75 0.22 0.11 ],'string','0');
left_kidney_param_6 = uicontrol(left_kidney_background,'style','edit','units','normalized','position',[0.765 0.55 0.22 0.11 ],'string','0');
left_kidney_param_7 = uicontrol(left_kidney_background,'style','edit','units','normalized','position',[0.765 0.35 0.22 0.11 ],'string','0');
left_kidney_param_8 = uicontrol(left_kidney_background,'style','edit','units','normalized','position',[0.765 0.15 0.22 0.11 ],'string','0');

left_kidney_background.BackgroundColor = [0.71 0.72 0.79] ;



right_kidney_background = uipanel(f, 'Position',[0.45 0.05 0.20 0.20 ],'Units','normalized',...
                                    'Title','Right kidney','TitlePosition','centertop','FontSize',12);
right_kidney_title_param_1 = uicontrol(right_kidney_background,'style','text','units','normalized','position',[0.048 0.75 0.15 0.11 ],'string','Tmax');
right_kidney_title_param_2 = uicontrol(right_kidney_background,'style','text','units','normalized','position',[0.048 0.55 0.15 0.11 ],'string','E30');
right_kidney_title_param_3 = uicontrol(right_kidney_background,'style','text','units','normalized','position',[0.048 0.35 0.15 0.11 ],'string','W');
right_kidney_title_param_4 = uicontrol(right_kidney_background,'style','text','units','normalized','position',[0.048 0.15 0.15 0.11 ],'string','T1/2');
right_kidney_title_param_5 = uicontrol(right_kidney_background,'style','text','units','normalized','position',[0.565 0.75 0.15 0.11 ],'string','T1/2max');
right_kidney_title_param_6 = uicontrol(right_kidney_background,'style','text','units','normalized','position',[0.565 0.55 0.15 0.11 ],'string','GFR');
right_kidney_title_param_7 = uicontrol(right_kidney_background,'style','text','units','normalized','position',[0.565 0.35 0.15 0.11 ],'string','CKD');
right_kidney_title_param_8 = uicontrol(right_kidney_background,'style','text','units','normalized','position',[0.565 0.15 0.15 0.11 ],'string','ERPF');

right_kidney_param_1 = uicontrol(right_kidney_background,'style','edit','units','normalized','position',[0.248 0.75 0.22 0.11 ],'string','0');
right_kidney_param_2 = uicontrol(right_kidney_background,'style','edit','units','normalized','position',[0.248 0.55 0.22 0.11 ],'string','0');
right_kidney_param_3 = uicontrol(right_kidney_background,'style','edit','units','normalized','position',[0.248 0.35 0.22 0.11 ],'string','0');
right_kidney_param_4 = uicontrol(right_kidney_background,'style','edit','units','normalized','position',[0.248 0.15 0.22 0.11 ],'string','0');
right_kidney_param_5 = uicontrol(right_kidney_background,'style','edit','units','normalized','position',[0.765 0.75 0.22 0.11 ],'string','0');
right_kidney_param_6 = uicontrol(right_kidney_background,'style','edit','units','normalized','position',[0.765 0.55 0.22 0.11 ],'string','0');
right_kidney_param_7 = uicontrol(right_kidney_background,'style','edit','units','normalized','position',[0.765 0.35 0.22 0.11 ],'string','0');
right_kidney_param_8 = uicontrol(right_kidney_background,'style','edit','units','normalized','position',[0.765 0.15 0.22 0.11 ],'string','0');

right_kidney_background.BackgroundColor = [0.71 0.72 0.79] ;
end
