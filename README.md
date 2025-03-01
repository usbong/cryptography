# Cryptography
<b>Author:</b> SYSON, Michael B.<br />
<b>Date Created:</b> 20190609<br />
<b>Last Updated:</b> 20250111; from 20200914<br />
<b>Description:</b><br />
This is a list with the set of library files and executable you need to do Cryptography, e.g. encryption, decryption, using OpenSSL.

<table>
<tr>
<td>

## Windows Machine (version: 3) 
1) openssl.exe (and .dll files) 

<b>Download from: </b> https://gitforwindows.org/

<b>Default location:</b> C:\Program Files\Git\usr\bin\openssl.exe

<table>
<tr>
<td>
   
### Reminder

Remember to update `System -> About -> Advanced system settings -> Environment Variables -> System variables -> Path` 

Add `C:\Program Files\Git\usr\bin`

Each added directory in `Path` must be separated by a semicolon, ";"

</td>
</tr>
</table>

### Reference

1) https://stackoverflow.com/questions/50625283/how-to-install-openssl-in-windows-10;<br/>
last accessed: 20250111<br/>
answer by: Kaushik Ghosh, 20180809T0220<br/>
edited by: Foo Bar, 20220519T0105

</td>
</tr>
</table>

## Windows Machine (earlier version: 1.1) 
1) libcrypto, e.g. libcrypto-1_1-x64.dll
2) libssl, e.g. libssl-1_1-x64.dll
3) openssl.exe
4) zlib1.dll

## Linux Machine
1) Download [OpenSSL Code from GitHub](https://github.com/openssl/openssl)
2) Execute the following commands:<br/>
<b>$ ./Configure</b><br/>
<b>$ make</b><br/>
<b>$ make test</b><br/>
<b>$ make install</b>

### Note: OpenSSL (version: 1.1.1g)
### Reference: https://github.com/openssl/openssl/blob/master/INSTALL.md; last accessed: 20200914

## Known Problem: OpenSSL Installation in Linux Machine
<b>Problem:</b> openssl: symbol lookup error: openssl: undefined symbol: EVP_mdc2, version OPENSSL_1_1_0<br/>
<b>Answer:</b> Execute the following commands:<br/>
1) <b>sudo vi  /etc/ld.so.conf.d/libc.conf</b><br/>
--> Add: "/usr/lib"<br/>
2) <b>sudo ldconfig</b><br/>

### Reference: https://github.com/openssl/openssl/issues/11227; last accessed: 20200914

# References
1) [OpenSSL Official Website](https://www.openssl.org)<br />
2) [OpenSSL Official GitHub Page](https://github.com/openssl/openssl)<br />
3) [Git for Windows](https://gitforwindows.org/)<br />

# Open Source Software License
Copyright 2019~2025 Usbong

Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License. You may obtain a copy of the License at

   http://www.apache.org/licenses/LICENSE-2.0
  
Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
