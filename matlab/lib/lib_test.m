function lib_test(x, y)
% LIB_TEST Uses an external C library to multiply two numbers.
%
% lib_test(x,y)
%
% Author: Alexandre Lopes

% Date:   27.08.2015

global X, Y, Z, DEBUG
global_var;

if DEBUG == 0
    %% Initialize system 
    this_computer = computer();

    % Linux x86-64
    if strcmp(this_computer, 'GLNXA64')
       lib_name    = 'lib_linux_test'; % .so extension expected
       header_name = 'lib_linux_test.h';
       
    % Windows 32-bits
    elseif strcmp(this_computer, 'PCWIN')
        lib_name    = 'libtest_win32'; % .dll extension expected
        header_name = 'libtest_win32.h';
    else
        error('Sorry but there is no library available for your architecture: %s!', this_computer);
    end

    if not(libisloaded(lib_name))
        % for compiled applications
        if isdeployed
            loadlibrary(lib_name, @lib_prototype);
        else
            loadlibrary(lib_name, header_name);
        end
    end


    [res, err] = calllib(lib_name, 'multiply', x, y);

    if(err == -1)
        error('Library returned an error!');
    end
else
    fprintf('Debugging mode ... \n')
    fprintf('Not doing anything! n')
