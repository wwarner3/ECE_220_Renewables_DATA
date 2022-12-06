clc, clear, close all;

Global_data = readmatrix("renewable-share-energy-world.xlsx");

A = Global_data(:,1); % Countries
C = Global_data(:,3); % Year 
D = Global_data(:,4); % Percentage

y_2 = max(D);
y_3 = min(D);
y_4 = mean(D);
y_5 = std(D);
y_6 = mean(gradient(D));


% Top plot
nexttile
G_X = categorical({'Max','Min','Mean','Std','Mean Gradient'});
G_X = reordercats(G_X,{'Max','Min','Mean','Std','Mean Gradient'});
G_Y = [y_2 y_3 y_4 y_5 y_6];
bar(G_X,G_Y);
title("Renewables shared energy(Global)");
ylabel("% equivalent primary energy")

%{  

%% have to write a function that bargraphs for either year/or country
%% you can delete the commit to used the graph it still works but 
%% not clear 

% Middle plot
nexttile
plot(C,y6);
title("Gradient of the graph below")

% Bottom Plot
nexttile
plot(C,D,LineStyle="-.");
xlabel("Years");
ylabel("Renewables Percentage");
title("Renewables(% equivalent Primary energy) by the USA");

%}
