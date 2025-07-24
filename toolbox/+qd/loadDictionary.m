function [output] = loadDictionary()
    % LOADDICTIONARY Function to retrieve a value from a dictionary based on the input key
    %
    % Input Arguments:
    %     input - a string key to look up in the dictionary
    %
    % Output Arguments:
    %     output - the corresponding value from the dictionary

    % Define output argument type
    arguments (Output)
        output dictionary
    end
    
    % Load the dictionary from a specified .mat file
    DictionaryMatFilePath = fileparts(mfilename("fullpath")) + "/+internal/Dictionary.mat";
    load(DictionaryMatFilePath,"dict")
    output = dict;
end