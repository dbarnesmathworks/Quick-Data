function flightTable = aerospaceFlightData()
    % AEROSPACEFLIGHTDATA Function to load and organize aerospace flight data
    %
    % Output Arguments:
    %     flightTable - table containing flight data variables

    % Load the flight data from the MAT-file
    load('flightData.mat','courses','heights','latitudes','longitudes','speeds','timeOfArrival');
    % Create a table with the specified variables
    flightTable = table(courses, heights, latitudes, longitudes, speeds, timeOfArrival);
end
