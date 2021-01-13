#!/bin/bash

# Uncomment out the platform that you use and comment out those that you do not.

######## Ubuntu/Linux Version ########
######################################
# title="Select the quality you would like compress-pdf to output."
# prompt="Pick an option:"
# options=('screen (low)' 'ebook (medium-low)' 'printer (medium-high)' 'prepress (high)' 'About')

# echo "Your original file will not be compressed or changed in any way."
# echo "A compressed version will be generated in the same folder."
# echo "$title"
# PS3="$prompt "
# select opt in "${options[@]}" "Quit"; do 

# function compress() {
#         echo "Pick a .pdf file to Compress"
#         sleep 1
#         file="$(zenity --title "Pick a .pdf file to Compress" --file-selection 2> /dev/null)"
#         # clear
#         echo ""
#         echo "Compressing \"${file//*\/}\" to \"$opt quality\" With:"
#         echo ""
#         sleep 1
#         eval "gs -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/${opt// (*/} -sOutputFile=\"${file/.pdf/}-compressed.pdf\" \"$file\""
# }

#     case "$REPLY" in

#     1 ) compress
#         break
#         ;;
#     2 ) compress
#         break
#         ;;
#     3 ) compress
#         break
#         ;;
#     4 ) compress
#         break
#         ;;
#     5 ) less <<HEREDOC
# This script was inspired by:
# How to Reduce PDF File Size in Linux
# By Chris Hoffman
# https://www.techwalla.com/articles/reduce-pdf-file-size-linux

# PDF files are portable document format files originally created by Adobe. 
# PDF files look the same on every computer, unlike Web pages. By default, 
# PDF files preserve as much image quality as possible. For example, 
# if you convert a high-resolution image to a PDF file, that PDF file remains very large. 
# This is intended so that no quality is lost; if you go to print the PDF, 
# it will have the same quality level as the original image. However, 
# often the exact detail of the PDF doesn't matter, but the file size does.

# Step 1
# Open a Terminal by clicking "Applications," "Accessories" or "System Tools" and "Terminal."

# Step 2
# Navigate to the folder containing the PDF file with the "cd" command. For example, 
# navigate to the default Documents directory by typing "cd Documents" 
# into the Terminal window and pressing "Enter."

# Step 3
# Type "gs -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=setting -sOutputFile=output.pdf input.pdf" into the Terminal window, replacing "input.pdf" with the name of your PDF file and "setting" with a desired quality level, and then press "Enter."

# Quality level settings are:
# 1. "/screen," the lowest resolution and lowest file size
# 2. "/ebook," a mid-point in resolution and file size
# 3. "/printer" a higher-quality mid-point in resolution and file size
# 4. "/prepress," high-quality settings used for printing PDFs
# HEREDOC
#         continue
#         ;;

#     $(( ${#options[@]}+1 )) ) echo "Goodbye!"; break;;
#     *) echo "Invalid option. Try another one.";continue;;

#     esac

# done







######## Windows/WSL Version ########
#####################################
file=$1
title="Select the quality you would like compress-pdf to output."
prompt="Pick an option:"
options=('screen (low)' 'ebook (medium-low)' 'printer (medium-high)' 'prepress (high)' 'About')

echo "Your original file will not be compressed or changed in any way."
echo "A compressed version will be generated in the same folder."
echo "$title"
PS3="$prompt "
select opt in "${options[@]}" "Quit"; do 

function compress() {
        echo ""
        echo "Compressing \"${file//*\/}\" to \"$opt quality\" With:"
        sleep 1
        eval "gs -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/${opt// (*/} -sOutputFile=\"${file/.pdf/}-compressed.pdf\" \"$file\""
}

    case "$REPLY" in

    1 ) compress
        break
        ;;
    2 ) compress
        break
        ;;
    3 ) compress
        break
        ;;
    4 ) compress
        break
        ;;
    5 ) less <<HEREDOC
This script was inspired by:
How to Reduce PDF File Size in Linux
By Chris Hoffman
https://www.techwalla.com/articles/reduce-pdf-file-size-linux

PDF files are portable document format files originally created by Adobe. 
PDF files look the same on every computer, unlike Web pages. By default, 
PDF files preserve as much image quality as possible. For example, 
if you convert a high-resolution image to a PDF file, that PDF file remains very large. 
This is intended so that no quality is lost; if you go to print the PDF, 
it will have the same quality level as the original image. However, 
often the exact detail of the PDF doesn't matter, but the file size does.

Step 1
Open a Terminal by clicking "Applications," "Accessories" or "System Tools" and "Terminal."

Step 2
Navigate to the folder containing the PDF file with the "cd" command. For example, 
navigate to the default Documents directory by typing "cd Documents" 
into the Terminal window and pressing "Enter."

Step 3
Type "gs -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=setting -sOutputFile=output.pdf input.pdf" into the Terminal window, replacing "input.pdf" with the name of your PDF file and "setting" with a desired quality level, and then press "Enter."

Quality level settings are:
1. "/screen," the lowest resolution and lowest file size
2. "/ebook," a mid-point in resolution and file size
3. "/printer" a higher-quality mid-point in resolution and file size
4. "/prepress," high-quality settings used for printing PDFs
HEREDOC
        continue
        ;;

    $(( ${#options[@]}+1 )) ) echo "Goodbye!"; break;;
    *) echo "Invalid option. Try another one.";continue;;

    esac

done








######## OSX/Mac Version ########
#################################
# prompt="Pick an option:"
# options=('screen (low)' 'ebook (medium-low)' 'printer (medium-high)' 'prepress (high)' 'About')

# echo "Your original file will not be compressed or changed in any way."
# echo "A compressed version will be generated in the same folder."
# echo "Select the quality you would like compress-pdf to output."
# PS3="$prompt "
# select opt in "${options[@]}" "Quit"; do 

# function compress() {
# 	echo "Drag the your.pdf onto terminal then press enter."
#     eval "open -a Finder /Users/$USER/Desktop"
#     read file
#     echo ""
#     echo "Compressing \"${file//*\/}\" to \"$opt quality\" With:"
#     echo ""
#     sleep 1
#     eval "gs -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/${opt// (*/} -sOutputFile=\"${file/.pdf/}-compressed.pdf\" \"$file\""
# }

#     case "$REPLY" in

#     1 ) compress
#         break
#         ;;
#     2 ) compress
#         break
#         ;;
#     3 ) compress
#         break
#         ;;
#     4 ) compress
#         break
#         ;;
#     5 ) less <<HEREDOC
# This script was inspired by:
# How to Reduce PDF File Size in Linux
# By Chris Hoffman
# https://www.techwalla.com/articles/reduce-pdf-file-size-linux

# PDF files are portable document format files originally created by Adobe. 
# PDF files look the same on every computer, unlike Web pages. By default, 
# PDF files preserve as much image quality as possible. For example, 
# if you convert a high-resolution image to a PDF file, that PDF file remains very large. 
# This is intended so that no quality is lost; if you go to print the PDF, 
# it will have the same quality level as the original image. However, 
# often the exact detail of the PDF doesn't matter, but the file size does.

# Step 1
# Open a Terminal by clicking "Applications," "Accessories" or "System Tools" and "Terminal."

# Step 2
# Navigate to the folder containing the PDF file with the "cd" command. For example, 
# navigate to the default Documents directory by typing "cd Documents" 
# into the Terminal window and pressing "Enter."

# Step 3
# Type "gs -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=setting -sOutputFile=output.pdf input.pdf" into the Terminal window, replacing "input.pdf" with the name of your PDF file and "setting" with a desired quality level, and then press "Enter."

# Quality level settings are:
# 1. "/screen," the lowest resolution and lowest file size
# 2. "/ebook," a mid-point in resolution and file size
# 3. "/printer" a higher-quality mid-point in resolution and file size
# 4. "/prepress," high-quality settings used for printing PDFs
# HEREDOC
#         continue
#         ;;

#     $(( ${#options[@]}+1 )) ) echo "Goodbye!"; break;;
#     *) echo "Invalid option. Try another one.";continue;;

#     esac

# done

