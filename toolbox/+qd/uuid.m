function UUIDs = uuid(numbUUID)
    %UUID Generate a specified number of UUIDs as a vertical string array.
    %   UUIDS = uuid(numbUUID) generates numbUUID UUIDs. Default is 1.

    arguments
        numbUUID (1,1) {mustBePositive, mustBeInteger} = 1; % Default value is 1
    end

    % Generate UUIDs
    UUIDs = strings(numbUUID, 1); % Initialize a vertical string array
    for i = 1:numbUUID
        UUIDs(i) = matlab.lang.internal.uuid; % Generate each UUID
    end
end