%% Generate prototype (thunk) from header file
%
% Compiled Matlab files which use the loadlibrary function to load a shared
% library, cannot use a header file. This file must first be converted
% into a prototype file.  
% (cf. <http://www.mathworks.com/access/helpdesk/help/toolbox/compiler/brb8oui.html>)
% This script does this conversion.
%
% 2015 Alexandre Lopes

this_computer = computer();

% Linux x86-64
if strcmp(this_computer, 'GLNXA64')
    lib_name    = 'lib_linux_test'; % .so extension expected
    header_name = 'lib_linux_test.h';
% Windows x32
elseif strcmp(this_computer, 'PCWIN')
    lib_name    = 'libtest_win32'; % .dll extension expected
    header_name = 'libtest_win32.h';
end

prototype_name = 'lib_prototype.m';

loadlibrary(lib_name, header_name, 'mfilename', prototype_name);
unloadlibrary(lib_name);
