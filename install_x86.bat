@echo off

echo
echo ------------------------------------------------------------------------------
echo ---                                                                        ---
echo --- Installing All Security Monthly Quality Rollup for 32-bit Windows 7... ---
echo ---                                                                        ---
echo ------------------------------------------------------------------------------
echo

echo Checking that this is a 32-bit operating system...

rem "@see - https://stackoverflow.com/a/24590583"
reg Query "HKLM\Hardware\Description\System\CentralProcessor\0" | find /i "x86" > NUL && set OS=32BIT || set OS=64BIT
if %OS%==32BIT GOTO install
if %OS%==64BIT GOTO unsupported

:unsupported

echo This is not a 32-bit operating system!  Run the 64-bit script.
GOTO end

:install

echo Installing 2016-05 Security Monthly Quality Rollup for Windows 7...
start /wait monthly_rollups\2016_05\Windows6.1-KB3156417-x86.msu /quiet /norestart

echo Installing 2016-06 Security Monthly Quality Rollup for Windows 7...
start /wait monthly_rollups\2016_06\Windows6.1-KB3172605-x86.msu /quiet /norestart

echo Installing 2016-07 Security Monthly Quality Rollup for Windows 7...
start /wait monthly_rollups\2016_07\Windows6.1-KB3172605-x86.msu /quiet /norestart

echo Installing 2016-08 Security Monthly Quality Rollup for Windows 7...
start /wait monthly_rollups\2016_08\Windows6.1-KB3179573-x86.msu /quiet /norestart

echo Installing 2016-09 Security Monthly Quality Rollup for Windows 7...
start /wait monthly_rollups\2016_09\Windows6.1-KB3185278-x86.msu /quiet /norestart

echo Installing 2016-10 Security Monthly Quality Rollup for Windows 7...
start /wait monthly_rollups\2016_10\Windows6.1-KB3185330-x86.msu /quiet /norestart

echo Installing 2016-11 Security Monthly Quality Rollup for Windows 7...
start /wait monthly_rollups\2016_11\windows6.1-kb3197868-x86_654e073e00c76a3a7dd01dee8fc2e4fb9a75c931.msu /quiet /norestart

echo Installing 2016-12 Security Monthly Quality Rollup for Windows 7...
start /wait monthly_rollups\2016_12\windows6.1-kb3207752-x86_61cbdbe807575fe8b088f80082cb14a9b71162ae.msu /quiet /norestart

echo Installing 2017-01 Security Monthly Quality Rollup for Windows 7...
start /wait monthly_rollups\2017_01\windows6.1-kb3212642-x86_d5906af5f1f0dc07a5239311b169619ce255ab12.msu /quiet /norestart

echo Installing 2017-03 Security Monthly Quality Rollup for Windows 7...
start /wait monthly_rollups\2017_03\windows6.1-kb4012212-x86_6bb04d3971bb58ae4bac44219e7169812914df3f.msu /quiet /norestart

echo Installing 2017-04 Security Monthly Quality Rollup for Windows 7...
start /wait monthly_rollups\2017_04\windows6.1-kb4015546-x86_a753365290d940872860776113f226436a18ca9b.msu /quiet /norestart

echo Installing 2017-05 Security Monthly Quality Rollup for Windows 7...
start /wait monthly_rollups\2017_05\windows6.1-kb4019263-x86_e978e662d844d13ccf726944c39e4b678159bcde.msu /quiet /norestart

echo Installing 2017-06 Security Monthly Quality Rollup for Windows 7...
start /wait monthly_rollups\2017_06\windows6.1-kb4022722-x86_28f72705aa3aa2a52994bda4600cc6bbc3a2bca6.msu /quiet /norestart

echo Installing 2017-07 Security Monthly Quality Rollup for Windows 7...
start /wait monthly_rollups\2017_07\windows6.1-kb4025337-x86_81a37e4187f7d9137159ba11ed24459dcc482895.msu /quiet /norestart

echo Installing 2017-08 Security Monthly Quality Rollup for Windows 7...
start /wait monthly_rollups\2017_08\windows6.1-kb4034679-x86_85c67d369707044c0659b63e06c9dc3c10768e95.msu /quiet /norestart

echo Installing 2017-09 Security Monthly Quality Rollup for Windows 7...
start /wait monthly_rollups\2017_09\windows6.1-kb4038779-x86_2b8dc6efc21dae05e188d986ddfeb21c4a0a27a6.msu /quiet /norestart

echo Installing 2017-10 Security Monthly Quality Rollup for Windows 7...
start /wait monthly_rollups\2017_10\windows6.1-kb4041678-x86_a8054e75c3579564570a5acec859a31af43be2f4.msu /quiet /norestart

echo Installing 2017-11 Security Monthly Quality Rollup for Windows 7...
start /wait monthly_rollups\2017_11\windows6.1-kb4048957-x86_0d77817f21a899d764c97d79f01521f12588ec0e.msu /quiet /norestart

echo Installing 2017-12 Security Monthly Quality Rollup for Windows 7...
start /wait monthly_rollups\2017_12\windows6.1-kb4054518-x86_7168208835abedd39d676a029493b37e4ec51bcb.msu /quiet /norestart

echo Installing 2018-01 Security Monthly Quality Rollup for Windows 7...
start /wait monthly_rollups\2018_01\windows6.1-kb4056894-x86_c4ea3ab351b1edb45c0977e0e2e4607b17eeaba7.msu /quiet /norestart

echo Installing 2018-02 Security Monthly Quality Rollup for Windows 7...
start /wait monthly_rollups\2018_02\windows6.1-kb4074598-x86_0d2b75cacdc29b6fc557c426a62922fe277a2063.msu /quiet /norestart

echo Installing 2018-03 Security Monthly Quality Rollup for Windows 7...
start /wait monthly_rollups\2018_03\windows6.1-kb4088875-x86_f6c03baa1871d2a5d308f68b752b8668418c8cde.msu /quiet /norestart

echo Finished Installing all Security Monthly Quality Rollups!

echo Restarting the computer in about 10 seconds...
shutdown.exe /r /t 10

:end
echo Finished...
