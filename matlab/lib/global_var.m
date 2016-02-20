% Global variables.
%
% Author: Alexandre Lopes

global X
global Y
global Z
global DEBUG

% X      - some random global variable
% Y      - idem 
% Z      - idem 
% DEBUG  - set debug mode

% This variable will be overwritten every time this file is included.
Y = 10;

% Since this m-file is included by several functions, let us avoid
% redefining the timeout if it has already been defined. That way one can
% redefine it in another script if desired (ideally this would be done
% with all other variables in this m-file but that is unnecessary).
if isempty(X)
    X = 20;
end

if isempty(Z)
    Z = 3;
end

if isempty(DEBUG)
    DEBUG = 0;
end
