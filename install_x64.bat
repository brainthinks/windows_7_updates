@echo off

echo
echo ------------------------------------------------------------------------------
echo ---                                                                        ---
echo --- Installing All Security Monthly Quality Rollup for 64-bit Windows 7... ---
echo ---                                                                        ---
echo ------------------------------------------------------------------------------
echo

echo Checking that this is a 64-bit operating system...

rem "@see - https://stackoverflow.com/a/24590583"
reg Query "HKLM\Hardware\Description\System\CentralProcessor\0" | find /i "x86" > NUL && set OS=32BIT || set OS=64BIT
if %OS%==64BIT GOTO install
if %OS%==32BIT GOTO unsupported

:unsupported

echo This is not a 64-bit operating system!  Run the 32-bit script.
exit

:install

echo Installing 2016-05 Security Monthly Quality Rollup for Windows 7...
start /wait monthly_rollups\2016_05\Windows6.1-KB3156417-x64.msu /quiet /norestart

echo Installing 2016-06 Security Monthly Quality Rollup for Windows 7...
start /wait monthly_rollups\2016_06\Windows6.1-KB3172605-x64.msu /quiet /norestart

echo Installing 2016-07 Security Monthly Quality Rollup for Windows 7...
start /wait monthly_rollups\2016_07\Windows6.1-KB3172605-x64.msu /quiet /norestart

echo Installing 2016-08 Security Monthly Quality Rollup for Windows 7...
start /wait monthly_rollups\2016_08\Windows6.1-KB3179573-x64.msu /quiet /norestart

echo Installing 2016-09 Security Monthly Quality Rollup for Windows 7...
start /wait monthly_rollups\2016_09\Windows6.1-KB3185278-x64.msu /quiet /norestart

echo Installing 2016-10 Security Monthly Quality Rollup for Windows 7...
start /wait monthly_rollups\2016_10\Windows6.1-KB3185330-x64.msu /quiet /norestart

echo Installing 2016-11 Security Monthly Quality Rollup for Windows 7...
start /wait monthly_rollups\2016_11\windows6.1-kb3197868-x64_b07be176e165c11b9ccbcf03d014b2aef9a514b6.msu /quiet /norestart

echo Installing 2016-12 Security Monthly Quality Rollup for Windows 7...
start /wait monthly_rollups\2016_12\windows6.1-kb3207752-x64_ae76c47886acadcbe337b7b565f63f0991afc7be.msu /quiet /norestart

echo Installing 2017-01 Security Monthly Quality Rollup for Windows 7...
start /wait monthly_rollups\2017_01\windows6.1-kb3212642-x64_f3633176091129fc428d899c93545bdc7821e689.msu /quiet /norestart

echo Installing 2017-03 Security Monthly Quality Rollup for Windows 7...
start /wait monthly_rollups\2017_03\windows6.1-kb4012212-x64_2decefaa02e2058dcd965702509a992d8c4e92b3.msu /quiet /norestart

echo Installing 2017-04 Security Monthly Quality Rollup for Windows 7...
start /wait monthly_rollups\2017_04\windows6.1-kb4015546-x64_4ff5653990d74c465d48adfba21aca6453be99aa.msu /quiet /norestart

echo Installing 2017-05 Security Monthly Quality Rollup for Windows 7...
start /wait monthly_rollups\2017_05\windows6.1-kb4019263-x64_d64d8b6f91434754fdd2a552d8732c95a6e64f30.msu /quiet /norestart

echo Installing 2017-06 Security Monthly Quality Rollup for Windows 7...
start /wait monthly_rollups\2017_06\windows6.1-kb4022722-x64_ee5b5fae02d1c48dbd94beaff4d3ee4fe3cd2ac2.msu /quiet /norestart

echo Installing 2017-07 Security Monthly Quality Rollup for Windows 7...
start /wait monthly_rollups\2017_07\windows6.1-kb4025337-x64_c013b7fcf3486a0f71c4f58fc361bfdb715c4e94.msu /quiet /norestart

echo Installing 2017-08 Security Monthly Quality Rollup for Windows 7...
start /wait monthly_rollups\2017_08\windows6.1-kb4034679-x64_ccabab6aefd6c16454fac39163ae5abc2f4f1303.msu /quiet /norestart

echo Installing 2017-09 Security Monthly Quality Rollup for Windows 7...
start /wait monthly_rollups\2017_09\windows6.1-kb4038779-x64_101eabd1c808a526c500d2589dc7077417693d79.msu /quiet /norestart

echo Installing 2017-10 Security Monthly Quality Rollup for Windows 7...
start /wait monthly_rollups\2017_10\windows6.1-kb4041678-x64_f55123caaf35a98d2056dc81a5d4a185f148601a.msu /quiet /norestart

echo Installing 2017-11 Security Monthly Quality Rollup for Windows 7...
start /wait monthly_rollups\2017_11\windows6.1-kb4048957-x64_83688ecf3a901fc494ee67b5c57e35f0a09dc455.msu /quiet /norestart

echo Installing 2017-12 Security Monthly Quality Rollup for Windows 7...
start /wait monthly_rollups\2017_12\windows6.1-kb4054518-x64_290d02e1edc77bd5e809f867fc683d2ff4bf6df8.msu /quiet /norestart

echo Installing 2018-01 Security Monthly Quality Rollup for Windows 7...
start /wait monthly_rollups\2018_01\windows6.1-kb4056894-x64_4ddb21dbf40b3a7c41e17b4bf04242d8b48a5ac3.msu /quiet /norestart

echo Installing 2018-02 Security Monthly Quality Rollup for Windows 7...
start /wait monthly_rollups\2018_02\windows6.1-kb4074598-x64_87a0c86bfb4c01d9c32d2cd3717b73c1b83cb798.msu /quiet /norestart

echo Installing 2018-03 Security Monthly Quality Rollup for Windows 7...
start /wait monthly_rollups\2018_03\windows6.1-kb4088875-x64_8a9779c594fec5a8ec70e49de467de3c67cf5829.msu /quiet /norestart

echo Finished Installing all Security Monthly Quality Rollups!

echo Restarting the computer in about 10 seconds...
shutdown.exe /r /t 10

:end
echo Finished...
