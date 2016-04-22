point_cloud = csvread('n30.csv',1,2);
init;

[I J] = rca1pc(point_cloud,20);
figure;plotpersistencediagram(I);
figure;plotpersistencediagram(J);