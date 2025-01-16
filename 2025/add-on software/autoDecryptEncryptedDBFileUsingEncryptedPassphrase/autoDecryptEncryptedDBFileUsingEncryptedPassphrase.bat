@echo off
REM
REM Copyright 2019~2025 USBONG
REM 
REM Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License. You ' may obtain a copy of the License at
REM
REM http://www.apache.org/licenses/LICENSE-2.0
REM
REM Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, ' WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing ' permissions and limitations under the License.
REM
REM @company: USBONG
REM @author: SYSON, MICHAEL B.
REM @date created: 2019
REM @date updated: 20250116; from 20250113
REM @website address: http://www.usbong.ph
REM
echo //-----------------------------------------------------------------------
echo //  Marikina Orthopedic Specialy Clinic - Sta. Lucia Health Care Centre
echo //  USBONG
echo //
echo //  Encrypted DB File Automatic Decryption Using Encrypted Passphrase
echo //
echo //-----------------------------------------------------------------------
echo.

echo Verifying if ouput folder already exists...
mkdir output
echo.
echo Automatically decrypting encrypted passphrase...
set mainDirectory=%CD%

REM edited by Mike, due to "rsautl" was deprecated in version 3.0
REM openssl rsautl -decrypt -inkey %mainDirectory%/library/key.pem -in %mainDirectory%/library/pass.bin -out %mainDirectory%/output/pass.txt

openssl pkeyutl -decrypt -inkey "%mainDirectory%/library/key.pem" -in "%mainDirectory%/library/pass.bin" -out "%mainDirectory%/output/pass.txt"

echo.
echo Automatically decrypting encrypted input HTML Files using decrypted passphrase...

cd input

FOR %%i in (*.*) do set myFile=%%i

REM echo ">>>>%myFile%"

cd..

cd library

openssl enc -d -pbkdf2 -aes256 -in "%mainDirectory%/input/%myFile%" -out "%mainDirectory%/output/Decrypted_%myFile%" -kfile "%mainDirectory%/output/pass.txt"

cd ..
cd output
del pass.txt
cd ..

REM explorer file:///%CD%/output/DecryptedMonthlySummaryTreatment.html
REM explorer file:///%CD%/output/DecryptedMonthlySummaryConsultation.html