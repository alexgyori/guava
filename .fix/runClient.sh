

client=$1
libGav=$2

workingDir=tmp-${libGav}-client

git clone ${client} ${workingDir}
cd $workingDir

mvn versions:use-latest-versions versions:update-properties -DallowSnapshots=true  -Dincludes=${libGav} && mvn test -B

