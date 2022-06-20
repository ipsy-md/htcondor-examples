#!/bin/sh
# v3.0

logs_dir=~/htcondor_examples/logs
# create the logs dir if it doesn't exist
[ ! -d "$logs_dir" ] && mkdir -p "$logs_dir"

# print the .submit header
printf "# The environment
universe       = vanilla
getenv         = True
request_cpus   = 1
request_memory = 1G

# Execution
initial_dir    = \$ENV(HOME)
executable     = \$ENV(HOME)/htcondor_examples/with_arguments/wrapper_script.sh
\n"

# create a job for each subject file
for subject in $(seq 1 2); do
    printf "arguments = --subject ${subject}\n"
    printf "log       = ${logs_dir}/\$(Cluster).\$(Process)_subject_${subject}.log\n"
    printf "output    = ${logs_dir}/\$(Cluster).\$(Process)_subject_${subject}.out\n"
    printf "error     = ${logs_dir}/\$(Cluster).\$(Process)_subject_${subject}.err\n"
    printf "Queue\n\n"
done
