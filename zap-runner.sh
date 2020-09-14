#!/bin/bash
filename='api.txt'
TYPE='zap-baseline'
n=1
while read line; do
# reading each line
echo "$line"

current_time=$(date "+%Y.%m.%d-%H.%M.%S")

new_fileName=testreport.$current_time.html

docker run -v $(pwd):/zap/wrk/:rw -t owasp/zap2docker-stable "$TYPE".py -t "$line" -g gen.conf -r "$new_fileName"

n=$((n+1))
done < $filename
