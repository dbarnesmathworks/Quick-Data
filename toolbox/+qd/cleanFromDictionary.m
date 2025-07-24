function [output] = cleanFromDictionary(input)
    % CLEANFROMDICTIONARY Function to retrieve a value from a dictionary based on the input key
    %
    % Input Arguments:
    %     input - a string key to look up in the dictionary
    %
    % Output Arguments:
    %     output - the corresponding value from the dictionary

    % Define input argument type
    arguments (Input)
        input (1,1) string
    end
    % Define output argument type
    arguments (Output)
        output (1,1) string
    end
    % Load the dictionary from a specified .mat file
    DictionaryMatFilePath = fileparts(mfilename("fullpath")) + "/+internal/Dictionary.mat";
    load(DictionaryMatFilePath,"dict")
    % Retrieve the value associated with the input key from the dictionary
    output = dict(input);
end