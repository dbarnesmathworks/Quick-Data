% Grab the data from a CSV and create the dictionary
Data = readtable("Dictionary.csv","TextType","string");
dict = dictionary(Data.Keys,Data.Values);

% Save the in the toolbox
prj = currentProject;
FullFileAndDestination = prj.RootFolder + "/toolbox/+qd/+internal/" + "Dictionary.mat";

save(FullFileAndDestination,"dict");