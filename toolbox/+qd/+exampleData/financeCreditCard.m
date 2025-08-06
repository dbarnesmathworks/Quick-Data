function data = financeCreditCard()
    % FINANCECREDITCARD Function to load credit card data from a .mat file
    %
    % Output Arguments:
    %     data - variable containing the credit card data loaded from the file

    % Load the 'data' variable from the CreditCardData.mat file
    load("CreditCardData.mat", "data");
end