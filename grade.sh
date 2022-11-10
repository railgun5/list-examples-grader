# Create your grading script here

set -e

FILENAME="ListExamples.java"
CPATH=".:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar"

rm -rf student-submission
git clone $1 student-submission

cd student-submission

if [[ -f $FILENAME ]]
then
  echo "Correct: path exists and is a file"
fi

if [[ -e $FILENAME ]]
then
  echo "Correct: File name is correct"
else
  echo "Error! cannot find this file"
exit
fi

cp ListExamples.java ../
cd ..

set +e


javac -cp $CPATH *.java
java -cp $CPATH org.junit.runner.JUnitCore TestListExamples > Xiafile.txt

if [[ $? -eq 0 ]]
then 
    echo "Tests all passed!"
else
    echo "Test not passed!"
    grep "Tests run" Xiafile.txt 
fi

set -e

