function [MRMContainersDotMap] = struct2containersDotMap(MRMStruct)
    %STRUCT2CONTAINERDOTMAP Convert a structure to a containers.Map
    %
    % Input Arguments:
    %     MRMStruct - Input structure to be converted
    %
    % Output Arguments:
    %     MRMContainersDotMap - A Map object containing the structure's fields and values

    arguments (Input)
        MRMStruct struct % Define input argument as a structure
    end
    arguments (Output)
        MRMContainersDotMap containers.Map % Define output argument as a Map
    end
    MRMContainersDotMap = containers.Map; % Initialize the Map
    fields = convertCharsToStrings(fieldnames(MRMStruct)); % Get field names as strings
    for values = 1:length(fields) % Iterate over each field
        MRMContainersDotMap(fields(values)) = MRMStruct.(fields(values)); % Map field name to its value
    end
end 