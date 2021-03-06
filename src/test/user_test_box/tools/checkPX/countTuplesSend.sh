#!/bin/bash

function print_help() 
{
  echo "USAGE: countTuplesRsv.sh app_name pe_name expect [expect]"
  exit -1
}

[ $# -ne 3 ] && [ $# -ne 4 ] && print_help

source ./conf.sh

pn_list=`cat pn_list`
pe_send=0
pe_name=${1}_${2}_*

pe_send=0
for pn in ${pn_list}
do
  echo -e "\n ========================\n count in $pn ...\n ========================"
  ../sshexec/sshpass -p ${PASSWD} ssh ${USER}@${pn} "cd ${workpath}; find ./ -name \"${pe_name}\" ">temp_file_list
  for f in `cat temp_file_list`; do
    echo $f;
    ../sshexec/sshpass -p ${PASSWD} ssh ${USER}@${pn} "cd ${workpath}/$f;grep 'tuples batched,' logfile | tail -1 | awk -F ';' '{print \$2}' | awk -F ':' '{print \$2}'">temp_file
    #../sshexec/sshpass -p ${PASSWD} ssh ${USER}@${pn} "cd ${workpath}/$f;grep 'tuples batched,' logfile | awk -F ';' '{print \$1}' | awk -F ':' '{print \$2}' | awk 'BEGIN{total=0} {total=total+\$2}; END{print total}'">temp_file
    pe_send_=`cat temp_file`
    pe_send=`expr $pe_send + $pe_send_`
  done
done
rm -rf temp_file_list
rm -rf temp_file

echo "expect($3 ~ $4), actual($pe_send)"

if [ $4"x" != "x" ]; then
  if [ $pe_send -ge $3 -a $pe_send -le $4 ]; then
    echo "expected"
    exit 0
  else
    echo "unexpected"
    exit 1
  fi
else
  if [ $3 -eq $pe_send ]; then
    echo "expected"
    exit 0
  else
    echo "unexpected"
    exit 1
  fi
fi



