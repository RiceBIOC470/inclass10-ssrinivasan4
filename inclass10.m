%Sanjana Srinivasan
%In this directory, you will find some example data, which is a 300x8
%array stored in a .mat file. Image these are measurements for 300 genes are 8 different time
%points
%GB comments
1)100
2)100
3)100
4)100
overall: 100


data = load('example_dat.mat');
%1. Use matlab to perform pca on this data, getting the transformation
%matrix, the transformed data, and the eigenvalues.
[coeff, score, eigenvals]=pca(data.dat);

%2. Look at the eigenvalues - how many dimensions are necessary to explain
%the data? 

%most of the variance can be explained with two eigenvalues.

%3. Using kmeans clustering to cluster the data into 3 clusters. 
% Make a plot of the first coordinate of the raw data vs the second, color coded
% by which cluster it is in. Make the same plot but use the first two
% principle components instead. 
ids=kmeans(data.dat,3);
scatter(data.dat(:,1),data.dat(:,2),10,ids);

scatter(score(:,1),score(:,2),10,ids);

%4. Repeat part 3 but use 7 clusters. Which is a more appropriate number of
%clusters for the data?
ids=kmeans(data.dat,7);
scatter(data.dat(:,1),data.dat(:,2),10,ids);
scatter(score(:,1),score(:,2),10,ids);

%for this data, while three clusters is appropriate for segregating the
%data efficiently. When using three clusters, we can see that visually
%there indeed are three clusters that the data falls into, which are all
%accurately clustered together. When using seven clusters, we can see thatl
%some points that are actually much closer together are being clustered
%seperately, which would suggest that the data is being overfit by this
%point.
