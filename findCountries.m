[num,txt,raw] = xlsread('countryCapitalPosition.xlsx');
countryList = cell(1:1);
j = 1;
for i = 1:200
    latitude = txt(i,3);
    latitude = latitude{:};
    
    lattitudeList = strsplit(latitude, '°');
    integerLattitude = str2double(lattitudeList(1,1));
    if (integerLattitude >= 30 && integerLattitude <= 40 && latitude(end)=='N')
        countryList{j} = txt(i,1);
        j = j+1;
    end
end


    
        