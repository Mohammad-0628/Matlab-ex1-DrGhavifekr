clc;
clear;

dailyUsage = rand(1,5);

figure;

bar(dailyUsage,'r');

title('Daily Electricity Consumption');
xlabel('Day');
ylabel('Consumption');

grid on;

applianceShare = [22 28 8 33 11];
figure;
pie(applianceShare);
title('Household Electricity Consumption');

highlightSlice = [0 0 0 1 0];
applianceNames = {'Cooling','Water Heater','Lighting','Other Appliances','Charging'};
figure;
pie(applianceShare,highlightSlice,applianceNames);
title('Household Electricity Consumption');