%[text] # Simple Examples
%[text] These are some of the main functions in this toolbox.
%%
%[text] This uses a pre-created dictionary to transform some strings into cleaner forms. I have used this approach when cleaning a table of values where the input was free form, but I wanted a standard format. For example, if you were cleaning the name of a company where someone worked from a table of information, people can put all kinds of variations in the free text. But I wanted a simple formation, such as "MathWorks", "Mathworks", "MathWorks Inc.", "MATLAB", etc. to all be simply "mathworks". 
% Clean the dictionary by changing "apples" to "oranges"
cleanValue = qd.cleanFromDictionary("MathWorks Inc.") %[output:3c2bd3af]
%%
%[text] Sometimes when I am using a large dataset, I want a small sample to do some testing with, but I do not want merely "head" since I tend to have sorted my data already. This function allows me to grab random rows in a table to have a better understanding of the types of things in the data.
% Load a table for showing how to use qd.headRand
load("CreditCardData.mat","data")
% Get a random sample from the data
randomSample = qd.headRand(data) %[output:7efffc58]
%%
%[text] The number of times I need a unique value are numerous, but I never remember how to call the internal MATLAB function or an older way using Java (java.util.UUID.randomUUID()). Instead, I just have my simple function to give me a unique value that has a simple syntax for one or many unique strings.
% Generate a new UUID
newUUID = qd.uuid %[output:2510c1df]

severalNewUUIDs = qd.uuid(5) %[output:29415ac0]
%[text] 

%[appendix]{"version":"1.0"}
%---
%[metadata:view]
%   data: {"layout":"inline","rightPanelPercent":40}
%---
%[output:3c2bd3af]
%   data: {"dataType":"textualVariable","outputData":{"name":"cleanValue","value":"\"mathworks\""}}
%---
%[output:7efffc58]
%   data: {"dataType":"tabular","outputData":{"columnNames":["CustID","CustAge","TmAtAddress","ResStatus","EmpStatus","CustIncome","TmWBank","OtherCC","AMBalance","UtilRate","status"],"columns":11,"dataTypes":["double","double","double","categorical","categorical","double","double","categorical","double","double","double"],"header":"8×11 table","name":"randomSample","rows":8,"type":"table","value":[["978","46","15","Tenant","Unknown","37000","64","No","411.0100","0.1600","1"],["1087","50","14","Tenant","Employed","42000","66","Yes","229.8900","0.0300","0"],["153","26","26","Home Owner","Unknown","25000","75","Yes","1.0454e+03","0.5700","0"],["1094","43","39","Tenant","Unknown","33000","72","No","1.1150e+03","0.3500","0"],["757","38","27","Home Owner","Unknown","20000","16","Yes","118.0700","0.0500","0"],["117","50","71","Home Owner","Employed","44000","95","Yes","1.2413e+03","0.1000","0"],["333","34","73","Other","Unknown","18000","57","Yes","1.2204e+03","0.0700","1"],["653","56","105","Other","Unknown","50000","33","No","2.0028e+03","0.0400","0"]]}}
%---
%[output:2510c1df]
%   data: {"dataType":"textualVariable","outputData":{"name":"newUUID","value":"\"91413b65-b70b-40d4-979c-65b5fff65b6d\""}}
%---
%[output:29415ac0]
%   data: {"dataType":"matrix","outputData":{"columns":1,"header":"5×1 string array","name":"severalNewUUIDs","rows":5,"type":"string","value":[["7cc6a2a0-f034-4950-b5af-e5ab4780b485"],["494b1b36-d737-40f6-be4f-c1b103e5e8b3"],["298a9b88-6854-4156-885a-0ebf992df0a5"],["2ea5dd20-503a-47a1-9386-ef7a8fdb604e"],["ed067f32-db1a-4c92-8eed-48666581ca9e"]]}}
%---
