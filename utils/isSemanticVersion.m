function isValid = isSemanticVersion(branchName)
    % Define regex pattern: start-to-end three numeric parts separated by dots
    pattern = '^\d+\.\d+\.\d+$';  % e.g., 1.2.3, 10.20.30
    % Use regexp with 'once' to test full-match
    isValid = ~isempty(regexp(branchName, pattern, 'once'));
end