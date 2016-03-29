Simple library for testing {#mainpage}
====================

Libtest
-----------------------------
Some simple library just to get our build env to work.

Directores
----------

| Directory  |                   Description                    |
|------------|--------------------------------------------------|
| bin        | this is where compiled tests end up              |
| doc        | where doxygen documentation ends up              |
| doxygen    | doxygen configuration files / external docs      |
| include    | contains header files                            |
| lib        | this is where compiled libraries end up          |
| src        | source files for the wrapper                     |
| unit_tests | source files for tests based                     |

Other
----------
Markdown works with Doxygen, which is pretty cool...

The Doxygen code command works here as well:
@code
int main(){

}

@endcode

Note that when using a custom main page in doxygen, to avoid having it showing 
in the tree view as a separate page, name it as your PROJECT_NAME, and this way,
the top level of the tree view will have the same name of the page and the two 
will be merged. For example, this page should be called _Simple library for 
testing_ while the project name should be _Library name_. By matching the two,
this page will disapear from the tree view (but show when clicking the top level
element).

2015 Alexandre Lopes
