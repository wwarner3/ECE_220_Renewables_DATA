clc, clear,close all;
%%
%{
reminder must have the following documents downloaded and have a path 
to matlab: USA_Renewables_.xlsx,renewable-share-energy-world.xlsx

*As for graphing the global data, willl need to write a function that 
*either graphs by year or by countries

%}

data =  readmatrix("USA_Renewables_.xlsx","Range","D3:E59");
x = data(:,1);
y = data(:,2);
y2 = max(y);
y3 = min(y);
y4 = mean(y);
y5 = std(y);
y6 = gradient(data);
%%
Global_data = readmatrix("renewable-share-energy-world.xlsx");
A = Global_data(:,1); % Countries
C = Global_data(:,3); % Year 
D = Global_data(:,4); % Percentage
y_2 = max(D);
y_3 = min(D);
y_4 = mean(D);
y_5 = std(D);
y_6 = mean(gradient(D));


tiledlayout(4,1);

% Top plot
nexttile
G_X = categorical({'Max','Min','Mean','Std','Mean Gradient'});
G_X = reordercats(G_X,{'Max','Min','Mean','Std','Mean Gradient'});
G_Y = [y_2 y_3 y_4 y_5 y_6];
bar(G_X,G_Y);
title("Renewables shared energy: Global");
ylabel("% equivalent primary energy")


% second graph
nexttile
X = categorical({'Max','Min','Mean','Std'});
X = reordercats(X,{'Max','Min','Mean','Std'});
Y = [y2 y3 y4 y5];
bar(X,Y);
title("Max,Min,Mean,Std: USA");
ylabel("% equivalent primary energy")

% third graph
nexttile
plot(x,y6);
title("Gradient of the Data USA")

% Bottom Plot
nexttile
plot(x,y,LineStyle="-.");
xlabel("Years");
ylabel("Renewables Percentage");
title("Renewables(% equivalent Primary energy) by the USA")


