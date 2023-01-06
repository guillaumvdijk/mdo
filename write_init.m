%%%_____Routine to write the input file for the EMWET procedure________% %%

namefile    =    char('Fokker50');
MTOW        =    43090;         %[kg]
MZF         =    35830;         %[kg]
nz_max      =    2.5;   
span        =    28.076;            %[m]
root_chord =    6.05;           %[m]
taper       =    0.235;          
sweep_le    =    25.5;             %[deg]
sweep2_le   =    20.6;
spar_front  =    0.2;
spar_rear   =    0.8;
ftank_start =    0.1;
ftank_end   =    0.70;
E_al        =    7.1E10;       %N/m2
rho_al      =    2800;         %kg/m3
Ft_al       =    4.8E8;        %N/m2
Fc_al       =    4.6E8;        %N/m2
pitch_rib   =    0.5;          %[m]
eff_factor  =    0.96;             %Depend on the stringer type
Airfoil     =    'e553'; 
section_num =    3;
airfoil_num =    2;
wing_surf   =    0.5*root_chord*(1+taper)*span;

fid = fopen( 'Fokker100test.init','wt');
fprintf(fid, '%g %g \n',MTOW,MZF);
fprintf(fid, '%g \n',nz_max);

fprintf(fid, '%g %g %g %g \n',wing_surf,span,section_num,airfoil_num);

fprintf(fid, '0 %s \n',Airfoil);
fprintf(fid, '1 %s \n',Airfoil);
fprintf(fid, '%g %g %g %g %g %g \n',root_chord,0,0,0,spar_front,spar_rear);
fprintf(fid, '%g %g %g %g %g %g \n',root_chord*taper,span/2*tand(sweep_le),span/2,0,spar_front,spar_rear);
fprintf(fid, '%g %g %g %g %g %g \n',root_chord*taper,span/2*tand(sweep_le),span/2,0,spar_front,spar_rear);

fprintf(fid, '%g %g \n',ftank_start,ftank_end);

fprintf(fid, '%g \n', eng_num);

fprintf(fid, '%g %g %g %g \n',E_al,rho_al,Ft_al,Fc_al);
fprintf(fid, '%g %g %g %g \n',E_al,rho_al,Ft_al,Fc_al);
fprintf(fid, '%g %g %g %g \n',E_al,rho_al,Ft_al,Fc_al);
fprintf(fid, '%g %g %g %g \n',E_al,rho_al,Ft_al,Fc_al);

fprintf(fid,'%g %g \n',eff_factor,pitch_rib)
fprintf(fid,'1 \n')
fclose(fid)