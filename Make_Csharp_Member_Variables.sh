#!/bin/bash

## declare an array variable
declare -a arr=(
	"Test_Test_1" 
	"Test_Test_2" 
	"Test_Test_3"
	)

## Make a C# member variable declaration that calls OnPropertyChanged()
lowerVarCase () {
	x="$1"
	x="$(tr '[:upper:]' '[:lower:]' <<< ${x:0:1})${x:1}";
	publicVar=$1
	privateVar=$x
	echo "private string _$privateVar;"
	echo "public string $publicVar { "
	echo "    get {  if (string.IsNullOrWhiteSpace(_$privateVar)) { return \"\"; } return _$privateVar; } "
	echo "    set { _$privateVar = value; OnPropertyChanged(\"$publicVar\"); }"
	echo "}"
}

## loop through the above array
for i in "${arr[@]}"
do
   lowerVarCase $i
   echo ""
done


##   Output:
##   jaso@DESKTOP-HMBKR9R:/mnt/c/Users/jason/Desktop$ ./Make_Member_Variables.sh

##   private string _test_Test_1;
##   public string Test_Test_1 {
##       get {  if (string.IsNullOrWhiteSpace(_test_Test_1)) { return ""; } return _test_Test_1; }
##       set { _test_Test_1 = value; OnPropertyChanged("Test_Test_1"); }
##   }
##   
##   private string _test_Test_2;
##   public string Test_Test_2 {
##       get {  if (string.IsNullOrWhiteSpace(_test_Test_2)) { return ""; } return _test_Test_2; }
##       set { _test_Test_2 = value; OnPropertyChanged("Test_Test_2"); }
##   }
##   
##   private string _test_Test_3;
##   public string Test_Test_3 {
##       get {  if (string.IsNullOrWhiteSpace(_test_Test_3)) { return ""; } return _test_Test_3; }
##       set { _test_Test_3 = value; OnPropertyChanged("Test_Test_3"); }
##   }

