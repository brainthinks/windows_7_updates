# Manual Installation of Security Monthly Quality Rollups for Windows 7

I use this script every time I have to perform a fresh install of Windows 7.  This is usually only for older family members who are unwilling to try Linux (which is currently all of them) since I don't use Windows anymore.

I created these scripts because Windows 7 is the last "good" version of Windows that doesn't completely invade your privacy at the operating system level.  Or at least it used to be.  Once Windows 10 came out, Microsoft started releasing "security" updates that included things that would track certain things about how you use the computer.  This script allows me to completely turn of Windows Updates, but still stay as secure as I want to be, because I am in control of the updates that get installed.  I must admit that it is nice that Microsoft has released the monthly rollups.  If it weren't for those, I'd have to keep track of a list of individual KB patches.


## Getting the Installers

This is the most comprehensive "article" I was able to find on this topic.  It doesn't actually explain the monthly rollups, but it appears to list them all (almost).  For whatever reason, in this article and in the catalog links below, there is no mention of pre-2016-10 rollups, even though I have them going all the way back to may, as well as the april 2015 servicing stack.

* [https://support.microsoft.com/en-us/help/22801/windows-7-sp1-and-windows-server-2008-r2-sp1-update-history](https://support.microsoft.com/en-us/help/22801/windows-7-sp1-and-windows-server-2008-r2-sp1-update-history)


### service_pack_1

Windows 2000 got 4 service packs, Windows XP got 3, and Windows 7 only got 1, officially.  Surprisingly, this is the most difficult installer to download.  Here is the article talking about it:

[https://support.microsoft.com/en-us/help/15090/windows-7-install-service-pack-1-sp1](https://support.microsoft.com/en-us/help/15090/windows-7-install-service-pack-1-sp1)

Here is the link to download it:

[http://go.microsoft.com/fwlink/?LinkId=199583](http://go.microsoft.com/fwlink/?LinkId=199583)

When you attempt to download it, you will be presented with multiple options.  I recommend selecting the first option, labelled `7601.17514.101119-1850_Update_Sp_Wave1-GRMSP1.1_DVD.iso`, as it contains both the 64-bit and 32-bit installers, and will select the correct one for you when you run it.  However, you cannot just execute an iso file.  You will need to use a program like 7-zip or something similar to extract the files from it.  There are also two files at the bottom, labelled `windows6.1-KB976932-X64.exe` and `windows6.1-KB976932-X86.exe`, but I haven't tried them, so use them at your own risk.


### april_2015_servicing_stack

According to the following article, this update is required to install the sp1_convenience_rollup update:

[https://blogs.technet.microsoft.com/windowsitpro/2016/05/17/simplifying-updates-for-windows-7-and-8-1/](https://blogs.technet.microsoft.com/windowsitpro/2016/05/17/simplifying-updates-for-windows-7-and-8-1/)

And here is the link to the update:

[https://support.microsoft.com/en-us/help/3020369/april-2015-servicing-stack-update-for-windows-7-and-windows-server-200](https://support.microsoft.com/en-us/help/3020369/april-2015-servicing-stack-update-for-windows-7-and-windows-server-200)


### sp1_convenience_rollup

This includes most of the updates from Service Pack 1 until April 2016.  Here is the article:

[https://support.microsoft.com/en-us/help/3125574/convenience-rollup-update-for-windows-7-sp1-and-windows-server-2008-r2](https://support.microsoft.com/en-us/help/3125574/convenience-rollup-update-for-windows-7-sp1-and-windows-server-2008-r2)

And here is the catalog link:

[http://www.catalog.update.microsoft.com/Search.aspx?q=kb3125574+windows+7](http://www.catalog.update.microsoft.com/Search.aspx?q=kb3125574+windows+7)


### monthly_rollups

These are links to the Microsoft Update Catalog that contain the searches that turned up the most relevant results for me.  You can omit the year if you like, but I found it easier to digest that way.

* [http://www.catalog.update.microsoft.com/Search.aspx?q=2016+windows+7+security+monthly+quality+rollup](http://www.catalog.update.microsoft.com/Search.aspx?q=2016+windows+7+security+monthly+quality+rollup)
* [http://www.catalog.update.microsoft.com/Search.aspx?q=2017+windows+7+security+monthly+quality+rollup](http://www.catalog.update.microsoft.com/Search.aspx?q=2017+windows+7+security+monthly+quality+rollup)
* [http://www.catalog.update.microsoft.com/Search.aspx?q=2018+windows+7+security+monthly+quality+rollup](http://www.catalog.update.microsoft.com/Search.aspx?q=2018+windows+7+security+monthly+quality+rollup)

You will need to download all of the different monthly updates for your version of Windows 7.  In the "Products" column, be sure it says only "Windows 7", not "Windows Embedded Standard 7".  If you are using 64-bit Windows 7, which you probably are, download the one that says "for x64-based Systems".  There is one update per month (some months were skipped) from 2016-10 until now, so that is how many update files you will need to download.


### Monthly Rollup Directory Structure

The monthly rollup installation scripts make some assumptions about where to find the installers:

* there is a `monthly_rollups` folder in the same directory as the script
* the `monthly_rollups` directory contains a bunch of folders named as `[year]_[month]`, where the year is 4 digis and the month is 2 digits - each folder corresponds to a month that Microsoft released a rollup installer
* the files in each `YYYY_MM` directory have not been renamed since they were downloaded

It is up to you to take a look at the script and make sure that when you run it, it can find all of the files.  You may need to delete the execution of the scripts that pre-date October 2016 (2016_10), unless you were able to find and download them.


## Installation

You'll need to install the Windows 7 updates in this order.  All of them are manual installations until the monthly rollups, which can be installed with the provided scripts.

Close anything you have open and plan to do nothing but install these updates for the next 30 - 60 minutes.


### service_pack_1

* Navigate to the directory where you un-zipped the service pack 1 iso file, and run `setup.exe`.
* Restart your computer.


### april_2015_servicing_stack

* For 64-bit Windows 7, run `Windows6.1-KB3020369-x64.msu`.
* For 32-bit Windows 7, run `Windows6.1-KB3020369-x86.msu`.
* Restart your computer.


### sp1_convenience_rollup

* For 64-bit Windows 7, run `windows6.1-kb3125574-v4-x64_2dafb1d203c8964239af3048b5dd4b1264cd93b9.msu`.
* For 32-bit Windows 7, run `windows6.1-kb3125574-v4-x86_ba1ff5537312561795cc04db0b02fbb0a74b2cbd.msu`.
* Restart your computer.


### monthly_rollups

Open a terminal with administrative privileges:

1. Open the start menu
1. type `cmd`
1. right-click on the `cmd` icon
1. choose `Run as administrator`

In this `cmd` terminal, `cd` into this directory.

* For 64-bit Windows 7, run `install_x64.bat`.
* For 32-bit Windows 7, run `install_x86.bat`.

Note that this script can take 30 minutes or more to install all of the monthly rollup updates.  Your computer will be automatically restarted.


## Script Resources

I am by no means a Windows batch file writer, so here are the resources I looked up to write these scripts:

* [https://msfn.org/board/topic/152020-batch-script-for-windows-software-updates-installation/](https://msfn.org/board/topic/152020-batch-script-for-windows-software-updates-installation/)
* [https://stackoverflow.com/a/24590583](https://stackoverflow.com/a/24590583)
* [http://www.robvanderwoude.com/goto.php](http://www.robvanderwoude.com/goto.php)
