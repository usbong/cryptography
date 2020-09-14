#!/bin/bash

# @echo off #not used with Linux machine
echo "//-----------------------------------------------------------------------"
echo "//  Marikina Orthopedic Specialy Clinic - Sta. Lucia Health Care Centre"
echo "//  Usbong Social Systems, Inc. (USBONG.PH)"
echo "//"
echo "//  Automatically Encrypt Passphrase Using Recipient's Public Key"
echo "//-----------------------------------------------------------------------"

echo "" #blank row
echo "Verifying if ouput folder already exists..."
mkdir output
echo "" #blank row
echo "Automatically encrypting Passphrase..."

mainDirectory=$(dirname $0) #current directory
#echo ${mainDirectory}

openssl rsautl -encrypt -inkey ${mainDirectory}/input/pub.pem -pubin -in ${mainDirectory}/input/pass.txt -out ${mainDirectory}/output/pass.bin

echo "Done!"
