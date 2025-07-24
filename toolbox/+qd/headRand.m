function randomRows = headRand(T, numRows)
    % HEADRAND Function to select random rows from a table
    %
    % Input Arguments:
    %     T - input table from which to select rows
    %     numRows - number of random rows to select (default is 8)
    %
    % Output Arguments:
    %     randomRows - table containing the selected random rows

    arguments
        T table
        numRows (1,1) {mustBePositive, mustBeInteger} = 8 
    end
    % Get the total number of rows in the table
    totalRows = height(T);
    % Generate random row indices
    randomIndices = randperm(totalRows, min(numRows, totalRows));
    % Select the random rows from the table
    randomRows = T(randomIndices, :);

end
