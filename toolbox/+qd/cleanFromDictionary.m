function [output] = cleanFromDictionary(input, optionalDict)
    % CLEANFROMDICTIONARY Function to retrieve a value from a dictionary based on the input key
    %
    % Input Arguments:
    %     input - a string key to look up in the dictionary
    %     optionalDict - (optional) a dictionary to use instead of the default one
    %
    % Output Arguments:
    %     output - the corresponding value from the dictionary

    % Define input argument types
    arguments (Input)
        input (1,1) string
        optionalDict (1,1) dictionary = dictionary() % Default to empty
    end
    % Define output argument type
    arguments (Output)
        output (1,1) string
    end

    % Load the default dictionary if optionalDict is not provided
    if optionalDict.numEntries == 0
        DictionaryMatFilePath = fileparts(mfilename("fullpath")) + "/+internal/Dictionary.mat";
        load(DictionaryMatFilePath, "dict");
        output = dict(input);
    else
        % Use the provided optional dictionary
        output = optionalDict(input);
    end
end
