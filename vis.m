 point_cloud = csvread('anivec.csv',1,2);
 tmp = importdata('anivec.csv');
 names = tmp.textdata(2:end,2);

no_dims = 2;
initial_dims = 20;
perplexity = 30;

mappedX = tsne(point_cloud, [], no_dims, initial_dims, perplexity);

gscatter(mappedX(:,1), mappedX(:,2), names);