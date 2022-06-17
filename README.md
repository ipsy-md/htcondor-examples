# HTCondor examples

## Execute a python script with htcondor

### Variant 01

Python script is executable and can be used directly
needed:
- shebang in python script
- Python script must be exectuable (+x)

### Variant 02
Call script with python

### Variant 03

Use wrapper script (has to be exectuble)


## Excursion: Python script with command line arguments

### `argparse`

included in standard python installation
Docu: https://docs.python.org/3/library/argparse.html

### `click`

Docu: https://palletsprojects.com/p/click/


### `sys`

often used, but not recommended: no checks or documentation of arguments


## Execute a python script that has arguments with htcondor

`example.py` one of the python example scripts from above (with shebang and executable rights)


### Variant 01

Call python script if different arguments

execute with
```
condor_submit test.submit
```

### Variant 02

use shell script to generate submit file via loop to avoid adding arguments manually

run with
```
./generate_submit.sh | condor_submit
```

### Variant 03

use wrapper script instead of calling the python script directly

run with
```
./test_with_arguments_and_wrapper_submit_gen.sh | condor_submit
```

## Generalized wrapper script

To use multiple scripts without having to rewrite a wrapper script for each of them, a generalized wrapper script can be used. This helps in avoiding duplication.

usage of wrapper script:
```
./wrapper_script.sh <script path> <optional script parameter>
```

