%[text] %[text:anchor:T_D1086FBF] # Getting Started with Quick Data Toolbox
%[text] This toolbox provides some utility functions for doing data analysis.
%[text:tableOfContents]{"heading":"Contents"}
%[text] %[text:anchor:H_74932593] ## System Requirements
%[text] This toolbox can be used in R2022b and later.
%[text] %[text:anchor:H_A1C07DCD] ## Features
%[text] Here are examples of each main functions in this toolbox:
% Clean the dictionary by changing "apples" to "oranges"
cleanValue = qd.cleanFromDictionary("apples") %[output:138719c3]
% Load a table for showing how to use qd.headRand
load("CreditCardData.mat","data")
% Get a random sample from the data
randomSample = qd.headRand(data) %[output:245628b5]
% Generate a new UUID
newUUID = qd.uuid %[output:170685cf]

%[appendix]{"version":"1.0"}
%---
%[metadata:view]
%   data: {"layout":"inline","rightPanelPercent":40}
%---
%[output:138719c3]
%   data: {"dataType":"textualVariable","outputData":{"name":"cleanValue","value":"\"oranges\""}}
%---
%[output:245628b5]
%   data: {"dataType":"tabular","outputData":{"columnNames":["CustID","CustAge","TmAtAddress","ResStatus","EmpStatus","CustIncome","TmWBank","OtherCC","AMBalance","UtilRate","status"],"columns":11,"dataTypes":["double","double","double","categorical","categorical","double","double","categorical","double","double","double"],"header":"8×11 table","name":"randomSample","rows":8,"type":"table","value":[["978","46","15","Tenant","Unknown","37000","64","No","411.0100","0.1600","1"],["1087","50","14","Tenant","Employed","42000","66","Yes","229.8900","0.0300","0"],["153","26","26","Home Owner","Unknown","25000","75","Yes","1.0454e+03","0.5700","0"],["1094","43","39","Tenant","Unknown","33000","72","No","1.1150e+03","0.3500","0"],["757","38","27","Home Owner","Unknown","20000","16","Yes","118.0700","0.0500","0"],["117","50","71","Home Owner","Employed","44000","95","Yes","1.2413e+03","0.1000","0"],["333","34","73","Other","Unknown","18000","57","Yes","1.2204e+03","0.0700","1"],["653","56","105","Other","Unknown","50000","33","No","2.0028e+03","0.0400","0"]]}}
%---
%[output:170685cf]
%   data: {"dataType":"textualVariable","outputData":{"name":"newUUID","value":"\"61f21c01-628d-4fec-a70d-31d68a8949e5\""}}
%---
