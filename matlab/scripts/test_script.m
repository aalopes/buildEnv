%% Test script
%
% Alexandre Lopes
% 01.09.2015

% Set functions path
% If run after running start.m, the pwd will be one level above,
% and this addpath will fail. Therefore we disable temporarily the warning.
if (~isdeployed)
    warning('off', 'MATLAB:dispatcher:pathWarning');
    addpath([pwd '/../lib/' ]);
    warning('on', 'MATLAB:dispatcher:pathWarning');
end

global DEBUG
DEBUG = 0; % set to 1 for debugging
global_var;

if DEBUG == 0
    fprintf('Debug mode enabled! \n');
end

% Code should come here!
