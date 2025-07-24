
classdef TestStruct2ContainersDotMap < matlab.unittest.TestCase
    methods (Test)
        function testEmptyStruct(testCase)
            % Test with an empty structure
            MRMStruct = struct();
            MRMContainersDotMap = qd.struct2containersDotMap(MRMStruct);
            testCase.verifyEqual(length(keys(MRMContainersDotMap)), 0, 'The map should be empty for an empty structure.');
        end

        function testNonEmptyStruct(testCase)
            % Test with a non-empty structure
            Attributes = struct();
            Attributes.BatchDiagnostics = '{}';
            Attributes.Diagnostics = '{"row_1":{}}';
            Attributes.Inputs = '{"columns":["AssetName","TargetQuarter"],"index":[0],"data":[["US Large Cap",""]]}';
            Attributes.Outputs = '{"columns":["Dividend","NetBuyback","Valuation","RealGrowth","LocalInflation","TotalReturn"],"index":[0],"data":[[-0.037,-0.018,-0.033,-0.0237,0.0189,-0.091]]}';
            Attributes.Parameters = '{}';

            MRMContainersDotMap = qd.struct2containersDotMap(Attributes);

            % Verify that the keys in the map match the structure fields
            expectedKeys = fieldnames(Attributes);
            actualKeys = keys(MRMContainersDotMap)';
            testCase.verifyEqual(sort(actualKeys), sort(expectedKeys), 'The keys in the map do not match the structure fields.');

            % Verify that the values in the map match the structure values
            for i = 1:length(expectedKeys)
                testCase.verifyEqual(string(MRMContainersDotMap(expectedKeys{i})), string(Attributes.(expectedKeys{i})), ...
                    'The value for %s does not match.');
            end
        end
    end
end