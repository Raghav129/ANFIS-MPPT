clear all
ISCS=5.76;            %% Short circuit current at Panel Name Plate Details
IMPS=5.43;            %% Maximum Current at from Panel Name Plate Details
VOCS=22.2;            %% Open Circuit Voltage from Panel Name Plate Details
VMPS=18.4;            %% Maximu Voltage from Panel Name Plate Details
alpha=0.086998;       %% Current tempearture Coeefficient from manufacture  
beta=-0.36901;        %% Voltage Temperarue Coeefficient from manufacture
Gs= 1000;                               %% Standard Irrandiance 1000 W/m2
Ts=25   ;                               %% Standard Temperature 25 degrees
for i=1:1000
Tmin = 15;
Tmax = 35;
T = (Tmax-Tmin)*rand + Tmin;                                %% Temperature
Gmin = 0;
Gmax = 1000;
G = (Gmax-Gmin)*rand + Gmin;                                %% Irradiance
IMP(i)=IMPS*(G/Gs)*(1+(alpha*(T-Ts)));    
VMP(i)=VMPS+(beta*(T-Ts)) ;               
PMP(i)=VMP(i)*IMP(i) ;                    
input(i,:)=[G T];
output(i,1)=VMP(i);
output1(i,1)=IMP(i);
output2(i,1)=PMP(i);
data(i,:)=[G T output(i,1)];
end

data
