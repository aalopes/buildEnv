%% Help for this program
% 
% Alexandre Lopes
% 20.07.2015

% Set functions and tests path
addpath([pwd '/lib/' ]);
addpath([pwd '/tests/' ]);

disp(' Software XYZ ')
disp('(C) 2015 Alexandre Lopes')

disp(' ')

% to do this really neat, check architecture first
% and change forware to back slashes on Windows.
disp('The following functions are available:')
help lib/Contents.m
disp('They reside in:')
fprintf('They reside in %s .\n', [pwd, '/lib/'])

disp(' ')

disp('The following scripts are available:')
ls tests
fprintf('They reside in %s .\n', [pwd, '/lib/'])
