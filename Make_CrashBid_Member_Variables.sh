#!/bin/bash

## declare an array variable
declare -a arr=(

# Inspection
"Inspection_Date"
"Inspection_Type"
"Type_of_Loss"
"Date_of_Loss"
"Insured"
"Deductible"
"Insurance_Co"
"Claim_Number"
"Adjuster"
"Adjuster_Contact_Info"
"Additional_Inspection_Information"

# Vehicle Owner
"Owner"
"Address"
"City"
"State"
"Zip"
"Phone_Home"
"Phone_Work"
"Phone_Cell"
"Fax"
"Email"
"Additional_Owner_Information"

# Repair Shop
"Repairer"
"Repairer_Address"
"Repairer_City"
"Repairer_State"
"Repairer_Zip"
"Repairer_Phone_Shop"
"Repairer_Phone_Cell"
"Repairer_Fax"
"Repairer_Email"
"Estimmator"
"Additional_Repairer_Information"

# Vehicle
"Vin"
"Year"
"Make"
"Model"
"Series"
"Type"
"Number_of_Doors"
"Num_Cyl"
"Fuel_Type"
"Displacement"
"Transmission_Speeds"
"Transmission_Style"
"Condition"
"Exterior_Refinish"
"Exterior_Color"
"Exterior_Paint_Code"
"License_Plate"
"License_State"
"Mileage"
"Interior_Refinish"
"Interior_Trim_Code"
"Production_Date"
"Mileage_Type"
"Additional_Vehicle_Information"

# Summary
"MCH_hrs_sum"
"FRM_hrs_sum"
"BDY_hrs_sum"
"REF_hrs_sum"
"MCH_Rate"
"FRM_Rate"
"BDY_Rate"
"REF_Rate"
"MCH_Total_Cost"
"FRM_Total_Cost"
"BDY_Total_Cost"
"REF_Total_Cost"
"Labor_Total_Cost"
"Parts_Total_Cost"
"Sublet_Total_Cost"
"Body_Matl_Rate"
"Paint_Matl_Rate"
"Body_Matl_Total_Cost"
"Paint_Matl_Total_Cost"
"Shop_Matl_Total_Cost"
"Haz_Mat_Cost"
"Subtotal"
"Sales_Tax_Condition"
"Sales_Tax_Rate"
"Sales_Tax_Cost"
"GRAND_TOTAL"
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
