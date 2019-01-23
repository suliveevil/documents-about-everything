# Finder 意外退出

```
Process:               Finder [39923]
Path:                  /System/Library/CoreServices/Finder.app/Contents/MacOS/Finder
Identifier:            Finder
Version:               10.14.2 (1143.2.2)
Code Type:             X86-64 (Native)
Parent Process:        ??? [1]
Responsible:           Finder [39923]
User ID:               501

Date/Time:             2018-12-30 14:06:23.603 +0800
OS Version:            Mac OS X 10.14.2 (18C54)
Report Version:        12
Bridge OS Version:     3.3 (16P53118a)
Anonymous UUID:        9BB05237-17B9-511E-AEE7-10A34AC1FEC9

Sleep/Wake UUID:       4C81C065-6BC0-4588-BED6-95331AA6A327

Time Awake Since Boot: 230000 seconds
Time Since Wake:       14000 seconds

System Integrity Protection: enabled

Crashed Thread:        0  Dispatch queue: com.apple.main-thread

Exception Type:        EXC_CRASH (SIGABRT)
Exception Codes:       0x0000000000000000, 0x0000000000000000
Exception Note:        EXC_CORPSE_NOTIFY

Application Specific Information:
dyld3 mode
Assertion failure in -[QLPreviewCacheManager cacheRecentDocument:] (line 161): document.displayBundle.visibility == QLPreviewHiddenVisibilityState
 
abort() called

Application Specific Signatures:
[QL] -[QLPreviewCacheManager cacheRecentDocument:]: document.displayBundle.visibility == QLPreviewHiddenVisibilityState

Thread 0 Crashed:: Dispatch queue: com.apple.main-thread
0   libsystem_kernel.dylib        	0x00007fff7ec5d23e __pthread_kill + 10
1   libsystem_pthread.dylib       	0x00007fff7ed13c1c pthread_kill + 285
2   libsystem_c.dylib             	0x00007fff7ebc61c9 abort + 127
3   com.apple.QuickLookFramework  	0x00007fff5cb18272 _QLCrash + 180
4   com.apple.QuickLookFramework  	0x00007fff5cb18399 _QLRaiseAssert + 295
5   com.apple.QuickLookUIFramework	0x00007fff5c7a2c99 -[QLPreviewCacheManager cacheRecentDocument:] + 641
6   com.apple.QuickLookUIFramework	0x00007fff5c7a29bc -[QLPreviewView _recycleDocument:restore:] + 312
7   com.apple.QuickLookUIFramework	0x00007fff5c79fc19 -[QLPreviewView _setDisplayedDocument:transition:] + 733
8   com.apple.QuickLookUIFramework	0x00007fff5c79e20e -[QLPreviewView _updateDisplayedDocumentWithDelayedDisplay:] + 739
9   com.apple.QuickLookUIFramework	0x00007fff5c79dd1b -[QLPreviewView _setDocument:canDelayDisplay:] + 318
10  com.apple.QuickLookUIFramework	0x00007fff5c79d012 -[QLPreviewView _startLoadingPreviewItem:timeoutDate:] + 1169
11  com.apple.QuickLookUIFramework	0x00007fff5c7b481a -[QLPreviewPanelController _setCurrentPreviewItem:withTransition:blocking:] + 284
12  com.apple.QuickLookUIFramework	0x00007fff5c7c27ef -[QLPreviewSlideshow _slideshowGoToNextItem:] + 72
13  com.apple.Foundation          	0x00007fff53c8c646 __NSFireTimer + 80
14  com.apple.CoreFoundation      	0x00007fff518fbedd __CFRUNLOOP_IS_CALLING_OUT_TO_A_TIMER_CALLBACK_FUNCTION__ + 20
15  com.apple.CoreFoundation      	0x00007fff518fba90 __CFRunLoopDoTimer + 859
16  com.apple.CoreFoundation      	0x00007fff518fb5d0 __CFRunLoopDoTimers + 333
17  com.apple.CoreFoundation      	0x00007fff518dc81b __CFRunLoopRun + 2176
18  com.apple.CoreFoundation      	0x00007fff518dbd48 CFRunLoopRunSpecific + 463
19  com.apple.HIToolbox           	0x00007fff50b72ab5 RunCurrentEventLoopInMode + 293
20  com.apple.HIToolbox           	0x00007fff50b727eb ReceiveNextEventCommon + 618
21  com.apple.HIToolbox           	0x00007fff50b72568 _BlockUntilNextEventMatchingListInModeWithFilter + 64
22  com.apple.AppKit              	0x00007fff4ee2d363 _DPSNextEvent + 997
23  com.apple.AppKit              	0x00007fff4ee2c102 -[NSApplication(NSEvent) _nextEventMatchingEventMask:untilDate:inMode:dequeue:] + 1362
24  com.apple.AppKit              	0x00007fff4ee26165 -[NSApplication run] + 699
25  com.apple.AppKit              	0x00007fff4ee158a3 NSApplicationMain + 780
26  com.apple.finder              	0x000000010984dae1 0x109847000 + 27361
27  libdyld.dylib                 	0x00007fff7eb1ded9 start + 1

Thread 1:: com.apple.NSEventThread
0   libsystem_kernel.dylib        	0x00007fff7ec5717a mach_msg_trap + 10
1   libsystem_kernel.dylib        	0x00007fff7ec576d0 mach_msg + 60
2   com.apple.CoreFoundation      	0x00007fff518dd0c2 __CFRunLoopServiceMachPort + 337
3   com.apple.CoreFoundation      	0x00007fff518dc611 __CFRunLoopRun + 1654
4   com.apple.CoreFoundation      	0x00007fff518dbd48 CFRunLoopRunSpecific + 463
5   com.apple.AppKit              	0x00007fff4ee35f89 _NSEventThread + 160
6   libsystem_pthread.dylib       	0x00007fff7ed11305 _pthread_body + 126
7   libsystem_pthread.dylib       	0x00007fff7ed1426f _pthread_start + 70
8   libsystem_pthread.dylib       	0x00007fff7ed10415 thread_start + 13

Thread 2:
0   libsystem_kernel.dylib        	0x00007fff7ec5717a mach_msg_trap + 10
1   libsystem_kernel.dylib        	0x00007fff7ec576d0 mach_msg + 60
2   com.apple.CoreFoundation      	0x00007fff518dd0c2 __CFRunLoopServiceMachPort + 337
3   com.apple.CoreFoundation      	0x00007fff518dc611 __CFRunLoopRun + 1654
4   com.apple.CoreFoundation      	0x00007fff518dbd48 CFRunLoopRunSpecific + 463
5   com.apple.CoreFoundation      	0x00007fff518dbb54 CFRunLoopRun + 40
6   com.apple.DiscRecording       	0x00007fff53979f35 DRWorkLoop::WorkLoop() + 237
7   com.apple.DiscRecording       	0x00007fff53979e35 DRWorkLoop::WorkLoopEntry(DRWorkLoop*) + 9
8   com.apple.DiscRecording       	0x00007fff53979aeb DRThreadObject::StartRoutine(DRThreadObject*) + 111
9   com.apple.DiscRecording       	0x00007fff53979985 DRThreadObject::SymbolRoutine(DRThreadObject*) + 9
10  libsystem_pthread.dylib       	0x00007fff7ed11305 _pthread_body + 126
11  libsystem_pthread.dylib       	0x00007fff7ed1426f _pthread_start + 70
12  libsystem_pthread.dylib       	0x00007fff7ed10415 thread_start + 13

Thread 3:
0   libsystem_pthread.dylib       	0x00007fff7ed103f8 start_wqthread + 0
1   ???                           	0x0000000054485244 0 + 1414025796

Thread 4:
0   libsystem_pthread.dylib       	0x00007fff7ed103f8 start_wqthread + 0
1   ???                           	0x0000000054485244 0 + 1414025796

Thread 5:
0   libsystem_pthread.dylib       	0x00007fff7ed103f8 start_wqthread + 0
1   ???                           	0x0000000054485244 0 + 1414025796

Thread 6:
0   libsystem_pthread.dylib       	0x00007fff7ed103f8 start_wqthread + 0
1   ???                           	0x0000000054485244 0 + 1414025796

Thread 7:
0   libsystem_pthread.dylib       	0x00007fff7ed103f8 start_wqthread + 0
1   ???                           	0x0000000054485244 0 + 1414025796

Thread 8:
0   libsystem_pthread.dylib       	0x00007fff7ed103f8 start_wqthread + 0
1   ???                           	0x0000000054485244 0 + 1414025796

Thread 9:: Dispatch queue: com.apple.root.user-interactive-qos
0   libsystem_malloc.dylib        	0x00007fff7ecd983c nanov2_allocate_from_block + 28
1   libsystem_malloc.dylib        	0x00007fff7ecd90f6 nanov2_allocate + 142
2   libsystem_malloc.dylib        	0x00007fff7ecd9017 nanov2_malloc + 56
3   libsystem_malloc.dylib        	0x00007fff7eccc807 malloc_zone_malloc + 103
4   com.apple.CoreFoundation      	0x00007fff518a4cb3 _CFRuntimeCreateInstance + 274
5   com.apple.CoreFoundation      	0x00007fff518a460d __CFStringCreateImmutableFunnel3 + 1925
6   com.apple.CoreFoundation      	0x00007fff518ab5ec CFStringCreateWithBytes + 27
7   com.apple.CoreFoundation      	0x00007fff518c078a CFURLCopyFileSystemPath + 273
8   com.apple.Foundation          	0x00007fff53c28af4 -[NSURL(NSURL) path] + 143
9   com.apple.CloudDocs           	0x00007fff63fcad94 -[NSURL(BRAdditions) br_isParentOfURL:strictly:] + 241
10  com.apple.CloudDocs           	0x00007fff63fc93e8 -[NSURL(BRAdditions) _br_isInSyncedLocationStrictly:] + 272
11  com.apple.CloudDocs           	0x00007fff63ff6022 _BRCopyBundleIdentifierForURLInContainer + 50
12  com.apple.CloudDocs           	0x00007fff63ff5fd2 BRCopyBundleIdentifierForURLInContainer + 36
13  com.apple.LaunchServices      	0x00007fff52fd8b3c _LSFindBRBundleForNode + 88
14  com.apple.LaunchServices      	0x00007fff52f54b97 LSGetApplicationForURL + 151
15  com.apple.LaunchServices      	0x00007fff52ff6b5f LSCopyDefaultApplicationURLForURL + 69
16  com.apple.QuickLookUIFramework	0x00007fff5c7a72cb __QLPreviewItemGetDefaultOpenButtonInfo_block_invoke + 166
17  com.apple.QuickLookFramework  	0x00007fff5caea401 QLTryCatchAndCrash(void () block_pointer) + 17
18  libdispatch.dylib             	0x00007fff7eaced53 _dispatch_call_block_and_release + 12
19  libdispatch.dylib             	0x00007fff7eacfdcf _dispatch_client_callout + 8
20  libdispatch.dylib             	0x00007fff7eadde80 _dispatch_root_queue_drain + 671
21  libdispatch.dylib             	0x00007fff7eade4bd _dispatch_worker_thread2 + 90
22  libsystem_pthread.dylib       	0x00007fff7ed106dd _pthread_wqthread + 619
23  libsystem_pthread.dylib       	0x00007fff7ed10405 start_wqthread + 13

Thread 10:
0   libsystem_pthread.dylib       	0x00007fff7ed103f8 start_wqthread + 0
1   ???                           	0x0000000054485244 0 + 1414025796

Thread 11:
0   libsystem_pthread.dylib       	0x00007fff7ed103f8 start_wqthread + 0
1   ???                           	0x0000000054485244 0 + 1414025796

Thread 0 crashed with X86 Thread State (64-bit):
  rax: 0x0000000000000000  rbx: 0x0000000115a555c0  rcx: 0x00007ffee63b5fd8  rdx: 0x0000000000000000
  rdi: 0x0000000000000507  rsi: 0x0000000000000006  rbp: 0x00007ffee63b6010  rsp: 0x00007ffee63b5fd8
   r8: 0x00007ffee63b5d98   r9: 0x0000000000000000  r10: 0x0000000000000000  r11: 0x0000000000000206
  r12: 0x0000000000000507  r13: 0x00007fff5c883e2f  r14: 0x0000000000000006  r15: 0x000000000000002d
  rip: 0x00007fff7ec5d23e  rfl: 0x0000000000000206  cr2: 0x00007fffb1904188
  
Logical CPU:     0
Error Code:      0x02000148
Trap Number:     133


Binary Images:
       0x109847000 -        0x10a048fff  com.apple.finder (10.14.2 - 1143.2.2) <8F1D21AE-47C0-3593-AE49-DA2E947D51E3> /System/Library/CoreServices/Finder.app/Contents/MacOS/Finder
       0x10ac49000 -        0x10ac4c047  libobjc-trampolines.dylib (750.1) <0D004834-E2EB-3066-8598-6F413521157F> /usr/lib/libobjc-trampolines.dylib
       0x10d891000 -        0x10d893ff3  com.apple.CloudDocsFileProvider (1.0 - 575.204) <64279182-17AE-3E6D-AF9B-0E7F19B34430> /System/Library/PrivateFrameworks/FileProvider.framework/OverrideBundles/CloudDocsFileProvider.bundle/Contents/MacOS/CloudDocsFileProvider
       0x10d898000 -        0x10d89bffb  com.apple.FileProviderOverride (125.130 - 125.130) <36DEB811-ACA6-3E55-BC2D-3C228B3A25E0> /System/Library/PrivateFrameworks/FileProvider.framework/OverrideBundles/FileProviderOverride.bundle/Contents/MacOS/FileProviderOverride
       0x10d8a1000 -        0x10d8a8fff  com.apple.FinderSyncCollaborationFileProviderOverride (1.0 - 1143.2.2) <B06BBEB2-1050-334D-97E6-D8C09C65A2BF> /System/Library/PrivateFrameworks/FileProvider.framework/OverrideBundles/FinderSyncCollaborationFileProviderOverride.bundle/Contents/MacOS/FinderSyncCollaborationFileProviderOverride
       0x115498000 -        0x115499fff  com.apple.AddressBook.LocalSourceBundle (11.0 - 1890) <FBC1B1A0-132C-3E3C-B5BE-3142046C0B9E> /System/Library/Address Book Plug-Ins/LocalSource.sourcebundle/Contents/MacOS/LocalSource
       0x1154ac000 -        0x1154b0fff  com.apple.DirectoryServicesSource (11.0 - 1890) <156D1C78-2187-329F-902E-57B70F6AC879> /System/Library/Address Book Plug-Ins/DirectoryServices.sourcebundle/Contents/MacOS/DirectoryServices
       0x11599f000 -        0x115a1da67  dyld (640.2) <289AB27E-F09F-3384-A14A-100431139559> /usr/lib/dyld
       0x119e59000 -        0x119ed3ff7  com.apple.AddressBook.CardDAVPlugin (10.9 - 546) <14D6B206-97CD-32BA-9776-411282F59E17> /System/Library/Address Book Plug-Ins/CardDAVPlugin.sourcebundle/Contents/MacOS/CardDAVPlugin
    0x7fff476fd000 -     0x7fff4770cffb  libSimplifiedChineseConverter.dylib (73) <519CBC86-8874-3679-8C45-D15219125376> /System/Library/CoreServices/Encodings/libSimplifiedChineseConverter.dylib
    0x7fff47738000 -     0x7fff47ab1fff  com.apple.RawCamera.bundle (8.13.0 - 1031.3.2) <C1DB8AE5-1683-3AE8-ACDD-C5EBB3682EE8> /System/Library/CoreServices/RawCamera.bundle/Contents/MacOS/RawCamera
    0x7fff4ae7d000 -     0x7fff4b104ff7  com.apple.driver.AppleIntelKBLGraphicsMTLDriver (12.4.7.1 - 12.0.4) <CE42798E-5ECB-390F-AD06-4F2B1E547344> /System/Library/Extensions/AppleIntelKBLGraphicsMTLDriver.bundle/Contents/MacOS/AppleIntelKBLGraphicsMTLDriver
    0x7fff4d801000 -     0x7fff4d9effff  com.apple.avfoundation (2.0 - 1544.5) <BC32B996-F411-3CA0-B9FB-8CEBA2DD356D> /System/Library/Frameworks/AVFoundation.framework/Versions/A/AVFoundation
    0x7fff4d9f0000 -     0x7fff4dabffff  com.apple.audio.AVFAudio (1.0 - ???) <9C4C64BB-E751-3BB3-B4D0-233ADD48A029> /System/Library/Frameworks/AVFoundation.framework/Versions/A/Frameworks/AVFAudio.framework/Versions/A/AVFAudio
    0x7fff4dac1000 -     0x7fff4dbccff3  com.apple.AVKit (1.1 - 446.50.101) <DFD24C2C-8D65-3B67-9EA1-D22809BFF288> /System/Library/Frameworks/AVKit.framework/Versions/A/AVKit
    0x7fff4dbcd000 -     0x7fff4dbcdfff  com.apple.Accelerate (1.11 - Accelerate 1.11) <A09CB6D5-3F8A-3E05-B0EB-63878296A059> /System/Library/Frameworks/Accelerate.framework/Versions/A/Accelerate
    0x7fff4dbce000 -     0x7fff4dbe4fef  libCGInterfaces.dylib (506.19.1) <55B9EFFF-6719-381E-B7F3-C3AA07F5D78F> /System/Library/Frameworks/Accelerate.framework/Versions/A/Frameworks/vImage.framework/Versions/A/Libraries/libCGInterfaces.dylib
    0x7fff4dbe5000 -     0x7fff4e285fe3  com.apple.vImage (8.1 - ???) <BDA40EB0-9B20-3ACF-BE37-199578FA84F4> /System/Library/Frameworks/Accelerate.framework/Versions/A/Frameworks/vImage.framework/Versions/A/vImage
    0x7fff4e286000 -     0x7fff4e4fdfd7  libBLAS.dylib (1243.200.4) <0ADBEAE3-6636-33E5-AC9F-11C2249E19D3> /System/Library/Frameworks/Accelerate.framework/Versions/A/Frameworks/vecLib.framework/Versions/A/libBLAS.dylib
    0x7fff4e4fe000 -     0x7fff4e570fe7  libBNNS.dylib (38.200.5) <CC93B9B5-2A8C-3D42-9234-75DD41EC8C0D> /System/Library/Frameworks/Accelerate.framework/Versions/A/Frameworks/vecLib.framework/Versions/A/libBNNS.dylib
    0x7fff4e571000 -     0x7fff4e917fff  libLAPACK.dylib (1243.200.4) <45722A8A-5788-3C4C-ADD9-1812763FA635> /System/Library/Frameworks/Accelerate.framework/Versions/A/Frameworks/vecLib.framework/Versions/A/libLAPACK.dylib
    0x7fff4e918000 -     0x7fff4e92dffb  libLinearAlgebra.dylib (1243.200.4) <3923AB79-213E-32FD-AC87-8B1A1A832336> /System/Library/Frameworks/Accelerate.framework/Versions/A/Frameworks/vecLib.framework/Versions/A/libLinearAlgebra.dylib
    0x7fff4e92e000 -     0x7fff4e933ff3  libQuadrature.dylib (3.200.2) <4FBCAC0A-81A4-3C53-8458-27F3569C809D> /System/Library/Frameworks/Accelerate.framework/Versions/A/Frameworks/vecLib.framework/Versions/A/libQuadrature.dylib
    0x7fff4e934000 -     0x7fff4e9b1ffb  libSparse.dylib (79.200.5) <2D650C50-E87E-3F24-9BFA-C8EB6DE1A6E9> /System/Library/Frameworks/Accelerate.framework/Versions/A/Frameworks/vecLib.framework/Versions/A/libSparse.dylib
    0x7fff4e9b2000 -     0x7fff4e9c5ffb  libSparseBLAS.dylib (1243.200.4) <6F8C78BE-A0FD-3507-8A95-541AFC57F1EE> /System/Library/Frameworks/Accelerate.framework/Versions/A/Frameworks/vecLib.framework/Versions/A/libSparseBLAS.dylib
    0x7fff4e9c6000 -     0x7fff4ebaaff3  libvDSP.dylib (671.220.1) <2F576522-08B1-3C65-8F00-3427E938ADDA> /System/Library/Frameworks/Accelerate.framework/Versions/A/Frameworks/vecLib.framework/Versions/A/libvDSP.dylib
    0x7fff4ebab000 -     0x7fff4ec60ff3  libvMisc.dylib (671.220.1) <D7B5F89D-3310-31F4-B8BF-42DA300ABE64> /System/Library/Frameworks/Accelerate.framework/Versions/A/Frameworks/vecLib.framework/Versions/A/libvMisc.dylib
    0x7fff4ec61000 -     0x7fff4ec61fff  com.apple.Accelerate.vecLib (3.11 - vecLib 3.11) <221E4FEF-0431-3316-8281-22B6F8315A09> /System/Library/Frameworks/Accelerate.framework/Versions/A/Frameworks/vecLib.framework/Versions/A/vecLib
    0x7fff4ec62000 -     0x7fff4ecc5ffb  com.apple.Accounts (113 - 113) <F40D3A96-AFE7-33BA-9666-C41B0B381715> /System/Library/Frameworks/Accounts.framework/Versions/A/Accounts
    0x7fff4ecc8000 -     0x7fff4ee11ff7  com.apple.AddressBook.framework (11.0 - 1890) <BC45996B-00E0-3881-A6EB-8A63B9A0B76F> /System/Library/Frameworks/AddressBook.framework/Versions/A/AddressBook
    0x7fff4ee12000 -     0x7fff4fc33ffb  com.apple.AppKit (6.9 - 1671.20.108) <0C441020-D10E-3CE0-B320-527E50EADBEC> /System/Library/Frameworks/AppKit.framework/Versions/C/AppKit
    0x7fff4fc85000 -     0x7fff4fc85fff  com.apple.ApplicationServices (50.1 - 50.1) <50496459-FFDD-3A78-8D3D-A252BD9B9DA2> /System/Library/Frameworks/ApplicationServices.framework/Versions/A/ApplicationServices
    0x7fff4fc86000 -     0x7fff4fcf1ff7  com.apple.ApplicationServices.ATS (377 - 453.11) <4080F8BE-F2A2-3707-8754-436FBDB1DAF1> /System/Library/Frameworks/ApplicationServices.framework/Versions/A/Frameworks/ATS.framework/Versions/A/ATS
    0x7fff4fd8a000 -     0x7fff4fea9fff  libFontParser.dylib (228.6) <BBCBEE2C-5B55-3278-B81D-22D72466753E> /System/Library/Frameworks/ApplicationServices.framework/Versions/A/Frameworks/ATS.framework/Versions/A/Resources/libFontParser.dylib
    0x7fff4feaa000 -     0x7fff4fef5fff  libFontRegistry.dylib (228.12) <1CC4D486-74F8-3459-BBA1-F68A36C5CAF8> /System/Library/Frameworks/ApplicationServices.framework/Versions/A/Frameworks/ATS.framework/Versions/A/Resources/libFontRegistry.dylib
    0x7fff4ff54000 -     0x7fff4ff87ff7  libTrueTypeScaler.dylib (228.6) <760BF895-3D7A-36E2-B97C-6775C3615A1D> /System/Library/Frameworks/ApplicationServices.framework/Versions/A/Frameworks/ATS.framework/Versions/A/Resources/libTrueTypeScaler.dylib
    0x7fff4fff1000 -     0x7fff4fff5ff3  com.apple.ColorSyncLegacy (4.13.0 - 1) <4B1238CC-9B77-3AA5-8329-EE3C736F07EA> /System/Library/Frameworks/ApplicationServices.framework/Versions/A/Frameworks/ColorSyncLegacy.framework/Versions/A/ColorSyncLegacy
    0x7fff50092000 -     0x7fff500e4ff3  com.apple.HIServices (1.22 - 627.14.2) <1F851BF9-AD29-3558-9EA5-AAD9BAAAC823> /System/Library/Frameworks/ApplicationServices.framework/Versions/A/Frameworks/HIServices.framework/Versions/A/HIServices
    0x7fff500e5000 -     0x7fff500f3ff3  com.apple.LangAnalysis (1.7.0 - 1.7.0) <5654723A-7B3B-391F-B9F7-0DE4D5940185> /System/Library/Frameworks/ApplicationServices.framework/Versions/A/Frameworks/LangAnalysis.framework/Versions/A/LangAnalysis
    0x7fff500f4000 -     0x7fff50140fff  com.apple.print.framework.PrintCore (14.2 - 503.8) <F1246C9A-2216-3390-8DF1-89304F47CE5D> /System/Library/Frameworks/ApplicationServices.framework/Versions/A/Frameworks/PrintCore.framework/Versions/A/PrintCore
    0x7fff50141000 -     0x7fff5017cff7  com.apple.QD (3.12 - 407.2) <F6B648DA-DA39-3EB4-B593-1B7E316661CD> /System/Library/Frameworks/ApplicationServices.framework/Versions/A/Frameworks/QD.framework/Versions/A/QD
    0x7fff5017d000 -     0x7fff50189ff7  com.apple.speech.synthesis.framework (8.1.0 - 8.1.0) <CF19C8B6-AAD5-3DCF-ABD0-3BABB44D119C> /System/Library/Frameworks/ApplicationServices.framework/Versions/A/Frameworks/SpeechSynthesis.framework/Versions/A/SpeechSynthesis
    0x7fff5018a000 -     0x7fff50427fff  com.apple.audio.toolbox.AudioToolbox (1.14 - 1.14) <5D484151-F269-3D98-B507-0544A6B950AC> /System/Library/Frameworks/AudioToolbox.framework/Versions/A/AudioToolbox
    0x7fff50429000 -     0x7fff50429fff  com.apple.audio.units.AudioUnit (1.14 - 1.14) <91100E0A-C14D-3E6C-B095-0C4109AC6694> /System/Library/Frameworks/AudioUnit.framework/Versions/A/AudioUnit
    0x7fff5078d000 -     0x7fff50b4efff  com.apple.CFNetwork (976 - 976) <10F464AD-6687-3012-A2AA-0453629CA968> /System/Library/Frameworks/CFNetwork.framework/Versions/A/CFNetwork
    0x7fff50b63000 -     0x7fff50b63fff  com.apple.Carbon (158 - 158) <D6170F31-7A8A-3D4F-91DA-E11CF33E62B4> /System/Library/Frameworks/Carbon.framework/Versions/A/Carbon
    0x7fff50b64000 -     0x7fff50b67ffb  com.apple.CommonPanels (1.2.6 - 98) <775C94BE-EC00-315F-96E0-F0C1CD6EE3F4> /System/Library/Frameworks/Carbon.framework/Versions/A/Frameworks/CommonPanels.framework/Versions/A/CommonPanels
    0x7fff50b68000 -     0x7fff50e6fff7  com.apple.HIToolbox (2.1.1 - 917.3) <B2FEF0F3-CBA0-3FD9-93FC-E3A13DCB8C49> /System/Library/Frameworks/Carbon.framework/Versions/A/Frameworks/HIToolbox.framework/Versions/A/HIToolbox
    0x7fff50e70000 -     0x7fff50e73ffb  com.apple.help (1.3.8 - 66) <0C6CC127-A860-30D2-8434-6CC3CAFFB030> /System/Library/Frameworks/Carbon.framework/Versions/A/Frameworks/Help.framework/Versions/A/Help
    0x7fff50e74000 -     0x7fff50e79ff7  com.apple.ImageCapture (9.0 - 1530.1) <72ABBF32-531B-3B04-926D-E14B8D9003A8> /System/Library/Frameworks/Carbon.framework/Versions/A/Frameworks/ImageCapture.framework/Versions/A/ImageCapture
    0x7fff50e7a000 -     0x7fff50f0eff3  com.apple.ink.framework (10.9 - 225) <344AACCC-E997-3498-8B1D-2EFD3A889205> /System/Library/Frameworks/Carbon.framework/Versions/A/Frameworks/Ink.framework/Versions/A/Ink
    0x7fff50f0f000 -     0x7fff50f29fff  com.apple.openscripting (1.7 - 179) <A57FC4DB-4C51-3ABB-842F-9578991043E3> /System/Library/Frameworks/Carbon.framework/Versions/A/Frameworks/OpenScripting.framework/Versions/A/OpenScripting
    0x7fff50f4a000 -     0x7fff50f4bfff  com.apple.print.framework.Print (14.2 - 267.4) <618D290C-2EA0-3959-A2A8-FB7B61DA92DD> /System/Library/Frameworks/Carbon.framework/Versions/A/Frameworks/Print.framework/Versions/A/Print
    0x7fff50f4c000 -     0x7fff50f4eff7  com.apple.securityhi (9.0 - 55006) <2FE1EB07-F717-3E89-9662-8BA7C17C6AEC> /System/Library/Frameworks/Carbon.framework/Versions/A/Frameworks/SecurityHI.framework/Versions/A/SecurityHI
    0x7fff50f4f000 -     0x7fff50f55ff7  com.apple.speech.recognition.framework (6.0.3 - 6.0.3) <F7E95C56-19E8-30A1-9594-84D4DD89F6D4> /System/Library/Frameworks/Carbon.framework/Versions/A/Frameworks/SpeechRecognition.framework/Versions/A/SpeechRecognition
    0x7fff50f56000 -     0x7fff5107dffb  com.apple.cloudkit.CloudKit (736.150 - 736.150) <370D80BA-D836-3CEC-94B7-C5372F297F6F> /System/Library/Frameworks/CloudKit.framework/Versions/A/CloudKit
    0x7fff5107e000 -     0x7fff5107efff  com.apple.Cocoa (6.11 - 23) <D0BED932-C061-33E9-9F59-ECE0BA9F7EEB> /System/Library/Frameworks/Cocoa.framework/Versions/A/Cocoa
    0x7fff5107f000 -     0x7fff5108bffb  com.apple.Collaboration (81 - 81) <62046CF5-35AF-31BD-B984-C3598FBBF837> /System/Library/Frameworks/Collaboration.framework/Versions/A/Collaboration
    0x7fff5108c000 -     0x7fff51158fff  com.apple.ColorSync (4.13.0 - 3340) <2F45EB01-0C51-3D25-9836-18F99222E1C7> /System/Library/Frameworks/ColorSync.framework/Versions/A/ColorSync
    0x7fff51159000 -     0x7fff5124dff3  com.apple.contacts (1.0 - 2901) <CCA1647C-9A78-31AD-A300-53F5797DBDF9> /System/Library/Frameworks/Contacts.framework/Versions/A/Contacts
    0x7fff5124e000 -     0x7fff512f2ffb  com.apple.ContactsUI (11.0 - 1890) <D4298AAE-DBC0-3774-96B5-950AAC1B1D16> /System/Library/Frameworks/ContactsUI.framework/Versions/A/ContactsUI
    0x7fff512f3000 -     0x7fff51383fff  com.apple.audio.CoreAudio (4.3.0 - 4.3.0) <1E7EF105-B843-370D-884E-0A43E1A5800B> /System/Library/Frameworks/CoreAudio.framework/Versions/A/CoreAudio
    0x7fff513e9000 -     0x7fff51414ff7  com.apple.CoreBluetooth (1.0 - 1) <F041753E-7709-3FA4-ADA3-6B37296D92FB> /System/Library/Frameworks/CoreBluetooth.framework/Versions/A/CoreBluetooth
    0x7fff51415000 -     0x7fff517b6fef  com.apple.CoreData (120 - 866.1) <18CD58FD-513E-385B-B43C-08EEB909709C> /System/Library/Frameworks/CoreData.framework/Versions/A/CoreData
    0x7fff517b7000 -     0x7fff518a0ff7  com.apple.CoreDisplay (101.3 - 106.2) <EE0D334B-8B71-3A70-9F90-677171D6762F> /System/Library/Frameworks/CoreDisplay.framework/Versions/A/CoreDisplay
    0x7fff518a1000 -     0x7fff51ceeff7  com.apple.CoreFoundation (6.9 - 1561) <AC90EE38-93D9-35EF-8359-9FE3A42500D4> /System/Library/Frameworks/CoreFoundation.framework/Versions/A/CoreFoundation
    0x7fff51cf0000 -     0x7fff5237dff7  com.apple.CoreGraphics (2.0 - 1249.2) <3AC6DEB1-245B-3E3A-B5CF-791A37237775> /System/Library/Frameworks/CoreGraphics.framework/Versions/A/CoreGraphics
    0x7fff5237f000 -     0x7fff526a8fff  com.apple.CoreImage (14.2.0 - 720.0.130) <8C8BC619-7084-3F58-BBFC-4A97BD330787> /System/Library/Frameworks/CoreImage.framework/Versions/A/CoreImage
    0x7fff526a9000 -     0x7fff5272afff  com.apple.corelocation (2245.8.21) <92417078-F654-316A-8B67-0390521AD17C> /System/Library/Frameworks/CoreLocation.framework/Versions/A/CoreLocation
    0x7fff5278a000 -     0x7fff529f8ff7  com.apple.CoreML (1.0 - 1) <B2D4BE60-846A-3809-886B-F9FE70FE95AB> /System/Library/Frameworks/CoreML.framework/Versions/A/CoreML
    0x7fff529f9000 -     0x7fff52afaff7  com.apple.CoreMedia (1.0 - 2284.9) <4662B44E-F463-3FC8-A643-2195FF10A3E4> /System/Library/Frameworks/CoreMedia.framework/Versions/A/CoreMedia
    0x7fff52afb000 -     0x7fff52b5dfff  com.apple.CoreMediaIO (900.0 - 5025) <7200894C-68E6-396A-90F1-389BB32EAC86> /System/Library/Frameworks/CoreMediaIO.framework/Versions/A/CoreMediaIO
    0x7fff52b5e000 -     0x7fff52b5efff  com.apple.CoreServices (941 - 941) <950D3EAF-C98E-3BCB-8FD9-43EEA0E48988> /System/Library/Frameworks/CoreServices.framework/Versions/A/CoreServices
    0x7fff52b5f000 -     0x7fff52bddffb  com.apple.AE (771 - 771) <4B009524-699E-3891-98DD-E3B6BB433C8F> /System/Library/Frameworks/CoreServices.framework/Versions/A/Frameworks/AE.framework/Versions/A/AE
    0x7fff52bde000 -     0x7fff52eb6ff7  com.apple.CoreServices.CarbonCore (1178.16 - 1178.16) <17FC2B9E-EB6C-3768-A2D0-6E086F2563D9> /System/Library/Frameworks/CoreServices.framework/Versions/A/Frameworks/CarbonCore.framework/Versions/A/CarbonCore
    0x7fff52eb7000 -     0x7fff52f01ff7  com.apple.DictionaryServices (1.2 - 284.16.3) <1DAC9153-FB5A-3798-8797-CBFEFF227F71> /System/Library/Frameworks/CoreServices.framework/Versions/A/Frameworks/DictionaryServices.framework/Versions/A/DictionaryServices
    0x7fff52f02000 -     0x7fff52f0affb  com.apple.CoreServices.FSEvents (1239.200.12 - 1239.200.12) <8E1507EA-F0A8-3845-B32D-4FBC1381E89C> /System/Library/Frameworks/CoreServices.framework/Versions/A/Frameworks/FSEvents.framework/Versions/A/FSEvents
    0x7fff52f0b000 -     0x7fff530d6fff  com.apple.LaunchServices (941 - 941) <98B7E20E-5D0A-3A71-A019-346A145A1A5E> /System/Library/Frameworks/CoreServices.framework/Versions/A/Frameworks/LaunchServices.framework/Versions/A/LaunchServices
    0x7fff530d7000 -     0x7fff53179fff  com.apple.Metadata (10.7.0 - 1191.53) <E4C1B7AB-677B-32B2-918C-CD445A0D0D91> /System/Library/Frameworks/CoreServices.framework/Versions/A/Frameworks/Metadata.framework/Versions/A/Metadata
    0x7fff5317a000 -     0x7fff531c5ff7  com.apple.CoreServices.OSServices (941 - 941) <DFA21754-BFE4-367C-9303-739F5D3E9DDE> /System/Library/Frameworks/CoreServices.framework/Versions/A/Frameworks/OSServices.framework/Versions/A/OSServices
    0x7fff531c6000 -     0x7fff53234ff7  com.apple.SearchKit (1.4.0 - 1.4.0) <CEC29BB5-D28E-3424-84FE-70756E521F3B> /System/Library/Frameworks/CoreServices.framework/Versions/A/Frameworks/SearchKit.framework/Versions/A/SearchKit
    0x7fff53235000 -     0x7fff53259ffb  com.apple.coreservices.SharedFileList (71.27 - 71.27) <6389B59D-DDAC-3C97-A982-137B9B1FB734> /System/Library/Frameworks/CoreServices.framework/Versions/A/Frameworks/SharedFileList.framework/Versions/A/SharedFileList
    0x7fff5325a000 -     0x7fff532bdfff  com.apple.CoreSpotlight (1.0 - 231.47) <4BE884BD-CA78-3363-9095-51C1347D0D3B> /System/Library/Frameworks/CoreSpotlight.framework/Versions/A/CoreSpotlight
    0x7fff534c8000 -     0x7fff535a0fff  com.apple.CoreTelephony (113 - 6610.1) <A6166B48-A128-3A48-96A2-1CDE8599AC95> /System/Library/Frameworks/CoreTelephony.framework/Versions/A/CoreTelephony
    0x7fff535a1000 -     0x7fff53706ffb  com.apple.CoreText (352.0 - 584.26) <5F61037C-825D-37A4-9091-0047413CC213> /System/Library/Frameworks/CoreText.framework/Versions/A/CoreText
    0x7fff53707000 -     0x7fff53744fff  com.apple.CoreVideo (1.8 - 0.0) <34EC73F1-F0ED-32F5-B96E-7683B1F9A7A2> /System/Library/Frameworks/CoreVideo.framework/Versions/A/CoreVideo
    0x7fff53745000 -     0x7fff537dbffb  com.apple.framework.CoreWLAN (13.0 - 1370.8) <32426190-3455-3049-8C09-0EC04D9C1279> /System/Library/Frameworks/CoreWLAN.framework/Versions/A/CoreWLAN
    0x7fff5396b000 -     0x7fff53976ffb  com.apple.DirectoryService.Framework (10.14 - 207.200.4) <14C33C2D-0D4E-3A86-ABD3-CA6893B7145E> /System/Library/Frameworks/DirectoryService.framework/Versions/A/DirectoryService
    0x7fff53977000 -     0x7fff53a31ff7  com.apple.DiscRecording (9.0.3 - 9030.4.5) <D3B4878A-60DF-3B9E-BF29-D02B5CDA7738> /System/Library/Frameworks/DiscRecording.framework/Versions/A/DiscRecording
    0x7fff53a58000 -     0x7fff53a5dfff  com.apple.DiskArbitration (2.7 - 2.7) <97707A79-30E7-3D99-AA20-B992B0900BC4> /System/Library/Frameworks/DiskArbitration.framework/Versions/A/DiskArbitration
    0x7fff53c26000 -     0x7fff53ff4fff  com.apple.Foundation (6.9 - 1561) <27FD022F-F0E3-3053-BADA-DF9BF856CA85> /System/Library/Frameworks/Foundation.framework/Versions/C/Foundation
    0x7fff54065000 -     0x7fff54095ff3  com.apple.GSS (4.0 - 2.0) <86D07291-5DFC-30C2-9A18-5FCEDB0BE621> /System/Library/Frameworks/GSS.framework/Versions/A/GSS
    0x7fff541af000 -     0x7fff542b9ff3  com.apple.Bluetooth (6.0.9 - 6.0.9f2) <CD9FA230-8BBB-307C-8FFF-86B1B7078D05> /System/Library/Frameworks/IOBluetooth.framework/Versions/A/IOBluetooth
    0x7fff5431b000 -     0x7fff543adff7  com.apple.framework.IOKit (2.0.2 - 1483.230.1) <AAAF13D1-80E5-3079-98C1-FA3C3FC47B40> /System/Library/Frameworks/IOKit.framework/Versions/A/IOKit
    0x7fff543af000 -     0x7fff543b9ff7  com.apple.IOSurface (255.1 - 255.1) <58826B1A-38E8-3C76-8FFC-76C9282DA893> /System/Library/Frameworks/IOSurface.framework/Versions/A/IOSurface
    0x7fff543ba000 -     0x7fff5440fff3  com.apple.ImageCaptureCore (1.0 - 1530.1) <37ACF858-C897-390C-BF3B-A66E47618E41> /System/Library/Frameworks/ImageCaptureCore.framework/Versions/A/ImageCaptureCore
    0x7fff54410000 -     0x7fff545aefff  com.apple.ImageIO.framework (3.3.0 - 1822.1) <908907D5-5C29-32F7-ACD9-C6A6D51C4D15> /System/Library/Frameworks/ImageIO.framework/Versions/A/ImageIO
    0x7fff545af000 -     0x7fff545b3ffb  libGIF.dylib (1822.1) <35E37B95-1962-3A25-9C9E-CADD161152B3> /System/Library/Frameworks/ImageIO.framework/Versions/A/Resources/libGIF.dylib
    0x7fff545b4000 -     0x7fff54699fe7  libJP2.dylib (1822.1) <BDBCBF28-12DB-3D63-B6F0-A559D1839F81> /System/Library/Frameworks/ImageIO.framework/Versions/A/Resources/libJP2.dylib
    0x7fff5469a000 -     0x7fff546bfff7  libJPEG.dylib (1822.1) <D443C754-4AFC-38E1-9E45-D309ACBCE17B> /System/Library/Frameworks/ImageIO.framework/Versions/A/Resources/libJPEG.dylib
    0x7fff54992000 -     0x7fff549b8fe7  libPng.dylib (1822.1) <28FE6E2C-1A17-3A84-AAF3-76014DEADDD4> /System/Library/Frameworks/ImageIO.framework/Versions/A/Resources/libPng.dylib
    0x7fff549b9000 -     0x7fff549bbff7  libRadiance.dylib (1822.1) <687906E3-4EC2-3CE9-B7EA-34418239EE1B> /System/Library/Frameworks/ImageIO.framework/Versions/A/Resources/libRadiance.dylib
    0x7fff549bc000 -     0x7fff54a0affb  libTIFF.dylib (1822.1) <0A1C083B-CE2F-3A00-8E45-EB58DCA2FF34> /System/Library/Frameworks/ImageIO.framework/Versions/A/Resources/libTIFF.dylib
    0x7fff54a25000 -     0x7fff54d09ff3  com.apple.Intents (1.0 - 1) <99B00F20-FC70-3FFD-984F-641EABEDAED6> /System/Library/Frameworks/Intents.framework/Versions/A/Intents
    0x7fff54d0c000 -     0x7fff55a9cfff  com.apple.JavaScriptCore (14606 - 14606.3.4) <1ED1116C-80DA-3C92-92A3-8F166773751B> /System/Library/Frameworks/JavaScriptCore.framework/Versions/A/JavaScriptCore
    0x7fff55ab4000 -     0x7fff55acdfff  com.apple.Kerberos (3.0 - 1) <5D1B0593-3C0E-32D5-AAE5-ABC22A98B639> /System/Library/Frameworks/Kerberos.framework/Versions/A/Kerberos
    0x7fff55ace000 -     0x7fff55b03ffb  com.apple.LDAPFramework (2.4.28 - 194.5) <50FCA7E8-3A67-39B2-B504-6CB32FA8611F> /System/Library/Frameworks/LDAP.framework/Versions/A/LDAP
    0x7fff55b04000 -     0x7fff55b26ff7  com.apple.speech.LatentSemanticMappingFramework (2.12.3 - 2.12.3) <742B2A71-4A5B-33A3-9031-492698DE391F> /System/Library/Frameworks/LatentSemanticMapping.framework/Versions/A/LatentSemanticMapping
    0x7fff55b53000 -     0x7fff55b71ff3  com.apple.CoreAuthentication.SharedUtils (1.0 - 425.230.2) <FC792E7F-0D30-39FE-86BC-8AC990D3FD45> /System/Library/Frameworks/LocalAuthentication.framework/Support/SharedUtils.framework/Versions/A/SharedUtils
    0x7fff55b72000 -     0x7fff55b88fff  com.apple.LocalAuthentication (1.0 - 425.230.2) <CD7EF5CD-768F-3925-BBE1-40C4AE39241B> /System/Library/Frameworks/LocalAuthentication.framework/Versions/A/LocalAuthentication
    0x7fff55b89000 -     0x7fff55d89ff7  com.apple.MapKit (1.0 - 1832.22.10.1.5) <6E713D3B-9A89-3396-BA65-A9EE76EF92B8> /System/Library/Frameworks/MapKit.framework/Versions/A/MapKit
    0x7fff55d8b000 -     0x7fff55d95fff  com.apple.MediaAccessibility (1.0 - 114.4) <C0584BAA-27BC-30F4-8B0C-5043559995AA> /System/Library/Frameworks/MediaAccessibility.framework/Versions/A/MediaAccessibility
    0x7fff55d96000 -     0x7fff55daafff  com.apple.MediaLibrary (1.5.0 - 762) <F0C31076-8874-386D-A1FF-11F591596D94> /System/Library/Frameworks/MediaLibrary.framework/Versions/A/MediaLibrary
    0x7fff55dab000 -     0x7fff55e4efff  com.apple.MediaPlayer (1.0 - 1.0) <A16261FB-4047-3B8C-8171-41CA57B45210> /System/Library/Frameworks/MediaPlayer.framework/Versions/A/MediaPlayer
    0x7fff55e4f000 -     0x7fff564edfff  com.apple.MediaToolbox (1.0 - 2284.9) <AD1C6882-F6FC-3114-9517-CCF9402A30B1> /System/Library/Frameworks/MediaToolbox.framework/Versions/A/MediaToolbox
    0x7fff564ef000 -     0x7fff56582fff  com.apple.Metal (158.5 - 158.5) <219312CC-0DE5-3E8D-9F62-393D0C35B0FD> /System/Library/Frameworks/Metal.framework/Versions/A/Metal
    0x7fff56584000 -     0x7fff5659eff3  com.apple.MetalKit (1.0 - 113) <E885A008-79EC-33BF-BB03-5586DA6569DA> /System/Library/Frameworks/MetalKit.framework/Versions/A/MetalKit
    0x7fff5659f000 -     0x7fff565bfff7  com.apple.MetalPerformanceShaders.MPSCore (1.0 - 1) <18281B14-0C6A-38F8-AB80-2D4BB0743C88> /System/Library/Frameworks/MetalPerformanceShaders.framework/Frameworks/MPSCore.framework/Versions/A/MPSCore
    0x7fff565c0000 -     0x7fff5663eff7  com.apple.MetalPerformanceShaders.MPSImage (1.0 - 1) <BEAF764B-362B-3C45-86F5-2AFBA5FA0F47> /System/Library/Frameworks/MetalPerformanceShaders.framework/Frameworks/MPSImage.framework/Versions/A/MPSImage
    0x7fff5663f000 -     0x7fff56667fff  com.apple.MetalPerformanceShaders.MPSMatrix (1.0 - 1) <116D6C1A-2FD7-3743-95A0-CDDA3D459529> /System/Library/Frameworks/MetalPerformanceShaders.framework/Frameworks/MPSMatrix.framework/Versions/A/MPSMatrix
    0x7fff56668000 -     0x7fff5679aff7  com.apple.MetalPerformanceShaders.MPSNeuralNetwork (1.0 - 1) <88E80BEE-3D2B-328B-80D4-F4717BDB2E9F> /System/Library/Frameworks/MetalPerformanceShaders.framework/Frameworks/MPSNeuralNetwork.framework/Versions/A/MPSNeuralNetwork
    0x7fff5679b000 -     0x7fff567b6ff7  com.apple.MetalPerformanceShaders.MPSRayIntersector (1.0 - 1) <E0E652B0-1624-3435-AD60-83A9C4B59852> /System/Library/Frameworks/MetalPerformanceShaders.framework/Frameworks/MPSRayIntersector.framework/Versions/A/MPSRayIntersector
    0x7fff567b7000 -     0x7fff567b7ff7  com.apple.MetalPerformanceShaders.MetalPerformanceShaders (1.0 - 1) <1BBA8BC8-49C6-3C9B-B985-7CE4373E3553> /System/Library/Frameworks/MetalPerformanceShaders.framework/Versions/A/MetalPerformanceShaders
    0x7fff579b4000 -     0x7fff579c0ffb  com.apple.NetFS (6.0 - 4.0) <918DF6CD-2DB0-36A8-B869-5EF637A06C0D> /System/Library/Frameworks/NetFS.framework/Versions/A/NetFS
    0x7fff579c1000 -     0x7fff57b00ff7  com.apple.Network (1.0 - 1) <2D115B5C-2570-37C3-919D-DE80230BC4FA> /System/Library/Frameworks/Network.framework/Versions/A/Network
    0x7fff57b01000 -     0x7fff57ccbfff  com.apple.NetworkExtension (1.0 - 1) <A7AF4202-5F13-3A16-84FC-37860290288A> /System/Library/Frameworks/NetworkExtension.framework/Versions/A/NetworkExtension
    0x7fff5a480000 -     0x7fff5a4d8fff  com.apple.opencl (2.15.1 - 2.15.1) <E628D178-3846-373A-9482-CF680BD1E240> /System/Library/Frameworks/OpenCL.framework/Versions/A/OpenCL
    0x7fff5a4d9000 -     0x7fff5a4f5ff7  com.apple.CFOpenDirectory (10.14 - 207.200.4) <2CB1F122-2FA0-347C-8454-9CE0FA150832> /System/Library/Frameworks/OpenDirectory.framework/Versions/A/Frameworks/CFOpenDirectory.framework/Versions/A/CFOpenDirectory
    0x7fff5a4f6000 -     0x7fff5a502ffb  com.apple.OpenDirectory (10.14 - 207.200.4) <A3FB0F0C-57F4-3F89-A4B1-63DA1F7C9E8E> /System/Library/Frameworks/OpenDirectory.framework/Versions/A/OpenDirectory
    0x7fff5ae65000 -     0x7fff5ae67fff  libCVMSPluginSupport.dylib (17.3.1) <4D6061EC-CFCD-3C0E-90E4-51644DC5F76A> /System/Library/Frameworks/OpenGL.framework/Versions/A/Libraries/libCVMSPluginSupport.dylib
    0x7fff5ae68000 -     0x7fff5ae6dff3  libCoreFSCache.dylib (163.20) <566DB80E-F1D6-3AEC-AF06-08955507AFEE> /System/Library/Frameworks/OpenGL.framework/Versions/A/Libraries/libCoreFSCache.dylib
    0x7fff5ae6e000 -     0x7fff5ae72fff  libCoreVMClient.dylib (163.20) <B9A89373-BDCD-3003-9A82-6D73B930A122> /System/Library/Frameworks/OpenGL.framework/Versions/A/Libraries/libCoreVMClient.dylib
    0x7fff5ae73000 -     0x7fff5ae7bffb  libGFXShared.dylib (17.3.1) <902F535E-E411-3C3B-B980-0A7DB40EA5B7> /System/Library/Frameworks/OpenGL.framework/Versions/A/Libraries/libGFXShared.dylib
    0x7fff5ae7c000 -     0x7fff5ae87fff  libGL.dylib (17.3.1) <87F8CCDB-2D7D-3B01-AA6F-6C7A4B1CA11E> /System/Library/Frameworks/OpenGL.framework/Versions/A/Libraries/libGL.dylib
    0x7fff5ae88000 -     0x7fff5aec2fef  libGLImage.dylib (17.3.1) <B5464F1A-B936-3BEE-97CF-3806AD1A9E68> /System/Library/Frameworks/OpenGL.framework/Versions/A/Libraries/libGLImage.dylib
    0x7fff5b036000 -     0x7fff5b073fff  libGLU.dylib (17.3.1) <C46D4335-4CE2-3FFB-930D-E48D7A3B5B4F> /System/Library/Frameworks/OpenGL.framework/Versions/A/Libraries/libGLU.dylib
    0x7fff5ba23000 -     0x7fff5ba32ff3  com.apple.opengl (17.3.1 - 17.3.1) <78BDC7C4-87AD-33CA-BFAC-A9CC5F605B5D> /System/Library/Frameworks/OpenGL.framework/Versions/A/OpenGL
    0x7fff5bc99000 -     0x7fff5bcc3ffb  com.apple.frameworks.preferencepanes (16.0 - 16.0) <6B137971-C811-330C-AA22-312808036C85> /System/Library/Frameworks/PreferencePanes.framework/Versions/A/PreferencePanes
    0x7fff5bdb4000 -     0x7fff5befefff  com.apple.QTKit (7.7.3 - 3034) <AC7659AF-7C10-3B3A-9F8B-DCDB0CA4A7A3> /System/Library/Frameworks/QTKit.framework/Versions/A/QTKit
    0x7fff5beff000 -     0x7fff5c15afff  com.apple.imageKit (3.0 - 1067) <11CB6270-C823-37F7-AC3B-6D968234C1B2> /System/Library/Frameworks/Quartz.framework/Versions/A/Frameworks/ImageKit.framework/Versions/A/ImageKit
    0x7fff5c15b000 -     0x7fff5c247fff  com.apple.PDFKit (1.0 - 737.3) <04B606F5-0895-38FC-9AD1-50F55FEBF091> /System/Library/Frameworks/Quartz.framework/Versions/A/Frameworks/PDFKit.framework/Versions/A/PDFKit
    0x7fff5c248000 -     0x7fff5c75eff7  com.apple.QuartzComposer (5.1 - 370) <308E8021-B380-3C4C-96CF-FDAE19DABCD1> /System/Library/Frameworks/Quartz.framework/Versions/A/Frameworks/QuartzComposer.framework/Versions/A/QuartzComposer
    0x7fff5c75f000 -     0x7fff5c785ff3  com.apple.quartzfilters (1.10.0 - 83) <0DE04622-B09F-3BB4-885A-DD3335641F28> /System/Library/Frameworks/Quartz.framework/Versions/A/Frameworks/QuartzFilters.framework/Versions/A/QuartzFilters
    0x7fff5c786000 -     0x7fff5c88cff7  com.apple.QuickLookUIFramework (5.0 - 775.3) <2495B91A-484A-3EF7-9554-38B168D856C8> /System/Library/Frameworks/Quartz.framework/Versions/A/Frameworks/QuickLookUI.framework/Versions/A/QuickLookUI
    0x7fff5c88d000 -     0x7fff5c88dfff  com.apple.quartzframework (1.5 - 23) <E30BB2B1-985E-3DD4-B123-9C749820B896> /System/Library/Frameworks/Quartz.framework/Versions/A/Quartz
    0x7fff5c88e000 -     0x7fff5cae7fff  com.apple.QuartzCore (1.11 - 695.4) <6692906D-9EF7-3EA0-96D3-3766567AE7F2> /System/Library/Frameworks/QuartzCore.framework/Versions/A/QuartzCore
    0x7fff5cae8000 -     0x7fff5cb41ff7  com.apple.QuickLookFramework (5.0 - 775.3) <9A3F3BE7-49B1-3F53-BFC0-42F41EE363B9> /System/Library/Frameworks/QuickLook.framework/Versions/A/QuickLook
    0x7fff5cd08000 -     0x7fff5cd20ffb  com.apple.SafariServices.framework (14606 - 14606.3.4) <FFEBDEBE-4310-3A43-8B57-BD6552D841C1> /System/Library/Frameworks/SafariServices.framework/Versions/A/SafariServices
    0x7fff5d33b000 -     0x7fff5d663fff  com.apple.security (7.0 - 58286.230.21) <5ADE179E-87D5-3B90-9172-D183D4665037> /System/Library/Frameworks/Security.framework/Versions/A/Security
    0x7fff5d664000 -     0x7fff5d6f3fff  com.apple.securityfoundation (6.0 - 55185.200.14) <A57F481C-73B9-33C4-9093-9A06DBBFEDE5> /System/Library/Frameworks/SecurityFoundation.framework/Versions/A/SecurityFoundation
    0x7fff5d6f4000 -     0x7fff5d724ffb  com.apple.securityinterface (10.0 - 55109.200.8) <0BB040DA-B3AF-37B1-AC17-C9639BE00094> /System/Library/Frameworks/SecurityInterface.framework/Versions/A/SecurityInterface
    0x7fff5d725000 -     0x7fff5d729ff3  com.apple.xpc.ServiceManagement (1.0 - 1) <16FA4DAF-A0BE-34C0-B5F1-5C30BE3DCD2D> /System/Library/Frameworks/ServiceManagement.framework/Versions/A/ServiceManagement
    0x7fff5d72a000 -     0x7fff5d773ff3  com.apple.sociald.Social (???) <59ED301E-AAC6-37AA-9A35-1AC195816C39> /System/Library/Frameworks/Social.framework/Versions/A/Social
    0x7fff5dae6000 -     0x7fff5db56ff3  com.apple.SystemConfiguration (1.17 - 1.17) <A8FD596E-C858-397F-836C-978038B97AC0> /System/Library/Frameworks/SystemConfiguration.framework/Versions/A/SystemConfiguration
    0x7fff5dd09000 -     0x7fff5dd3dffb  com.apple.UserNotifications (1.0 - ???) <12C54789-3052-364D-BC85-6A6208CCAF01> /System/Library/Frameworks/UserNotifications.framework/Versions/A/UserNotifications
    0x7fff5ddb7000 -     0x7fff5e119fff  com.apple.VideoToolbox (1.0 - 2284.9) <695514F0-08C8-3065-B9A2-DA3B43E6682F> /System/Library/Frameworks/VideoToolbox.framework/Versions/A/VideoToolbox
    0x7fff5e426000 -     0x7fff5e9b4fe7  libwebrtc.dylib (7606.3.4) <2B6BCB12-2AAB-33FE-9A9F-623E45198277> /System/Library/Frameworks/WebKit.framework/Versions/A/Frameworks/WebCore.framework/Versions/A/Frameworks/libwebrtc.dylib
    0x7fff5e9b5000 -     0x7fff60238fff  com.apple.WebCore (14606 - 14606.3.4) <5850DB6F-8918-3276-BE73-FE7F3C63E2F9> /System/Library/Frameworks/WebKit.framework/Versions/A/Frameworks/WebCore.framework/Versions/A/WebCore
    0x7fff60239000 -     0x7fff60428ffb  com.apple.WebKitLegacy (14606 - 14606.3.4) <1E02B848-D322-3CDF-B872-1C0CBD88DF70> /System/Library/Frameworks/WebKit.framework/Versions/A/Frameworks/WebKitLegacy.framework/Versions/A/WebKitLegacy
    0x7fff60429000 -     0x7fff60928ff3  com.apple.WebKit (14606 - 14606.3.4) <86C207C2-21F2-3E8B-997C-70B7B252231E> /System/Library/Frameworks/WebKit.framework/Versions/A/WebKit
    0x7fff609c0000 -     0x7fff60a10ff7  com.apple.AOSAccounts (1.3.1 - 89.3.0.5) <BD532E48-424A-3340-8D36-D98B419DECD9> /System/Library/PrivateFrameworks/AOSAccounts.framework/Versions/A/AOSAccounts
    0x7fff60a13000 -     0x7fff60cdaffb  com.apple.AOSKit (1.07 - 270) <BCDA2FB8-D4A9-317D-87A8-329A220B28EF> /System/Library/PrivateFrameworks/AOSKit.framework/Versions/A/AOSKit
    0x7fff60cdb000 -     0x7fff60cdbffb  com.apple.AOSMigrate (1.0 - 1) <C7B1D179-A5D9-303D-91FC-B878D1F7DE89> /System/Library/PrivateFrameworks/AOSMigrate.framework/Versions/A/AOSMigrate
    0x7fff60cdc000 -     0x7fff60dc0ffb  com.apple.AOSUI (1.2 - 648.4.0.3) <E6149139-89F4-3400-9D1C-033EDF69579F> /System/Library/PrivateFrameworks/AOSUI.framework/Versions/A/AOSUI
    0x7fff60dc1000 -     0x7fff60e66ff7  com.apple.APFS (1.0 - 1) <5CA4B73F-3F5D-3289-9145-520FFDFD6813> /System/Library/PrivateFrameworks/APFS.framework/Versions/A/APFS
    0x7fff613fe000 -     0x7fff61408fff  com.apple.accessibility.AXCoreUtilities (1.0 - 1) <FB0245F9-5CB0-35E1-B96C-9E43B61BCB12> /System/Library/PrivateFrameworks/AXCoreUtilities.framework/Versions/A/AXCoreUtilities
    0x7fff615e5000 -     0x7fff61688ffb  com.apple.accounts.AccountsDaemon (113 - 113) <6A79E207-98BF-376B-A79D-07151FC63C1F> /System/Library/PrivateFrameworks/AccountsDaemon.framework/Versions/A/AccountsDaemon
    0x7fff61689000 -     0x7fff616baff7  com.apple.framework.accountsui (1.0 - 63.1.0.4) <30B2D922-9344-3FFD-8A61-660BC307B126> /System/Library/PrivateFrameworks/AccountsUI.framework/Versions/A/AccountsUI
    0x7fff61738000 -     0x7fff61894ffb  com.apple.AddressBook.core (1.0 - 1) <1A4C4333-099D-3E2F-AD6B-FD31BE6B1904> /System/Library/PrivateFrameworks/AddressBookCore.framework/Versions/A/AddressBookCore
    0x7fff618b0000 -     0x7fff618b1ff3  com.apple.AggregateDictionary (1.0 - 1) <EBA6443E-6CF0-34F6-B77A-3FCEC57F8F80> /System/Library/PrivateFrameworks/AggregateDictionary.framework/Versions/A/AggregateDictionary
    0x7fff61c5e000 -     0x7fff61da7ff3  com.apple.AnnotationKit (1.0 - 232.3.27) <E653A08F-5AEA-3314-9971-3FAEFC74812D> /System/Library/PrivateFrameworks/AnnotationKit.framework/Versions/A/AnnotationKit
    0x7fff61da8000 -     0x7fff61dc4ff7  com.apple.AppContainer (4.0 - 360.220.2) <852D4D20-EAB7-3489-82EB-646B87EF6A35> /System/Library/PrivateFrameworks/AppContainer.framework/Versions/A/AppContainer
    0x7fff61dc5000 -     0x7fff61dd2ff7  com.apple.AppSandbox (4.0 - 360.220.2) <E76CABB9-CA21-32F3-B607-1A2B84576088> /System/Library/PrivateFrameworks/AppSandbox.framework/Versions/A/AppSandbox
    0x7fff61e20000 -     0x7fff61e8bff3  com.apple.AppSupport (1.0.0 - 29) <00405672-0B9D-3A64-AD4C-655775017B8B> /System/Library/PrivateFrameworks/AppSupport.framework/Versions/A/AppSupport
    0x7fff61e8c000 -     0x7fff61eadfff  com.apple.AppSupportUI (1.0 - ???) <94BA868C-13F8-32C2-B747-C346104B7904> /System/Library/PrivateFrameworks/AppSupportUI.framework/Versions/A/AppSupportUI
    0x7fff61eae000 -     0x7fff61edaff7  com.apple.framework.Apple80211 (13.0 - 1376.2) <A71EADCB-7582-3D1B-9122-356F03E11594> /System/Library/PrivateFrameworks/Apple80211.framework/Versions/A/Apple80211
    0x7fff61edb000 -     0x7fff621b4fff  com.apple.AppleAccount (1.0 - 1.0) <2C4D7E2C-2D53-3FFD-AE38-88C6C822E32F> /System/Library/PrivateFrameworks/AppleAccount.framework/Versions/A/AppleAccount
    0x7fff621b6000 -     0x7fff621c5fcf  com.apple.AppleFSCompression (96.200.3 - 1.0) <78D538DD-1D24-34FC-AFB3-10411494870D> /System/Library/PrivateFrameworks/AppleFSCompression.framework/Versions/A/AppleFSCompression
    0x7fff622c3000 -     0x7fff622cefff  com.apple.AppleIDAuthSupport (1.0 - 1) <E41452B2-3AFB-3493-BB82-0CE6D04DF424> /System/Library/PrivateFrameworks/AppleIDAuthSupport.framework/Versions/A/AppleIDAuthSupport
    0x7fff622cf000 -     0x7fff6230eff3  com.apple.AppleIDSSOAuthentication (1.0 - 1) <A8236D40-784A-3671-8D1D-6BD3ADA7A5DC> /System/Library/PrivateFrameworks/AppleIDSSOAuthentication.framework/Versions/A/AppleIDSSOAuthentication
    0x7fff6230f000 -     0x7fff62358ff3  com.apple.AppleJPEG (1.0 - 1) <EC4C49F1-C060-3C0F-910F-3620985D4F12> /System/Library/PrivateFrameworks/AppleJPEG.framework/Versions/A/AppleJPEG
    0x7fff62359000 -     0x7fff62369ff3  com.apple.AppleLDAP (10.14 - 46.200.2) <08628E1D-0F03-356F-85C3-B0BA3F5EE8AC> /System/Library/PrivateFrameworks/AppleLDAP.framework/Versions/A/AppleLDAP
    0x7fff6236a000 -     0x7fff62584ff7  com.apple.AppleMediaServices (1.0 - 1) <2D993216-D5D2-30D8-8AAE-8F9ABF2BB4EA> /System/Library/PrivateFrameworks/AppleMediaServices.framework/Versions/A/AppleMediaServices
    0x7fff62585000 -     0x7fff625a5ffb  com.apple.aps.framework (4.0 - 4.0) <5BA14EE2-0E89-372D-96BE-F42D8C94267C> /System/Library/PrivateFrameworks/ApplePushService.framework/Versions/A/ApplePushService
    0x7fff625a6000 -     0x7fff625aaff7  com.apple.AppleSRP (5.0 - 1) <B16080FC-44D7-3E35-A151-A0DCE1764277> /System/Library/PrivateFrameworks/AppleSRP.framework/Versions/A/AppleSRP
    0x7fff625ab000 -     0x7fff625d3ff7  com.apple.applesauce (1.0 - ???) <58654BC0-9243-39D1-BC43-B7F2E37A3A44> /System/Library/PrivateFrameworks/AppleSauce.framework/Versions/A/AppleSauce
    0x7fff6269a000 -     0x7fff6269dff7  com.apple.AppleSystemInfo (3.1.5 - 3.1.5) <C6C7880A-5E69-3ADF-8D88-8DFA87FD6701> /System/Library/PrivateFrameworks/AppleSystemInfo.framework/Versions/A/AppleSystemInfo
    0x7fff6269e000 -     0x7fff626eefff  com.apple.AppleVAFramework (5.0.44 - 5.0.44) <0338350C-F366-3C0D-B7C1-6E8FFAB92E98> /System/Library/PrivateFrameworks/AppleVA.framework/Versions/A/AppleVA
    0x7fff6272f000 -     0x7fff62738ff7  com.apple.AskPermission (1.0 - 1) <1FB83D92-0752-30D9-A4E0-BC5700376B8C> /System/Library/PrivateFrameworks/AskPermission.framework/Versions/A/AskPermission
    0x7fff62739000 -     0x7fff6274fffb  com.apple.AssertionServices (1.0 - 1) <3F767D20-FE14-35CF-A089-E0445375ECFB> /System/Library/PrivateFrameworks/AssertionServices.framework/Versions/A/AssertionServices
    0x7fff62750000 -     0x7fff6276fffb  com.apple.AssetCacheServices (83.3 - 83.3) <8B68AAD3-DD2B-33A2-B4A3-23A667C7F028> /System/Library/PrivateFrameworks/AssetCacheServices.framework/Versions/A/AssetCacheServices
    0x7fff62789000 -     0x7fff62897ff7  com.apple.AssistantServices (1.0 - 1) <EC8CA28D-8386-3018-AAD2-E4A0D52858C7> /System/Library/PrivateFrameworks/AssistantServices.framework/Versions/A/AssistantServices
    0x7fff62a8b000 -     0x7fff62d2eff7  com.apple.AuthKit (1.0 - 1) <4FF8DA76-2250-39B9-B6A9-0E584C8B988F> /System/Library/PrivateFrameworks/AuthKit.framework/Versions/A/AuthKit
    0x7fff62d2f000 -     0x7fff62d9bff7  com.apple.AuthKitUI (1.0 - 1) <D1B79EB1-C87A-3451-A249-34B2B4CEB363> /System/Library/PrivateFrameworks/AuthKitUI.framework/Versions/A/AuthKitUI
    0x7fff62eff000 -     0x7fff62f08ff3  com.apple.coreservices.BackgroundTaskManagement (1.0 - 57.1) <05CF66F0-9650-3F75-9857-F8D186043866> /System/Library/PrivateFrameworks/BackgroundTaskManagement.framework/Versions/A/BackgroundTaskManagement
    0x7fff62f09000 -     0x7fff62fabfff  com.apple.backup.framework (1.10.2 - ???) <7C865F13-12F9-3E38-A4A3-31516EA869B2> /System/Library/PrivateFrameworks/Backup.framework/Versions/A/Backup
    0x7fff62fac000 -     0x7fff6301dffb  com.apple.BaseBoard (360.24 - 360.24) <04AF4372-C5D3-3F0A-A688-68D888D6D138> /System/Library/PrivateFrameworks/BaseBoard.framework/Versions/A/BaseBoard
    0x7fff63026000 -     0x7fff6302cff3  com.apple.BezelServicesFW (317 - 317) <331A9918-8D47-33C3-BA21-D88ECA9B9FA3> /System/Library/PrivateFrameworks/BezelServices.framework/Versions/A/BezelServices
    0x7fff6302d000 -     0x7fff6302fffb  com.apple.BioKitAggDLibrary (1.0 - 1) <3E6211F7-DD75-3835-9414-DE53CF6ED166> /System/Library/PrivateFrameworks/BioKitAggD.framework/Versions/A/BioKitAggD
    0x7fff63030000 -     0x7fff6306cff7  com.apple.BiometricKit (1.0 - 100.99) <645B76C1-0F8D-38B1-BB47-CA77911963E2> /System/Library/PrivateFrameworks/BiometricKit.framework/Versions/A/BiometricKit
    0x7fff630a7000 -     0x7fff630e3ffb  com.apple.bom (14.0 - 197) <6C1B9A69-C04A-3506-BD00-C116199AE635> /System/Library/PrivateFrameworks/Bom.framework/Versions/A/Bom
    0x7fff6316a000 -     0x7fff6316afff  com.apple.SafariDAVNotifier (1.1.1 - 1) <F4323245-F86F-3B31-97FA-D4E237F69579> /System/Library/PrivateFrameworks/BookmarkDAV.framework/Versions/A/Frameworks/SafariDAVNotifier.framework/Versions/A/SafariDAVNotifier
    0x7fff6316b000 -     0x7fff631c0ff3  com.apple.BridgeOSInstall (1.0 - 56.2) <9988DF1B-4E4D-328E-AA90-B7D5D383E85B> /System/Library/PrivateFrameworks/BridgeOSInstall.framework/Versions/A/BridgeOSInstall
    0x7fff631c4000 -     0x7fff631cbffb  com.apple.BridgeOSSoftwareUpdate (1.0 - 1) <F1B7F88F-4559-30C5-8E3A-897DC7E6420C> /System/Library/PrivateFrameworks/BridgeOSSoftwareUpdate.framework/Versions/A/BridgeOSSoftwareUpdate
    0x7fff631e4000 -     0x7fff63219fff  com.apple.C2 (1.3 - 438.19) <7B706E43-9D10-3090-BFFD-91BA3DA720BA> /System/Library/PrivateFrameworks/C2.framework/Versions/A/C2
    0x7fff633c9000 -     0x7fff633e8ffb  com.apple.CacheDelete (1.0 - 1) <47755D9A-7BAF-3B1D-8931-07D502676935> /System/Library/PrivateFrameworks/CacheDelete.framework/Versions/A/CacheDelete
    0x7fff637b1000 -     0x7fff637dffff  com.apple.CalendarAgentLink (8.0 - 250) <F4DFEE68-4243-3330-A650-794C208006A9> /System/Library/PrivateFrameworks/CalendarAgentLink.framework/Versions/A/CalendarAgentLink
    0x7fff63e12000 -     0x7fff63e1cff7  com.apple.CaptiveNetworkSupport (13.0 - 1) <3A5F7A1B-56A7-391B-B769-5379F306D96A> /System/Library/PrivateFrameworks/CaptiveNetwork.framework/Versions/A/CaptiveNetwork
    0x7fff63ec2000 -     0x7fff63f0ffff  com.apple.ChunkingLibrary (194 - 194) <8FEA3C6E-D9D0-3F12-9ACA-77E58B26019F> /System/Library/PrivateFrameworks/ChunkingLibrary.framework/Versions/A/ChunkingLibrary
    0x7fff63fb7000 -     0x7fff64046ffb  com.apple.CloudDocs (1.0 - 575.204) <201CA1B0-7588-337B-9329-AE89B04913E4> /System/Library/PrivateFrameworks/CloudDocs.framework/Versions/A/CloudDocs
    0x7fff643cc000 -     0x7fff643e2ff7  com.apple.CloudFamilyRestrictionsDaemon (1.0 - 1) <0D728D17-CB0B-37F9-91A4-F596D23F4ABD> /System/Library/PrivateFrameworks/CloudFamilyRestrictionsDaemon.framework/Versions/A/CloudFamilyRestrictionsDaemon
    0x7fff64b23000 -     0x7fff64b35ff3  com.apple.CloudPhotoServicesConfiguration (4.0 - 3421.5.230) <3653C9C8-8885-33F3-9583-735BB98EECE3> /System/Library/PrivateFrameworks/CloudPhotoServices.framework/Versions/A/Frameworks/CloudPhotoServicesConfiguration.framework/Versions/A/CloudPhotoServicesConfiguration
    0x7fff64b36000 -     0x7fff64b36ff7  com.apple.CloudPhotosConfigurationXPC (4.0 - 3421.5.230) <3196DD84-44FF-3200-BEB2-BB360812BEE9> /System/Library/PrivateFrameworks/CloudPhotoServices.framework/Versions/A/Frameworks/CloudPhotosConfigurationXPC.framework/Versions/A/CloudPhotosConfigurationXPC
    0x7fff64b37000 -     0x7fff64b50ffb  com.apple.CloudServices (1.0 - 297.200.8) <9441F2F6-FF3D-3CEF-BD09-03E9FD77495B> /System/Library/PrivateFrameworks/CloudServices.framework/Versions/A/CloudServices
    0x7fff64b51000 -     0x7fff64bc3ff7  com.apple.CommerceKit (1.2.0 - 708.2.3) <077A33F4-6D09-33C9-AD99-05E46DADB6E5> /System/Library/PrivateFrameworks/CommerceKit.framework/Versions/A/CommerceKit
    0x7fff64bc4000 -     0x7fff64bd0fff  com.apple.CommerceCore (1.0 - 708.2.3) <C18129FB-A8F9-30BF-9769-2D9A6132C9CD> /System/Library/PrivateFrameworks/CommerceKit.framework/Versions/A/Frameworks/CommerceCore.framework/Versions/A/CommerceCore
    0x7fff64bd1000 -     0x7fff64bdafff  com.apple.CommonAuth (4.0 - 2.0) <090893E5-BB65-39DA-A174-EAB2C7191EFE> /System/Library/PrivateFrameworks/CommonAuth.framework/Versions/A/CommonAuth
    0x7fff64bee000 -     0x7fff64c04ffb  com.apple.commonutilities (8.0 - 900) <17C61424-5518-3C7A-84E6-B26D2FA3573A> /System/Library/PrivateFrameworks/CommonUtilities.framework/Versions/A/CommonUtilities
    0x7fff64c05000 -     0x7fff64c09ff3  com.apple.communicationsfilter (10.0 - 1000) <DC58D6D0-8E0C-37BD-B342-4232BCAB5BB2> /System/Library/PrivateFrameworks/CommunicationsFilter.framework/Versions/A/CommunicationsFilter
    0x7fff64d2f000 -     0x7fff64da2ff7  com.apple.framework.ConfigurationProfiles (11.1 - 1140) <7F8AD7DC-BCB3-32CF-B716-E0B7BA941208> /System/Library/PrivateFrameworks/ConfigurationProfiles.framework/Versions/A/ConfigurationProfiles
    0x7fff64e9a000 -     0x7fff64eb2fff  com.apple.contacts.donation (1.0 - 1) <7084E3F8-3381-33E1-8BA5-B22C1BD9EB57> /System/Library/PrivateFrameworks/ContactsDonation.framework/Versions/A/ContactsDonation
    0x7fff64eb8000 -     0x7fff64f22ff7  com.apple.AddressBook.ContactsFoundation (8.0 - ???) <9FE9B96C-C422-3E52-B2CF-B53409096BA0> /System/Library/PrivateFrameworks/ContactsFoundation.framework/Versions/A/ContactsFoundation
    0x7fff64f23000 -     0x7fff64f47ffb  com.apple.contacts.ContactsPersistence (1.0 - ???) <E9B42022-FEB0-397C-A626-F4E966193A04> /System/Library/PrivateFrameworks/ContactsPersistence.framework/Versions/A/ContactsPersistence
    0x7fff64f48000 -     0x7fff64fa0ff7  com.apple.Contacts.ContactsUICore (1.0 - 999.9.9) <08805D05-79DA-375A-BDE6-74B78CADE2D9> /System/Library/PrivateFrameworks/ContactsUICore.framework/Versions/A/ContactsUICore
    0x7fff65098000 -     0x7fff6546ffef  com.apple.CoreAUC (273.0.0 - 273.0.0) <FE2B4D86-2C83-3FE2-A427-54DA2170E980> /System/Library/PrivateFrameworks/CoreAUC.framework/Versions/A/CoreAUC
    0x7fff65470000 -     0x7fff654a1fff  com.apple.CoreAVCHD (6.0.0 - 6000.4.1) <B15A24E4-2A92-3FD7-8F20-C372E4115FA7> /System/Library/PrivateFrameworks/CoreAVCHD.framework/Versions/A/CoreAVCHD
    0x7fff654bf000 -     0x7fff654e1fff  com.apple.CoreAnalytics.CoreAnalytics (1.0 - 1) <FC27393D-269F-3D0C-885E-A3782FA14861> /System/Library/PrivateFrameworks/CoreAnalytics.framework/Versions/A/CoreAnalytics
    0x7fff65539000 -     0x7fff6558bffb  com.apple.corebrightness (1.0 - 1) <9D3B952F-088D-3A13-879C-6070588DB336> /System/Library/PrivateFrameworks/CoreBrightness.framework/Versions/A/CoreBrightness
    0x7fff6558c000 -     0x7fff655aaff7  com.apple.CoreCDP-OSX (1.0 - 1) <32BE6C04-8049-3753-95DA-F0343B225753> /System/Library/PrivateFrameworks/CoreCDP.framework/Versions/A/CoreCDP
    0x7fff655ab000 -     0x7fff655fdff7  com.apple.CoreCDPInternal (1.0 - 1) <585E34C4-36D9-3D30-A16C-9C0F4DA29107> /System/Library/PrivateFrameworks/CoreCDPInternal.framework/Versions/A/CoreCDPInternal
    0x7fff655fe000 -     0x7fff6561bff3  com.apple.CoreCDPUI (1.0 - 1) <385ADCF4-D6C0-3863-892A-6A9A3AFE596C> /System/Library/PrivateFrameworks/CoreCDPUI.framework/Versions/A/CoreCDPUI
    0x7fff6561c000 -     0x7fff6561fff7  com.apple.CoreCapture (1.0 - 1) <8D0F8322-393B-3FB6-8E27-E5C195EA5495> /System/Library/PrivateFrameworks/CoreCapture.framework/Versions/A/CoreCapture
    0x7fff65620000 -     0x7fff65622fff  com.apple.CoreCaptureControl (1.0 - 1) <98CA606B-EED7-3C8B-91D8-3DAD62AFD065> /System/Library/PrivateFrameworks/CoreCaptureControl.framework/Versions/A/CoreCaptureControl
    0x7fff6565b000 -     0x7fff656ceff7  com.apple.coredav (1.0.1 - 347) <9E2B338A-32E1-322D-9BD4-095AD52BDBBA> /System/Library/PrivateFrameworks/CoreDAV.framework/Versions/A/CoreDAV
    0x7fff656cf000 -     0x7fff656d8fff  com.apple.frameworks.CoreDaemon (1.3 - 1.3) <7440BF22-4197-33A4-9213-9F9CEC4526EC> /System/Library/PrivateFrameworks/CoreDaemon.framework/Versions/B/CoreDaemon
    0x7fff656d9000 -     0x7fff658aefff  com.apple.CoreDuet (1.0 - 1) <5198E7E4-5AEC-3B02-93F5-BACC3B2102E8> /System/Library/PrivateFrameworks/CoreDuet.framework/Versions/A/CoreDuet
    0x7fff658af000 -     0x7fff658d1ff7  com.apple.coreduetcontext (1.0 - 1) <7CC131DB-6F47-3C6D-9D57-5533BFB81670> /System/Library/PrivateFrameworks/CoreDuetContext.framework/Versions/A/CoreDuetContext
    0x7fff658d2000 -     0x7fff658e2fff  com.apple.CoreDuetDaemonProtocol (1.0 - 1) <AA2F97F7-E206-3D2F-8C42-C29FD192836B> /System/Library/PrivateFrameworks/CoreDuetDaemonProtocol.framework/Versions/A/CoreDuetDaemonProtocol
    0x7fff658e5000 -     0x7fff658e7fff  com.apple.CoreDuetDebugLogging (1.0 - 1) <08F192C6-2A0A-352A-B105-2339DDE8A2C7> /System/Library/PrivateFrameworks/CoreDuetDebugLogging.framework/Versions/A/CoreDuetDebugLogging
    0x7fff658ea000 -     0x7fff658fefff  com.apple.CoreEmoji (1.0 - 69.19.8) <26BC0F82-08C1-3EBD-9299-D3CC5091C467> /System/Library/PrivateFrameworks/CoreEmoji.framework/Versions/A/CoreEmoji
    0x7fff658ff000 -     0x7fff65917fff  com.apple.CoreFollowUp-OSX (1.0 - 1) <D46B13EB-C8A2-3C9E-AF64-987E5704ADEA> /System/Library/PrivateFrameworks/CoreFollowUp.framework/Versions/A/CoreFollowUp
    0x7fff65918000 -     0x7fff6591dffb  com.apple.CoreFollowUpUI (1.0 - 1) <66549351-7F7F-39DF-B08D-E7BCCEA63037> /System/Library/PrivateFrameworks/CoreFollowUpUI.framework/Versions/A/CoreFollowUpUI
    0x7fff65ac4000 -     0x7fff65bb8ff7  com.apple.CoreHandwriting (161 - 1.2) <5454430E-F94B-3BBD-BCF2-6AFD00D526E0> /System/Library/PrivateFrameworks/CoreHandwriting.framework/Versions/A/CoreHandwriting
    0x7fff65d7b000 -     0x7fff65d91ffb  com.apple.CoreMediaAuthoring (2.2 - 958) <485EEE74-7F68-3132-97E1-1098E5BBA2C2> /System/Library/PrivateFrameworks/CoreMediaAuthoring.framework/Versions/A/CoreMediaAuthoring
    0x7fff65ed4000 -     0x7fff65f46ff7  com.apple.CoreNLP (1.0 - 130.15.22) <D0A3E880-CDEA-360A-9838-220D76BAECC6> /System/Library/PrivateFrameworks/CoreNLP.framework/Versions/A/CoreNLP
    0x7fff660c9000 -     0x7fff660cdff7  com.apple.CoreOptimization (1.0 - 1) <016D419D-1F5C-321B-94CA-415D98AE8578> /System/Library/PrivateFrameworks/CoreOptimization.framework/Versions/A/CoreOptimization
    0x7fff660ce000 -     0x7fff6615bff7  com.apple.CorePDF (4.0 - 414) <70F8B93B-78D5-326C-98B2-DAF2572E0F53> /System/Library/PrivateFrameworks/CorePDF.framework/Versions/A/CorePDF
    0x7fff6620f000 -     0x7fff66217ffb  com.apple.CorePhoneNumbers (1.0 - 1) <2D9AF545-ED3C-3EC1-887F-86922652EC57> /System/Library/PrivateFrameworks/CorePhoneNumbers.framework/Versions/A/CorePhoneNumbers
    0x7fff66218000 -     0x7fff66274fff  com.apple.CorePrediction (1.0 - 1) <388C67B4-8EA9-3F8D-ABAD-A23C5BB3FBE0> /System/Library/PrivateFrameworks/CorePrediction.framework/Versions/A/CorePrediction
    0x7fff6629c000 -     0x7fff662a6ff3  com.apple.corerecents (1.0 - 1) <9A82CBA0-9B70-3086-A943-8ED9F95181CF> /System/Library/PrivateFrameworks/CoreRecents.framework/Versions/A/CoreRecents
    0x7fff663a6000 -     0x7fff663d7fff  com.apple.CoreServicesInternal (357 - 357) <789E57F4-5A14-3220-93DF-1D4FEE315431> /System/Library/PrivateFrameworks/CoreServicesInternal.framework/Versions/A/CoreServicesInternal
    0x7fff667ac000 -     0x7fff6683aff7  com.apple.CoreSymbolication (10.1 - 64460.6) <133D09A5-39F7-301D-B019-B6685B80A2CB> /System/Library/PrivateFrameworks/CoreSymbolication.framework/Versions/A/CoreSymbolication
    0x7fff668ca000 -     0x7fff669f6fff  com.apple.coreui (2.1 - 498.46) <5EFE2CDC-897C-3A6B-A60B-4E0FB1D1ECA9> /System/Library/PrivateFrameworks/CoreUI.framework/Versions/A/CoreUI
    0x7fff669f7000 -     0x7fff66b7cfff  com.apple.CoreUtils (5.7.4 - 574.17) <DEF9C8A6-DDF1-37F4-A7F0-7DFAA95E8451> /System/Library/PrivateFrameworks/CoreUtils.framework/Versions/A/CoreUtils
    0x7fff66b7d000 -     0x7fff66bd2ffb  com.apple.framework.corewlankit (13.0 - 1370.8) <5A17AE7C-A8A3-3476-9D86-25DA90BA3653> /System/Library/PrivateFrameworks/CoreWLANKit.framework/Versions/A/CoreWLANKit
    0x7fff66bd3000 -     0x7fff66c36ffb  com.apple.framework.CoreWiFi (13.0 - 1370.8) <818F8915-BA51-3145-9C40-C9B8D7BE2DBD> /System/Library/PrivateFrameworks/CoreWiFi.framework/Versions/A/CoreWiFi
    0x7fff66c37000 -     0x7fff66c48ffb  com.apple.CrashReporterSupport (10.13 - 938.23) <D8D105F5-B6FB-3E91-A116-7CD92171E5C5> /System/Library/PrivateFrameworks/CrashReporterSupport.framework/Versions/A/CrashReporterSupport
    0x7fff66ccb000 -     0x7fff66cdaff3  com.apple.framework.DFRFoundation (1.0 - 211) <B72944ED-E4E8-3479-B832-8D50C4E30386> /System/Library/PrivateFrameworks/DFRFoundation.framework/Versions/A/DFRFoundation
    0x7fff66cdb000 -     0x7fff66cdfff7  com.apple.DSExternalDisplay (3.1 - 380) <76449D22-BA27-3FB1-AD25-A290936E6DEA> /System/Library/PrivateFrameworks/DSExternalDisplay.framework/Versions/A/DSExternalDisplay
    0x7fff66d23000 -     0x7fff66d61fff  com.apple.datadetectors (5.0 - 390.2) <6509EEC9-4A86-3898-B80D-7F8BFA92EF72> /System/Library/PrivateFrameworks/DataDetectors.framework/Versions/A/DataDetectors
    0x7fff66d62000 -     0x7fff66dd9ffb  com.apple.datadetectorscore (7.0 - 590.24) <3A49EC90-2081-3031-8CAE-3A6D5F7BFA1E> /System/Library/PrivateFrameworks/DataDetectorsCore.framework/Versions/A/DataDetectorsCore
    0x7fff66e27000 -     0x7fff66e68fff  com.apple.DebugSymbols (185 - 185) <64F5F9D6-401D-388B-82AD-A48B56413556> /System/Library/PrivateFrameworks/DebugSymbols.framework/Versions/A/DebugSymbols
    0x7fff66e69000 -     0x7fff66fc2ff7  com.apple.desktopservices (1.13.1 - ???) <AD61A660-0218-327E-8963-A1A170EC2C20> /System/Library/PrivateFrameworks/DesktopServicesPriv.framework/Versions/A/DesktopServicesPriv
    0x7fff6705d000 -     0x7fff6705eff7  com.apple.diagnosticlogcollection (10.0 - 1000) <090A0158-D272-31B7-8C92-CDD668AEF789> /System/Library/PrivateFrameworks/DiagnosticLogCollection.framework/Versions/A/DiagnosticLogCollection
    0x7fff6705f000 -     0x7fff6709eff3  com.apple.DifferentialPrivacy (1.0 - 1) <26389829-35DE-33DE-B714-3D8B213921FA> /System/Library/PrivateFrameworks/DifferentialPrivacy.framework/Versions/A/DifferentialPrivacy
    0x7fff670f4000 -     0x7fff671c6ff7  com.apple.DiskImagesFramework (480.230.2 - 480.230.2) <829D174B-D19D-3302-8C66-0FAD8DF43A6F> /System/Library/PrivateFrameworks/DiskImages.framework/Versions/A/DiskImages
    0x7fff671c7000 -     0x7fff6728bfff  com.apple.DiskManagement (12.0 - 1530) <C4614030-06E0-31BE-9083-C90786880D1F> /System/Library/PrivateFrameworks/DiskManagement.framework/Versions/A/DiskManagement
    0x7fff6728c000 -     0x7fff67290ff7  com.apple.DisplayServicesFW (3.1 - 380) <D62A344B-DC4B-3C5D-A16F-7057B36F2767> /System/Library/PrivateFrameworks/DisplayServices.framework/Versions/A/DisplayServices
    0x7fff672ff000 -     0x7fff67333fff  com.apple.SystemConfiguration.EAP8021X (14.0.0 - 14.0) <F348CEFE-D44F-3191-919E-E08F68EB0B45> /System/Library/PrivateFrameworks/EAP8021X.framework/Versions/A/EAP8021X
    0x7fff67334000 -     0x7fff67337fff  com.apple.EFILogin (2.0 - 2) <0C9EC3A1-43A5-3F43-AA6D-007A520929C3> /System/Library/PrivateFrameworks/EFILogin.framework/Versions/A/EFILogin
    0x7fff67349000 -     0x7fff67354ff3  com.apple.Email (11.0 - 3445.102.3) <D6A11D7F-3229-3464-AB37-EA847FAC5A4E> /System/Library/PrivateFrameworks/Email.framework/Versions/A/Email
    0x7fff67355000 -     0x7fff6735cff7  com.apple.EmailAddressing (11.0 - 3445.102.3) <FDAA910D-6330-34BF-9BB0-008C497FDB18> /System/Library/PrivateFrameworks/EmailAddressing.framework/Versions/A/EmailAddressing
    0x7fff6735d000 -     0x7fff67364ff7  com.apple.EmailCore (11.0 - 3445.102.3) <4EFE9BBA-D32A-3AB3-A84A-43147AA516A0> /System/Library/PrivateFrameworks/EmailCore.framework/Versions/A/EmailCore
    0x7fff679b5000 -     0x7fff67adcfff  com.apple.EmbeddedOSInstall.framework (1.0 - 113.1) <36C36A9C-A04F-3B3C-AC20-A611FFCFF39B> /System/Library/PrivateFrameworks/EmbeddedOSInstall.framework/Versions/A/EmbeddedOSInstall
    0x7fff67add000 -     0x7fff67ae3ffb  com.apple.EmbeddedOSSupportHost (1.0 - 1) <BE9A480A-3D8C-3C5C-9508-E1B91C517A7F> /System/Library/PrivateFrameworks/EmbeddedOSSupportHost.framework/Versions/A/EmbeddedOSSupportHost
    0x7fff67afd000 -     0x7fff67b14ff3  com.apple.Engram (1.0 - 1) <1ED541DC-DC42-381B-B46A-63EB35CC11A9> /System/Library/PrivateFrameworks/Engram.framework/Versions/A/Engram
    0x7fff67b15000 -     0x7fff67e48fff  com.apple.vision.EspressoFramework (1.0 - 120) <8BB244CA-4901-364B-B353-EEE075F2A0EA> /System/Library/PrivateFrameworks/Espresso.framework/Versions/A/Espresso
    0x7fff67e49000 -     0x7fff67ea2ff3  com.apple.ExchangeWebServices (8.0 - 307) <11AA23BB-3E96-3E05-B665-90956AA48BB4> /System/Library/PrivateFrameworks/ExchangeWebServices.framework/Versions/A/ExchangeWebServices
    0x7fff67ede000 -     0x7fff67effff3  com.apple.icloud.FMCore (1.0 - 1) <5AFEE19C-2A35-38EA-AA67-6307A7D77141> /System/Library/PrivateFrameworks/FMCore.framework/Versions/A/FMCore
    0x7fff67f00000 -     0x7fff67f16ff7  com.apple.icloud.FMCoreLite (1.0 - 1) <0D049CE2-C6B9-3240-8AAC-8A555AD90F98> /System/Library/PrivateFrameworks/FMCoreLite.framework/Versions/A/FMCoreLite
    0x7fff67f17000 -     0x7fff67f1cfff  com.apple.icloud.FMCoreUI (1.0 - 1) <B07989C7-3631-3C1B-A3FE-51B6F127484C> /System/Library/PrivateFrameworks/FMCoreUI.framework/Versions/A/FMCoreUI
    0x7fff67f1d000 -     0x7fff67f4eff7  com.apple.icloud.FMF (1.0 - 1) <5EEF0496-60D9-318B-B1DA-9AD7CDEB26CB> /System/Library/PrivateFrameworks/FMF.framework/Versions/A/FMF
    0x7fff67f4f000 -     0x7fff67f62ff3  com.apple.icloud.FMFUI (1.0 - 1) <164EA3E5-B885-3F3E-87B5-E9EC49D6EC1A> /System/Library/PrivateFrameworks/FMFUI.framework/Versions/A/FMFUI
    0x7fff68004000 -     0x7fff6842cfff  com.apple.vision.FaceCore (3.3.4 - 3.3.4) <41218EB7-19C9-3813-A793-B0623387CADF> /System/Library/PrivateFrameworks/FaceCore.framework/Versions/A/FaceCore
    0x7fff6842d000 -     0x7fff68435ffb  com.apple.FamilyCircle (1.0 - ???) <B426B5D5-ED7C-36EC-81F4-DC4753BEDB32> /System/Library/PrivateFrameworks/FamilyCircle.framework/Versions/A/FamilyCircle
    0x7fff68436000 -     0x7fff68458ff7  com.apple.framework.familycontrols (4.1 - 410) <7D0DA15B-CB60-3826-9FB6-38E471174925> /System/Library/PrivateFrameworks/FamilyControls.framework/Versions/A/FamilyControls
    0x7fff6845f000 -     0x7fff684ebff7  com.apple.FileProvider (125.130 - 125.130) <BD65CD8C-8385-3FAF-B06D-069EFC379EDD> /System/Library/PrivateFrameworks/FileProvider.framework/Versions/A/FileProvider
    0x7fff684ec000 -     0x7fff684fdff3  com.apple.icloud.FindMyDevice (1.0 - 1) <AA2706CE-D42D-3C52-B0BA-D6197CECB5FF> /System/Library/PrivateFrameworks/FindMyDevice.framework/Versions/A/FindMyDevice
    0x7fff684fe000 -     0x7fff68503ffb  com.apple.FindMyMac (3.1 - 57.0.0.1) <EA6EE2BF-AB73-3DFE-AD23-7B007DECB5B2> /System/Library/PrivateFrameworks/FindMyMac.framework/Versions/A/FindMyMac
    0x7fff6bd4e000 -     0x7fff6bd4ffff  libmetal_timestamp.dylib (902.2.2) <55E0B1F2-94F0-3A77-9DB3-152F44848DA5> /System/Library/PrivateFrameworks/GPUCompiler.framework/Versions/3902/Libraries/libmetal_timestamp.dylib
    0x7fff6d3dc000 -     0x7fff6d3e0fff  com.apple.GPUInfo (1.0 - 1) <BA66F76F-860E-38F9-8CBF-CBFBD72A6B98> /System/Library/PrivateFrameworks/GPUInfo.framework/Versions/A/GPUInfo
    0x7fff6d3f9000 -     0x7fff6d3feff7  com.apple.GPUWrangler (3.28.4 - 3.28.4) <14D6FE7D-38D7-3F6C-9BCE-A228D6697A08> /System/Library/PrivateFrameworks/GPUWrangler.framework/Versions/A/GPUWrangler
    0x7fff6d7ae000 -     0x7fff6d7d3ff7  com.apple.GenerationalStorage (2.0 - 285.101) <549328C8-3D7D-3DE6-A9D0-CB8CEC4EB81F> /System/Library/PrivateFrameworks/GenerationalStorage.framework/Versions/A/GenerationalStorage
    0x7fff6d7ec000 -     0x7fff6e225ff7  com.apple.GeoServices (1.0 - 1364.22.10.1.3) <9EC5665F-F3F8-38F2-A37F-59FF11EFE674> /System/Library/PrivateFrameworks/GeoServices.framework/Versions/A/GeoServices
    0x7fff6e268000 -     0x7fff6e277fff  com.apple.GraphVisualizer (1.0 - 5) <CAFE626E-9738-3C14-88AA-B6A9182F2C39> /System/Library/PrivateFrameworks/GraphVisualizer.framework/Versions/A/GraphVisualizer
    0x7fff6e278000 -     0x7fff6e285fff  com.apple.GraphicsServices (1.0 - 1.0) <4FD9D40F-658B-3076-B8F4-9CC0AAB4B4B7> /System/Library/PrivateFrameworks/GraphicsServices.framework/Versions/A/GraphicsServices
    0x7fff6e3c8000 -     0x7fff6e43dfff  com.apple.Heimdal (4.0 - 2.0) <D99FF31F-6310-3D80-8AE3-64934385AC11> /System/Library/PrivateFrameworks/Heimdal.framework/Versions/A/Heimdal
    0x7fff6e43e000 -     0x7fff6e46dfff  com.apple.HelpData (2.3 - 184.2) <A891FC5D-14FE-3B2A-AA32-B395D89FE671> /System/Library/PrivateFrameworks/HelpData.framework/Versions/A/HelpData
    0x7fff6eedf000 -     0x7fff6ef15ff3  com.apple.IASUtilities (1.0 - 505) <133DD3C5-99D4-3C58-90ED-BFD8AF3EB3F8> /System/Library/PrivateFrameworks/IASUtilities.framework/Versions/A/IASUtilities
    0x7fff6ef16000 -     0x7fff6f025ff3  com.apple.ids (10.0 - 1000) <0D170708-AED5-32DE-9AD3-2B47DC19042F> /System/Library/PrivateFrameworks/IDS.framework/Versions/A/IDS
    0x7fff6f026000 -     0x7fff6f12dfff  com.apple.idsfoundation (10.0 - 1000) <6280CCA4-7523-318E-9C7C-A41AD112CBB1> /System/Library/PrivateFrameworks/IDSFoundation.framework/Versions/A/IDSFoundation
    0x7fff6f13c000 -     0x7fff6f1cbfff  com.apple.IMAP (11.0 - 3445.102.3) <A0AD86AB-E332-345C-95EF-1130C06B2814> /System/Library/PrivateFrameworks/IMAP.framework/Versions/A/IMAP
    0x7fff6f6e9000 -     0x7fff6f74eff3  com.apple.imfoundation (10.0 - 1000) <FACAB42B-8E3C-3056-ACE5-EF026119F3B5> /System/Library/PrivateFrameworks/IMFoundation.framework/Versions/A/IMFoundation
    0x7fff6f82d000 -     0x7fff6f834ffb  com.apple.IOAccelerator (404.2.2 - 404.2.2) <7421825E-13D4-3C74-932D-34E8A605C281> /System/Library/PrivateFrameworks/IOAccelerator.framework/Versions/A/IOAccelerator
    0x7fff6f837000 -     0x7fff6f837fff  com.apple.IOPlatformPluginFamily (1.0 - 1) <3A699A2B-EA4D-3344-9C64-FA5C29A9ABA4> /System/Library/PrivateFrameworks/IOPlatformPluginFamily.framework/Versions/A/IOPlatformPluginFamily
    0x7fff6f838000 -     0x7fff6f851fff  com.apple.IOPresentment (1.0 - 42.6) <87D19032-52DB-34A5-A554-23B3464EFC82> /System/Library/PrivateFrameworks/IOPresentment.framework/Versions/A/IOPresentment
    0x7fff6fc66000 -     0x7fff6fc95ff7  com.apple.IconServices (379 - 379) <694E17A6-471B-3C57-92D6-ECC4295FB859> /System/Library/PrivateFrameworks/IconServices.framework/Versions/A/IconServices
    0x7fff6fca2000 -     0x7fff6fca7ff3  com.apple.incomingcallfilter (10.0 - 1000) <A4EA5723-8EF9-3B2A-B9F0-597C9FEC32A4> /System/Library/PrivateFrameworks/IncomingCallFilter.framework/Versions/A/IncomingCallFilter
    0x7fff6fcc2000 -     0x7fff6fce1fff  com.apple.DistributionKit (700 - 1000) <742486D8-43F3-31E3-BA7F-690EABE407C5> /System/Library/PrivateFrameworks/Install.framework/Frameworks/DistributionKit.framework/Versions/A/DistributionKit
    0x7fff6fd90000 -     0x7fff6fda4ffb  com.apple.InstallerDiagnostics (1.0 - 1) <9A1BDB5D-63A5-3BB3-881A-1054A34F16F7> /System/Library/PrivateFrameworks/InstallerDiagnostics.framework/Versions/A/InstallerDiagnostics
    0x7fff6fdb7000 -     0x7fff6fdbefff  com.apple.IntentsFoundation (1.0 - 1) <D8F312AA-505A-323F-BC19-EA089ECED870> /System/Library/PrivateFrameworks/IntentsFoundation.framework/Versions/A/IntentsFoundation
    0x7fff6fdc1000 -     0x7fff6fdc5fff  com.apple.InternationalSupport (1.0 - 10.15.6) <D319CB1C-5339-30EB-93EA-3CFB328BEC9A> /System/Library/PrivateFrameworks/InternationalSupport.framework/Versions/A/InternationalSupport
    0x7fff6fe32000 -     0x7fff6fe3ffff  com.apple.IntlPreferences (2.0 - 227.15.8) <94B5C14D-E635-3722-9BD3-E17ECDD72DB1> /System/Library/PrivateFrameworks/IntlPreferences.framework/Versions/A/IntlPreferences
    0x7fff6fed9000 -     0x7fff6fee6ff7  com.apple.KerberosHelper (4.0 - 1.0) <0FDDDC9E-9904-3076-AF8A-07976FA5D21F> /System/Library/PrivateFrameworks/KerberosHelper.framework/Versions/A/KerberosHelper
    0x7fff6ff35000 -     0x7fff6ff48fff  com.apple.security.KeychainCircle.KeychainCircle (1.0 - 1) <02ECB210-513F-3BDE-8150-A828E901FA02> /System/Library/PrivateFrameworks/KeychainCircle.framework/Versions/A/KeychainCircle
    0x7fff6ff63000 -     0x7fff7005afff  com.apple.LanguageModeling (1.0 - 159.15.15) <34609F31-4DA1-3881-8947-85BEA7AFC938> /System/Library/PrivateFrameworks/LanguageModeling.framework/Versions/A/LanguageModeling
    0x7fff7005b000 -     0x7fff7009cff7  com.apple.Lexicon-framework (1.0 - 33.15.10) <07E008F3-E823-333B-8B41-A46024AB0561> /System/Library/PrivateFrameworks/Lexicon.framework/Versions/A/Lexicon
    0x7fff700a3000 -     0x7fff700a9ff7  com.apple.LinguisticData (1.0 - 238.23.4) <37948616-56E6-3758-BEFE-28586FF99E12> /System/Library/PrivateFrameworks/LinguisticData.framework/Versions/A/LinguisticData
    0x7fff70149000 -     0x7fff701a1fff  com.apple.LoggingSupport (1.0 - 906.220.1) <D46C1CBB-C60E-3C5B-AFBE-3E5C6C734D9E> /System/Library/PrivateFrameworks/LoggingSupport.framework/Versions/A/LoggingSupport
    0x7fff701a2000 -     0x7fff701a7ffb  com.apple.LoginUICore (4.0 - 4.0) <031DE6CA-A413-38D7-8FAB-92DED2823A50> /System/Library/PrivateFrameworks/LoginUIKit.framework/Versions/A/Frameworks/LoginUICore.framework/Versions/A/LoginUICore
    0x7fff701a8000 -     0x7fff7020fff7  com.apple.LoginUIKit (4.0 - 4.0) <655F3676-843F-3122-95B3-C3A27E1FF85F> /System/Library/PrivateFrameworks/LoginUIKit.framework/Versions/A/LoginUIKit
    0x7fff70210000 -     0x7fff7022afff  com.apple.LookupFramework (1.2 - 251) <1DCE0F92-5535-32F1-B384-ABA67FA545D3> /System/Library/PrivateFrameworks/Lookup.framework/Versions/A/Lookup
    0x7fff702ef000 -     0x7fff703c0fff  com.apple.MMCS (1.3 - 438.19) <2EEE98B7-4B00-330A-BB14-74FDEE864F48> /System/Library/PrivateFrameworks/MMCS.framework/Versions/A/MMCS
    0x7fff70456000 -     0x7fff70458fff  com.apple.framework.machinesettings (11.0 - 11.0) <2FCFD881-3543-31F0-80F6-73D959E99EC9> /System/Library/PrivateFrameworks/MachineSettings.framework/Versions/A/MachineSettings
    0x7fff70459000 -     0x7fff70771ff7  com.apple.Mail.framework (11.0 - 3445.102.3) <F64A3327-CF5E-3E16-A317-A51053AC518E> /System/Library/PrivateFrameworks/Mail.framework/Versions/A/Mail
    0x7fff70772000 -     0x7fff70846fff  com.apple.MailCore (11.0 - 3445.102.3) <F960039E-4628-32EF-B70E-F71D66A179A1> /System/Library/PrivateFrameworks/MailCore.framework/Versions/A/MailCore
    0x7fff70847000 -     0x7fff7084fffb  com.apple.MailService (11.0 - 3445.102.3) <9848297D-9B6E-399E-8EF6-FAF7DD8F20EC> /System/Library/PrivateFrameworks/MailService.framework/Versions/A/MailService
    0x7fff70850000 -     0x7fff70876ff7  com.apple.MailSupport (11.0 - 3445.102.3) <7F1585BB-75AD-3CCA-827F-391579E84610> /System/Library/PrivateFrameworks/MailSupport.framework/Versions/A/MailSupport
    0x7fff70908000 -     0x7fff7090bfff  com.apple.Mangrove (1.0 - 25) <8DF73279-BCEB-38CE-AE83-571C1B3FF45B> /System/Library/PrivateFrameworks/Mangrove.framework/Versions/A/Mangrove
    0x7fff70996000 -     0x7fff70998ff3  com.apple.marco (10.0 - 1000) <5782A7BC-9A2D-3530-A537-CDB7CDE26CD9> /System/Library/PrivateFrameworks/Marco.framework/Versions/A/Marco
    0x7fff70999000 -     0x7fff709c0ffb  com.apple.MarkupUI (1.0 - 232.3.27) <5D7DBEC5-BC74-3D4D-B035-41AAF8190B7F> /System/Library/PrivateFrameworks/MarkupUI.framework/Versions/A/MarkupUI
    0x7fff70a29000 -     0x7fff70a5cff3  com.apple.MediaKit (16 - 906) <AA899ADE-7163-3F27-9996-14FFA6506BFD> /System/Library/PrivateFrameworks/MediaKit.framework/Versions/A/MediaKit
    0x7fff70a5d000 -     0x7fff70d9bff7  com.apple.MediaRemote (1.0 - 1) <3559F3BE-BA9A-3607-87F6-6B15D22CD1C4> /System/Library/PrivateFrameworks/MediaRemote.framework/Versions/A/MediaRemote
    0x7fff70d9c000 -     0x7fff70dc0ff7  com.apple.MediaServices (1.0 - 1) <C63E49CA-92AF-32BD-8C69-D275B0808398> /System/Library/PrivateFrameworks/MediaServices.framework/Versions/A/MediaServices
    0x7fff70e06000 -     0x7fff70e2effb  com.apple.spotlight.metadata.utilities (1.0 - 1191.53) <09C6DCF6-F87D-3D03-8BD5-FD1DCF90949F> /System/Library/PrivateFrameworks/MetadataUtilities.framework/Versions/A/MetadataUtilities
    0x7fff70e2f000 -     0x7fff70ec1fff  com.apple.gpusw.MetalTools (1.0 - 1) <B77258A5-909F-37F7-8F1A-2085F7916DD4> /System/Library/PrivateFrameworks/MetalTools.framework/Versions/A/MetalTools
    0x7fff70ed6000 -     0x7fff70eeffff  com.apple.MobileAssets (1.0 - 437.230.2) <73BF5743-F050-3393-AECE-298ADF3960F4> /System/Library/PrivateFrameworks/MobileAsset.framework/Versions/A/MobileAsset
    0x7fff7106c000 -     0x7fff71087ff3  com.apple.MobileKeyBag (2.0 - 1.0) <26347762-AF60-3412-A951-33BF85244D84> /System/Library/PrivateFrameworks/MobileKeyBag.framework/Versions/A/MobileKeyBag
    0x7fff71098000 -     0x7fff71114ff7  com.apple.Montreal (1.0 - 42.15.8) <2A0EA5B7-4D5E-3048-90CB-686D146A2385> /System/Library/PrivateFrameworks/Montreal.framework/Versions/A/Montreal
    0x7fff71115000 -     0x7fff7113fff7  com.apple.MultitouchSupport.framework (2410.5 - 2410.5) <3A712911-F672-3BB3-B62B-A2A7BADF3578> /System/Library/PrivateFrameworks/MultitouchSupport.framework/Versions/A/MultitouchSupport
    0x7fff71140000 -     0x7fff71148ff3  com.apple.multiverse (1.0 - 27.220.6) <CC32643E-D0CE-3B9A-A1A0-9163C0B4F681> /System/Library/PrivateFrameworks/MultiverseSupport.framework/Versions/A/MultiverseSupport
    0x7fff71149000 -     0x7fff7123aff7  com.apple.NLP (1.0 - 122.25.1) <186C6E0D-80B3-37DA-950C-14C4C7BC41E1> /System/Library/PrivateFrameworks/NLP.framework/Versions/A/NLP
    0x7fff7123b000 -     0x7fff71332ff7  com.apple.Navigation (1.0 - 1) <B0CEB9A4-0B58-3F6C-BF86-D3F8A28B43D2> /System/Library/PrivateFrameworks/Navigation.framework/Versions/A/Navigation
    0x7fff713b2000 -     0x7fff713bcfff  com.apple.NetAuth (6.2 - 6.2) <E191D736-A442-31BA-B823-EE75DC316D22> /System/Library/PrivateFrameworks/NetAuth.framework/Versions/A/NetAuth
    0x7fff713bd000 -     0x7fff713c2ff3  com.apple.NetFSServer (2.0 - 1) <76B12046-61EE-3DAD-8342-E927EF7F561D> /System/Library/PrivateFrameworks/NetFSServer.framework/Versions/A/NetFSServer
    0x7fff713db000 -     0x7fff7149cff7  com.apple.NetworkServiceProxyFramework (1.0 - 1) <B9C21EFA-322E-3BF4-B114-FAC702AEFE77> /System/Library/PrivateFrameworks/NetworkServiceProxy.framework/Versions/A/NetworkServiceProxy
    0x7fff71b42000 -     0x7fff71b44fff  com.apple.OAuth (25 - 25) <01923343-8B74-3BEB-8685-317B7D7E61A3> /System/Library/PrivateFrameworks/OAuth.framework/Versions/A/OAuth
    0x7fff71bc9000 -     0x7fff71c88fff  com.apple.OSPersonalization (1.0 - 55.1) <3371C809-39B3-3CCD-99B4-EA4B83C6033D> /System/Library/PrivateFrameworks/OSPersonalization.framework/Versions/A/OSPersonalization
    0x7fff71c89000 -     0x7fff71cdffff  com.apple.OTSVG (1.0 - ???) <F020144A-D840-390D-A87F-29E8095C78AF> /System/Library/PrivateFrameworks/OTSVG.framework/Versions/A/OTSVG
    0x7fff723f3000 -     0x7fff72405ff7  com.apple.OnBoardingKit (1.0 - 1) <30A5B60B-1759-35E6-A2D9-19F4C451EBB5> /System/Library/PrivateFrameworks/OnBoardingKit.framework/Versions/A/OnBoardingKit
    0x7fff72776000 -     0x7fff728a2fd7  com.apple.PackageKit (3.0 - 828) <61D016E6-90B2-35BC-8E14-8221A83EA780> /System/Library/PrivateFrameworks/PackageKit.framework/Versions/A/PackageKit
    0x7fff7292f000 -     0x7fff72c5fff7  com.apple.PassKitCore (1.0 - 1) <A3EA6A7A-D6E5-3B93-B2AB-F992DD6AFCDC> /System/Library/PrivateFrameworks/PassKitCore.framework/Versions/A/PassKitCore
    0x7fff72d42000 -     0x7fff72e49ff7  com.apple.PencilKit (1.0 - 1) <EA31C4A8-5F3C-3FF4-B48F-DB6882B2273E> /System/Library/PrivateFrameworks/PencilKit.framework/Versions/A/PencilKit
    0x7fff72e4a000 -     0x7fff72e59ff3  com.apple.PerformanceAnalysis (1.217 - 217) <AA34989F-7E01-303E-8134-5BB37CE82DDF> /System/Library/PrivateFrameworks/PerformanceAnalysis.framework/Versions/A/PerformanceAnalysis
    0x7fff72e87000 -     0x7fff72e97ff3  com.apple.PersonaKit (1.0 - 1) <47262BCA-BE47-3A57-A114-89F099DA25BD> /System/Library/PrivateFrameworks/PersonaKit.framework/Versions/A/PersonaKit
    0x7fff72e98000 -     0x7fff72ea6ff3  com.apple.PersonaUI (1.0 - 1) <E7212A8B-6EA7-39C4-8E04-B532D458EC3C> /System/Library/PrivateFrameworks/PersonaUI.framework/Versions/A/PersonaUI
    0x7fff730b4000 -     0x7fff730b4fff  com.apple.PhoneNumbers (1.0 - 1) <23149929-F14F-3495-82AD-F82B97327AFC> /System/Library/PrivateFrameworks/PhoneNumbers.framework/Versions/A/PhoneNumbers
    0x7fff74971000 -     0x7fff74996ff7  com.apple.pluginkit.framework (1.0 - 1) <0E2C2FDB-8BB4-3728-9937-C0239A37A02C> /System/Library/PrivateFrameworks/PlugInKit.framework/Versions/A/PlugInKit
    0x7fff749c1000 -     0x7fff749d3ff3  com.apple.PowerLog (1.0 - 1) <28F76681-B39D-3A23-814C-CFD33636A5F6> /System/Library/PrivateFrameworks/PowerLog.framework/Versions/A/PowerLog
    0x7fff749d4000 -     0x7fff749d4ff7  com.apple.PowerlogControl (1.0 - 1) <CC33AA56-4CFE-3C38-BBB5-2354721CE008> /System/Library/PrivateFrameworks/PowerlogControl.framework/Versions/A/PowerlogControl
    0x7fff74c0a000 -     0x7fff74c25ff7  com.apple.frameworks.preferencepanessupport (13.0 - 13.0) <48A9452B-4C8E-3785-94CB-06B324F57BB2> /System/Library/PrivateFrameworks/PreferencePanesSupport.framework/Versions/A/PreferencePanesSupport
    0x7fff74dc0000 -     0x7fff74e17ff3  com.apple.ProtectedCloudStorage (1.0 - 1) <509FC423-3CA1-35C5-8DDC-0DC0DE87760F> /System/Library/PrivateFrameworks/ProtectedCloudStorage.framework/Versions/A/ProtectedCloudStorage
    0x7fff74e18000 -     0x7fff74e36ff7  com.apple.ProtocolBuffer (1 - 263.1) <D70A1E3D-D2F7-3765-861C-173F5BBC848B> /System/Library/PrivateFrameworks/ProtocolBuffer.framework/Versions/A/ProtocolBuffer
    0x7fff74fca000 -     0x7fff74fcdff3  com.apple.QuickLookNonBaseSystem (1.0 - 1) <F76FCC02-E537-3CAF-ABD2-0B342BFA6BF8> /System/Library/PrivateFrameworks/QuickLookNonBaseSystem.framework/Versions/A/QuickLookNonBaseSystem
    0x7fff74fce000 -     0x7fff74fe4ff3  com.apple.QuickLookThumbnailing (1.0 - 1) <D81BC846-29B5-34FE-8154-1D18EC79B39D> /System/Library/PrivateFrameworks/QuickLookThumbnailing.framework/Versions/A/QuickLookThumbnailing
    0x7fff74fe5000 -     0x7fff7503df0f  com.apple.ROCKit (24 - 24) <FA6B086A-1841-3A5E-800B-CE7A52C3DAF1> /System/Library/PrivateFrameworks/ROCKit.framework/Versions/A/ROCKit
    0x7fff7503e000 -     0x7fff75047ff7  com.apple.RTCReporting (9.38.2 - 9.38.2) <9042A764-061C-3128-BF04-26F9902F81ED> /System/Library/PrivateFrameworks/RTCReporting.framework/Versions/A/RTCReporting
    0x7fff75087000 -     0x7fff750c2ffb  com.apple.Rapport (1.6.4 - 164.16) <ECB48E5A-2417-379D-9A99-A8587C76F68A> /System/Library/PrivateFrameworks/Rapport.framework/Versions/A/Rapport
    0x7fff75142000 -     0x7fff7514eff3  com.apple.xpc.RemoteServiceDiscovery (1.0 - 1336.220.5) <096B06A9-2C3F-3515-8241-5292B0658984> /System/Library/PrivateFrameworks/RemoteServiceDiscovery.framework/Versions/A/RemoteServiceDiscovery
    0x7fff75161000 -     0x7fff75184ffb  com.apple.RemoteViewServices (2.0 - 128) <55D89BC9-0613-3910-B63E-9A146D35D91A> /System/Library/PrivateFrameworks/RemoteViewServices.framework/Versions/A/RemoteViewServices
    0x7fff75185000 -     0x7fff75199fff  com.apple.xpc.RemoteXPC (1.0 - 1336.220.5) <208540F3-3FEC-32EE-B010-B73CE4A3609A> /System/Library/PrivateFrameworks/RemoteXPC.framework/Versions/A/RemoteXPC
    0x7fff751f4000 -     0x7fff7525dff7  com.apple.SAObjects (1.0 - 1) <1EB36CE9-3F69-3C44-A8EE-54B7439F9E5B> /System/Library/PrivateFrameworks/SAObjects.framework/Versions/A/SAObjects
    0x7fff75643000 -     0x7fff7565bfff  com.apple.SMBClient (3.3.1 - 3.3.1) <45D6430B-6630-3A02-AED7-9594FA6AAE18> /System/Library/PrivateFrameworks/SMBClient.framework/Versions/A/SMBClient
    0x7fff75f89000 -     0x7fff75fe6fff  com.apple.Safari.Core (14606 - 14606.3.4) <7BC73F13-ECC7-3496-AFD6-85F6F3C847CF> /System/Library/PrivateFrameworks/SafariCore.framework/Versions/A/SafariCore
    0x7fff75fe7000 -     0x7fff75ff2ffb  com.apple.SafariFoundation (1.0 - 1) <535C0548-F3B3-352F-B053-2504082A9390> /System/Library/PrivateFrameworks/SafariFoundation.framework/Versions/A/SafariFoundation
    0x7fff75ff3000 -     0x7fff7603dff7  com.apple.Safari.SafeBrowsing (14606 - 14606.3.4) <B7FA4855-D832-36C2-ADB7-3660C298557F> /System/Library/PrivateFrameworks/SafariSafeBrowsing.framework/Versions/A/SafariSafeBrowsing
    0x7fff76991000 -     0x7fff76994ff7  com.apple.SecCodeWrapper (4.0 - 360.220.2) <2C30C3E4-267C-3CB2-8558-252F908F4A53> /System/Library/PrivateFrameworks/SecCodeWrapper.framework/Versions/A/SecCodeWrapper
    0x7fff76a63000 -     0x7fff76a68fff  com.apple.ServerInformation (2.0 - 1) <171A675D-29D8-3FF0-AA56-3E3C0A9480BE> /System/Library/PrivateFrameworks/ServerInformation.framework/Versions/A/ServerInformation
    0x7fff76a72000 -     0x7fff76aebfff  com.apple.ShareKit (577.0.1 - 577.0.1) <017023E7-5B14-34CB-BBE4-1C29BAC5F9A4> /System/Library/PrivateFrameworks/ShareKit.framework/Versions/A/ShareKit
    0x7fff76aec000 -     0x7fff76af4ffb  com.apple.coreservices.SharePointManager (1.0 - 57.1) <04315727-5A06-35C5-9464-452023E06AE9> /System/Library/PrivateFrameworks/SharePointManagement.framework/Versions/A/SharePointManagement
    0x7fff76af5000 -     0x7fff76af8fff  com.apple.SharedWebCredentials (1.8 - 180.4) <44CDE6E4-B6C3-3550-8530-F2E92B14FAA0> /System/Library/PrivateFrameworks/SharedWebCredentials.framework/Versions/A/SharedWebCredentials
    0x7fff76af9000 -     0x7fff76c17fff  com.apple.Sharing (1214.18 - 1214.18) <E6302F6F-2940-3DDB-ADA7-EE123DD6D027> /System/Library/PrivateFrameworks/Sharing.framework/Versions/A/Sharing
    0x7fff76c18000 -     0x7fff76c37ff3  com.apple.shortcut (2.16 - 101) <542B2E16-F7C3-3714-8AB5-5C0992E7A4A8> /System/Library/PrivateFrameworks/Shortcut.framework/Versions/A/Shortcut
    0x7fff76c38000 -     0x7fff76c4aff7  com.apple.sidecar-core (1.0 - 38.1) <7039F10F-23E4-352B-B537-5B8839B49861> /System/Library/PrivateFrameworks/SidecarCore.framework/Versions/A/SidecarCore
    0x7fff76c4b000 -     0x7fff76c5bffb  com.apple.sidecar-ui (1.0 - 38.1) <1D62F5BF-E4CB-30B5-86B7-4D3F9AB1FCEB> /System/Library/PrivateFrameworks/SidecarUI.framework/Versions/A/SidecarUI
    0x7fff779d1000 -     0x7fff77c83ff3  com.apple.SkyLight (1.600.0 - 337.5) <52BC8AB1-3518-3E4C-B1B1-0A8A8067574F> /System/Library/PrivateFrameworks/SkyLight.framework/Versions/A/SkyLight
    0x7fff78240000 -     0x7fff78322ffb  com.apple.SoftwareUpdate.framework (6 - 1170.4) <BE21A7AA-DD38-336F-8C2C-B711AABEBF00> /System/Library/PrivateFrameworks/SoftwareUpdate.framework/Versions/A/SoftwareUpdate
    0x7fff78454000 -     0x7fff78461fff  com.apple.SpeechRecognitionCore (5.0.21 - 5.0.21) <FABB97BC-9555-33FE-B6C5-606CC403CE16> /System/Library/PrivateFrameworks/SpeechRecognitionCore.framework/Versions/A/SpeechRecognitionCore
    0x7fff7851d000 -     0x7fff78786fff  com.apple.spotlight.index (10.7.0 - 1191.53) <4929ED21-7207-3D6A-BC8B-14ECA9023FC7> /System/Library/PrivateFrameworks/SpotlightIndex.framework/Versions/A/SpotlightIndex
    0x7fff78828000 -     0x7fff7882fffb  com.apple.StatsKit (1.0 - 1) <80E0E935-4696-3ADA-9FA1-0C432F6B0473> /System/Library/PrivateFrameworks/StatsKit.framework/Versions/A/StatsKit
    0x7fff78830000 -     0x7fff78871ffb  com.apple.StorageKit (1.0 - 480.23) <83DDE04D-EA2E-3188-A4D6-34A12F8562B3> /System/Library/PrivateFrameworks/StorageKit.framework/Versions/A/StorageKit
    0x7fff78872000 -     0x7fff78882ff7  com.apple.StorageManagement (1.0 - 1) <997913FC-9528-379E-A537-0D2C577D19F7> /System/Library/PrivateFrameworks/StorageManagement.framework/Versions/A/StorageManagement
    0x7fff78883000 -     0x7fff788edfff  com.apple.StoreFoundation (1.0 - 708.2.3) <C42285FB-E9A0-3F88-9F92-2D69FA03332E> /System/Library/PrivateFrameworks/StoreFoundation.framework/Versions/A/StoreFoundation
    0x7fff788fc000 -     0x7fff78b11ff7  StoreServices (1445.0.8) <63C6B21C-9A97-38AF-BD41-3B00D9926169> /System/Library/PrivateFrameworks/StoreServices.framework/Versions/A/StoreServices
    0x7fff78b46000 -     0x7fff78b85ff3  com.apple.StreamingZip (1.0 - 1) <251128E7-C343-3799-A31B-8B10CEC69F19> /System/Library/PrivateFrameworks/StreamingZip.framework/Versions/A/StreamingZip
    0x7fff78b86000 -     0x7fff78bf7ffb  com.apple.Suggestions (6.0 - 226) <6984A353-6131-33CE-8FAB-4F6AD819845E> /System/Library/PrivateFrameworks/Suggestions.framework/Versions/A/Suggestions
    0x7fff792c2000 -     0x7fff7934fff7  com.apple.Symbolication (10.1 - 64460.8) <7DDC5C90-947F-34FF-864D-5ED3C2B746A9> /System/Library/PrivateFrameworks/Symbolication.framework/Versions/A/Symbolication
    0x7fff79350000 -     0x7fff79359ffb  com.apple.SymptomDiagnosticReporter (1.0 - 820.237.2) <CB0F608B-99A3-35DC-8D7D-6D3D3078D034> /System/Library/PrivateFrameworks/SymptomDiagnosticReporter.framework/Versions/A/SymptomDiagnosticReporter
    0x7fff795a0000 -     0x7fff795aafff  com.apple.SyncedDefaults (2.0 - 281.201) <9CD4AD44-1280-3C1F-A808-056C571962E4> /System/Library/PrivateFrameworks/SyncedDefaults.framework/Versions/A/SyncedDefaults
    0x7fff795ab000 -     0x7fff795d7fff  com.apple.framework.SystemAdministration (1.0 - 1.0) <8DFE4C30-E4EC-378A-813C-B7600C38889E> /System/Library/PrivateFrameworks/SystemAdministration.framework/Versions/A/SystemAdministration
    0x7fff795d8000 -     0x7fff795f3fff  com.apple.SystemAdministrationInterface (1.0 - 1) <2C8108DC-941D-3E85-BC2D-94E37314BC44> /System/Library/PrivateFrameworks/SystemAdministrationInterface.framework/Versions/A/SystemAdministrationInterface
    0x7fff795f4000 -     0x7fff79773ff3  com.apple.SystemMigration (1190 - 1190) <786F7CDF-E2AB-3F34-9F47-4B4138093326> /System/Library/PrivateFrameworks/SystemMigration.framework/Versions/A/SystemMigration
    0x7fff79774000 -     0x7fff7983dfeb  com.apple.installandsetup.SystemMigrationNetworking (1.0 - 1) <D57EB18F-3AB7-358B-B3C5-8D3017C609DA> /System/Library/PrivateFrameworks/SystemMigrationNetworking.framework/Versions/A/SystemMigrationNetworking
    0x7fff7983e000 -     0x7fff79847ffb  com.apple.installandsetup.SystemMigrationUtils (1.0 - 1) <D11E2C01-B1BC-3EF3-90C7-B27A6AACD5E5> /System/Library/PrivateFrameworks/SystemMigrationUtils.framework/Versions/A/SystemMigrationUtils
    0x7fff79858000 -     0x7fff79865ffb  com.apple.TCC (1.0 - 1) <81F88B91-49C1-36E7-8A39-C4BD654EE942> /System/Library/PrivateFrameworks/TCC.framework/Versions/A/TCC
    0x7fff79874000 -     0x7fff79934fff  com.apple.TelephonyUtilities (1.0 - 1.0) <4B9E6050-13E3-3121-9B60-913B87B72ABB> /System/Library/PrivateFrameworks/TelephonyUtilities.framework/Versions/A/TelephonyUtilities
    0x7fff79ad8000 -     0x7fff79b9fff7  com.apple.TextureIO (3.8.4 - 3.8.1) <83CDF659-E5B3-381F-BDA1-FF0BFA17B5EE> /System/Library/PrivateFrameworks/TextureIO.framework/Versions/A/TextureIO
    0x7fff79ba0000 -     0x7fff79bcbff3  com.apple.TimeMachine (1.0 - 1) <0A4C3A4D-33C0-35A7-8E39-3DB7D5B749C1> /System/Library/PrivateFrameworks/TimeMachine.framework/Versions/A/TimeMachine
    0x7fff79bfd000 -     0x7fff79c18fff  com.apple.ToneKit (1.0 - 1) <650551BF-1E2D-39B1-9412-886B9194FA68> /System/Library/PrivateFrameworks/ToneKit.framework/Versions/A/ToneKit
    0x7fff79c19000 -     0x7fff79c41ffb  com.apple.ToneLibrary (1.0 - 1) <D4F26E76-D04A-3D04-817D-0C8B5E68D5C5> /System/Library/PrivateFrameworks/ToneLibrary.framework/Versions/A/ToneLibrary
    0x7fff79c42000 -     0x7fff79c52ffb  com.apple.apd.Tourist (1.1 - 1.0.61) <08A840BD-A4D3-302B-A6B6-2ACD01A4D9C2> /System/Library/PrivateFrameworks/Tourist.framework/Versions/A/Tourist
    0x7fff79c59000 -     0x7fff79c5afff  com.apple.TrustEvaluationAgent (2.0 - 31.200.1) <5C3E1B2D-40A8-3237-A8D9-4E7B15EEA678> /System/Library/PrivateFrameworks/TrustEvaluationAgent.framework/Versions/A/TrustEvaluationAgent
    0x7fff79c60000 -     0x7fff79e1afff  com.apple.UIFoundation (1.0 - 551) <65A80450-7A24-3366-B521-4D02C4DB5094> /System/Library/PrivateFrameworks/UIFoundation.framework/Versions/A/UIFoundation
    0x7fff79e69000 -     0x7fff79e6fff7  com.apple.URLFormatting (59 - 59.34.1) <D081D1FC-ABD0-3C03-A284-869406AF776C> /System/Library/PrivateFrameworks/URLFormatting.framework/Versions/A/URLFormatting
    0x7fff79e70000 -     0x7fff79e74fff  com.apple.Uninstall (1.0.1 - 211) <5DD34B77-B16C-3CBE-B6EC-697E5A816EB0> /System/Library/PrivateFrameworks/Uninstall.framework/Versions/A/Uninstall
    0x7fff79ecd000 -     0x7fff79ecffff  libUAPreferences.dylib (361.50) <366B07FC-8F12-3B3C-A022-EE499FF29E4C> /System/Library/PrivateFrameworks/UniversalAccess.framework/Versions/A/Libraries/libUAPreferences.dylib
    0x7fff79efa000 -     0x7fff79f62fff  com.apple.UserActivity (213 - 213) <07C205E7-A580-3664-93D3-A59E81CDC260> /System/Library/PrivateFrameworks/UserActivity.framework/Versions/A/UserActivity
    0x7fff7a033000 -     0x7fff7a724ff7  com.apple.VectorKit (1.0 - 1360.22.10.1.3) <9535D625-E59C-3BBC-8B7D-F690F7F906CC> /System/Library/PrivateFrameworks/VectorKit.framework/Versions/A/VectorKit
    0x7fff7ab09000 -     0x7fff7abf2ff7  com.apple.ViewBridge (401.1 - 401.1) <E76BC854-5B08-3FFF-AA2C-9679754FCAF0> /System/Library/PrivateFrameworks/ViewBridge.framework/Versions/A/ViewBridge
    0x7fff7b07d000 -     0x7fff7b2e9ffb  libAWDSupportFramework.dylib (1001) <DFACA8A7-A623-38C1-BCCC-7E5B0997E69C> /System/Library/PrivateFrameworks/WirelessDiagnostics.framework/Versions/A/Libraries/libAWDSupportFramework.dylib
    0x7fff7b2ea000 -     0x7fff7b2fbff7  libprotobuf-lite.dylib (1001) <A1ACE244-A066-3892-9842-857D4DB595B3> /System/Library/PrivateFrameworks/WirelessDiagnostics.framework/Versions/A/Libraries/libprotobuf-lite.dylib
    0x7fff7b2fc000 -     0x7fff7b35eff7  libprotobuf.dylib (1001) <712ED2E1-EE09-3483-9B1A-699458603151> /System/Library/PrivateFrameworks/WirelessDiagnostics.framework/Versions/A/Libraries/libprotobuf.dylib
    0x7fff7b35f000 -     0x7fff7b3a5fff  com.apple.awd (1.0 - 930.11) <AB11D548-2A6D-3FEC-B9D0-B9473FB9F817> /System/Library/PrivateFrameworks/WirelessDiagnostics.framework/Versions/A/WirelessDiagnostics
    0x7fff7b418000 -     0x7fff7b41bfff  com.apple.dt.XCTTargetBootstrap (1.0 - 1) <5F779D77-4AB1-3CCD-9AAF-101EC7E4905B> /System/Library/PrivateFrameworks/XCTTargetBootstrap.framework/Versions/A/XCTTargetBootstrap
    0x7fff7b84c000 -     0x7fff7b84eff3  com.apple.loginsupport (1.0 - 1) <67BC49D6-320F-33ED-912E-16E5A342F385> /System/Library/PrivateFrameworks/login.framework/Versions/A/Frameworks/loginsupport.framework/Versions/A/loginsupport
    0x7fff7b84f000 -     0x7fff7b864fff  com.apple.login (3.0 - 3.0) <D6486C5A-E644-3F43-AD27-5E14685CD8D6> /System/Library/PrivateFrameworks/login.framework/Versions/A/login
    0x7fff7b89b000 -     0x7fff7b8cdffb  com.apple.contacts.vCard (1.0 - ???) <E616D166-8B7D-3C5E-89AA-7E6957B804DD> /System/Library/PrivateFrameworks/vCard.framework/Versions/A/vCard
    0x7fff7ba74000 -     0x7fff7ba88ffb  libAccessibility.dylib (2402.51.2) <B537C87A-4965-3191-9323-CCFA800EEEBF> /usr/lib/libAccessibility.dylib
    0x7fff7bb09000 -     0x7fff7bb41fff  libCRFSuite.dylib (41.15.4) <92752A96-D1CF-3CA1-837A-1E075AE4C642> /usr/lib/libCRFSuite.dylib
    0x7fff7bb44000 -     0x7fff7bb4fff7  libChineseTokenizer.dylib (28.15.3) <55572692-4918-3C54-AD35-726E03EC47D5> /usr/lib/libChineseTokenizer.dylib
    0x7fff7bb50000 -     0x7fff7bbdcff7  libCoreStorage.dylib (546.50.1) <F2BECC83-911F-31AB-A776-7DB8049F15B3> /usr/lib/libCoreStorage.dylib
    0x7fff7bbe0000 -     0x7fff7bbe1ff7  libDiagnosticMessagesClient.dylib (107) <15210AC0-61F9-3F9D-A159-A009F62EB537> /usr/lib/libDiagnosticMessagesClient.dylib
    0x7fff7bc18000 -     0x7fff7bddbff7  libFosl_dynamic.dylib (18.3.2) <D67B74E9-EB95-38BC-995C-5F4CC044C3F7> /usr/lib/libFosl_dynamic.dylib
    0x7fff7bddc000 -     0x7fff7bdeeffb  libIASAuthReboot.dylib (1238.6) <4201B55C-FECE-396E-8FF8-B6135BDFC94A> /usr/lib/libIASAuthReboot.dylib
    0x7fff7bdfc000 -     0x7fff7be03fff  libMatch.1.dylib (31.200.1) <5F633A34-4719-3E14-8384-B43F5DF1F514> /usr/lib/libMatch.1.dylib
    0x7fff7be31000 -     0x7fff7be50ff7  libMobileGestalt.dylib (645.220.9) <C2C55511-993B-34D2-9040-902BFDA38141> /usr/lib/libMobileGestalt.dylib
    0x7fff7be51000 -     0x7fff7be51fff  libOpenScriptingUtil.dylib (179) <441A2E60-5D5C-3567-9B00-AA22E6EE5358> /usr/lib/libOpenScriptingUtil.dylib
    0x7fff7bf92000 -     0x7fff7bf93ffb  libSystem.B.dylib (1252.200.5) <25F4A1F5-6551-312F-B397-C8D45ACC530A> /usr/lib/libSystem.B.dylib
    0x7fff7bf94000 -     0x7fff7c01cff7  libTelephonyUtilDynamic.dylib (3609) <1B352746-04EB-3B7B-8278-CB6412620FDF> /usr/lib/libTelephonyUtilDynamic.dylib
    0x7fff7c01d000 -     0x7fff7c01efff  libThaiTokenizer.dylib (2.15.1) <F09EB0BB-1E8A-3391-BEF5-7D91F0715A62> /usr/lib/libThaiTokenizer.dylib
    0x7fff7c01f000 -     0x7fff7c022ffb  libUniversalAccess.dylib (361.50) <C82FA352-58FD-35C9-A192-6D3F6ED34B12> /usr/lib/libUniversalAccess.dylib
    0x7fff7c031000 -     0x7fff7c047ffb  libapple_nghttp2.dylib (1.24.1) <71C126C5-D869-3E67-9778-058FA7F3CA74> /usr/lib/libapple_nghttp2.dylib
    0x7fff7c048000 -     0x7fff7c071ffb  libarchive.2.dylib (54.200.3) <32B8634D-E465-3F6D-B254-A20D44504508> /usr/lib/libarchive.2.dylib
    0x7fff7c072000 -     0x7fff7c0f1fef  libate.dylib (1.13.8) <C7F1CEC4-467F-34B2-92FF-6482460A39E1> /usr/lib/libate.dylib
    0x7fff7c0f5000 -     0x7fff7c0f5ff3  libauto.dylib (187) <003DEF68-0C59-3AFB-A7B7-A1B5ED301AF2> /usr/lib/libauto.dylib
    0x7fff7c0f6000 -     0x7fff7c1cbff7  libboringssl.dylib (109.230.1) <B9D4DA91-D94B-37D0-B6EF-4F361AF4910D> /usr/lib/libboringssl.dylib
    0x7fff7c1cc000 -     0x7fff7c1dcff3  libbsm.0.dylib (39.200.18) <58A9ACEC-BF46-3A4E-86F5-3DD9AD7095B4> /usr/lib/libbsm.0.dylib
    0x7fff7c1dd000 -     0x7fff7c1ebfff  libbz2.1.0.dylib (38.200.3) <4DEC3797-087F-3C8D-815B-48E895813251> /usr/lib/libbz2.1.0.dylib
    0x7fff7c1ec000 -     0x7fff7c243ff7  libc++.1.dylib (400.9.4) <B260AC33-EB9A-30C6-8746-D011B3B02B08> /usr/lib/libc++.1.dylib
    0x7fff7c244000 -     0x7fff7c259fff  libc++abi.dylib (400.17) <446F4748-8A89-3D2E-AE1C-27EEBE93A8AB> /usr/lib/libc++abi.dylib
    0x7fff7c25a000 -     0x7fff7c25aff3  libcharset.1.dylib (51.200.6) <43F7E100-F5D1-36AB-A26E-CF94196A19C0> /usr/lib/libcharset.1.dylib
    0x7fff7c25b000 -     0x7fff7c26bffb  libcmph.dylib (6.15.1) <CEDA6538-C071-3B5A-948E-DF61E2878983> /usr/lib/libcmph.dylib
    0x7fff7c26c000 -     0x7fff7c284ffb  libcompression.dylib (52.200.13) <05A2A91B-D24D-39E8-A071-261CBC5BB158> /usr/lib/libcompression.dylib
    0x7fff7c52f000 -     0x7fff7c545fff  libcoretls.dylib (155.220.1) <1229F9EA-C070-3D03-9DC6-F548C59F9FD5> /usr/lib/libcoretls.dylib
    0x7fff7c546000 -     0x7fff7c547ff3  libcoretls_cfhelpers.dylib (155.220.1) <33661841-3C3B-3608-86AC-C88D1CD6FE98> /usr/lib/libcoretls_cfhelpers.dylib
    0x7fff7c5fd000 -     0x7fff7c6e5ff7  libcrypto.0.9.8.dylib (76.200.2) <C5AF64F3-B321-3CA6-9CD1-215791D1C189> /usr/lib/libcrypto.0.9.8.dylib
    0x7fff7c6e6000 -     0x7fff7c876ff3  libcrypto.35.dylib (22.230.1) <175DFAE2-74B6-3285-BEC5-A849340B4429> /usr/lib/libcrypto.35.dylib
    0x7fff7ca11000 -     0x7fff7cba9ff7  libcrypto.42.dylib (22.230.1) <ACF14ED1-BEF0-3285-AF1D-C5A124D1F4CF> /usr/lib/libcrypto.42.dylib
    0x7fff7cbaa000 -     0x7fff7cbb5ff7  libcsfde.dylib (546.50.1) <2E741DA2-B368-3913-9F45-6F7B8B85B1CF> /usr/lib/libcsfde.dylib
    0x7fff7cbbe000 -     0x7fff7cc15ffb  libcups.2.dylib (462.10) <29B6D106-A5F2-321D-8916-90F595545D88> /usr/lib/libcups.2.dylib
    0x7fff7cc3f000 -     0x7fff7cc93ff3  libcurl.4.dylib (105.200.2) <B8F75D4F-E577-3ACE-8AFB-A30754D0D819> /usr/lib/libcurl.4.dylib
    0x7fff7cd1c000 -     0x7fff7cd1fff7  libdz.dylib (1.0.0 - 110.200.62) <9E7F84B3-20A3-3C3D-A451-59855AC9189F> /usr/lib/libdz.dylib
    0x7fff7cd4d000 -     0x7fff7cd4dfff  libenergytrace.dylib (17.200.1) <F5BA8134-16F9-31CD-90E1-D1EBEBADA4AE> /usr/lib/libenergytrace.dylib
    0x7fff7cd7f000 -     0x7fff7cd84ff7  libgermantok.dylib (17.15.2) <9381B152-5CFD-3D23-A5A7-4D64EE55B85E> /usr/lib/libgermantok.dylib
    0x7fff7cd85000 -     0x7fff7cd8aff7  libheimdal-asn1.dylib (520.220.2) <D851A47D-E162-35F8-B8D4-6ABEA7FFDAD7> /usr/lib/libheimdal-asn1.dylib
    0x7fff7cdb6000 -     0x7fff7cea7ff7  libiconv.2.dylib (51.200.6) <9FB95807-7C62-32B7-A19F-946D7FB7CCA6> /usr/lib/libiconv.2.dylib
    0x7fff7cea8000 -     0x7fff7d10bffb  libicucore.A.dylib (62109.0.1) <FEB89BD3-79C4-3208-A754-7E6BC4D38548> /usr/lib/libicucore.A.dylib
    0x7fff7d14e000 -     0x7fff7d151fff  libipconfig.dylib (359.200.10) <0F72636F-6966-3C15-AD56-3F3308FA9F44> /usr/lib/libipconfig.dylib
    0x7fff7d158000 -     0x7fff7d159fff  liblangid.dylib (128.15.1) <663D0A24-7260-31D1-9BFE-74D67B6F72F6> /usr/lib/liblangid.dylib
    0x7fff7d15a000 -     0x7fff7d172fff  liblzma.5.dylib (10.200.3) <9A52A949-0CB1-39B6-9244-D079FB609559> /usr/lib/liblzma.5.dylib
    0x7fff7d18a000 -     0x7fff7d23afff  libmecab.1.0.0.dylib (779.24.1) <590BC39C-2A3E-368B-9499-C808B84C4955> /usr/lib/libmecab.1.0.0.dylib
    0x7fff7d23b000 -     0x7fff7d478ff7  libmecabra.dylib (779.24.1) <22BFD5A8-EA42-3DC3-8910-F27DCFB1B631> /usr/lib/libmecabra.dylib
    0x7fff7d650000 -     0x7fff7d9a8ffb  libnetwork.dylib (1229.230.4) <B76F8990-85CD-382D-BDF4-58C4AD4CE6C4> /usr/lib/libnetwork.dylib
    0x7fff7d9a9000 -     0x7fff7d9b8ff7  libnetworkextension.dylib (767.220.1) <A21F1F59-3DA6-32E0-9600-B945A0CD448E> /usr/lib/libnetworkextension.dylib
    0x7fff7da39000 -     0x7fff7e1bffe7  libobjc.A.dylib (750.1) <804715F4-F52D-34D0-8FEC-A25DC08513C3> /usr/lib/libobjc.A.dylib
    0x7fff7e1c0000 -     0x7fff7e1c1fff  libodfde.dylib (24.50.1) <0998B78E-DCB8-33EA-A439-6E591D808F45> /usr/lib/libodfde.dylib
    0x7fff7e1d2000 -     0x7fff7e1d6ffb  libpam.2.dylib (22.200.1) <85253002-89F2-3872-9C8A-1801303A2EBB> /usr/lib/libpam.2.dylib
    0x7fff7e1d9000 -     0x7fff7e20fff7  libpcap.A.dylib (79.200.4) <6D25197A-2F7C-3147-A45A-F6F13E55909F> /usr/lib/libpcap.A.dylib
    0x7fff7e329000 -     0x7fff7e341ffb  libresolv.9.dylib (65.200.2) <A1A77B4E-1AF0-3039-9945-D05440494E00> /usr/lib/libresolv.9.dylib
    0x7fff7e343000 -     0x7fff7e37fff7  libsandbox.1.dylib (851.230.3) <F9A8198C-9FE6-3DE0-8D4C-FA09B4F348D3> /usr/lib/libsandbox.1.dylib
    0x7fff7e380000 -     0x7fff7e392ff7  libsasl2.2.dylib (211) <4A339F6D-927B-31C2-AAC5-896094D7A0B7> /usr/lib/libsasl2.2.dylib
    0x7fff7e393000 -     0x7fff7e394ff7  libspindump.dylib (267.1) <9DEA015B-410E-3D6E-A3EE-54E046092EA9> /usr/lib/libspindump.dylib
    0x7fff7e395000 -     0x7fff7e56cfe7  libsqlite3.dylib (274.20) <7B202039-5DDF-3140-808C-521E8F11394E> /usr/lib/libsqlite3.dylib
    0x7fff7e66f000 -     0x7fff7e6bcfff  libssl.44.dylib (22.230.1) <AA29CF06-DE70-3991-977E-74BC0F4157F7> /usr/lib/libssl.44.dylib
    0x7fff7e6bd000 -     0x7fff7e70eff7  libstdc++.6.dylib (104.1) <289782E6-5965-3C65-B54D-A4236C8B35A3> /usr/lib/libstdc++.6.dylib
    0x7fff7e745000 -     0x7fff7e775fff  libtidy.A.dylib (16.1) <C64E8888-24A4-3909-BA0A-4FE065E36406> /usr/lib/libtidy.A.dylib
    0x7fff7e799000 -     0x7fff7e7f8ff3  libusrtcp.dylib (1229.230.4) <D500ACAC-5092-35D1-A50E-B844B4748055> /usr/lib/libusrtcp.dylib
    0x7fff7e7f9000 -     0x7fff7e7fcffb  libutil.dylib (51.200.4) <10C5E165-0939-363A-9D13-7076F3B513EC> /usr/lib/libutil.dylib
    0x7fff7e7fd000 -     0x7fff7e80afff  libxar.1.dylib (404) <16E875B3-CF89-3059-87BB-36D301B32E7B> /usr/lib/libxar.1.dylib
    0x7fff7e80b000 -     0x7fff7e80eff7  libxcselect.dylib (2354) <DE167A18-F773-3950-B5BC-63D8FC608FD9> /usr/lib/libxcselect.dylib
    0x7fff7e80f000 -     0x7fff7e8f2fff  libxml2.2.dylib (32.8) <3E7875AC-3195-3800-AC48-8AA3B7BE51E4> /usr/lib/libxml2.2.dylib
    0x7fff7e8f3000 -     0x7fff7e91bff3  libxslt.1.dylib (16.1) <D6EBFEBB-F88E-398F-B1B5-66F413C2CD32> /usr/lib/libxslt.1.dylib
    0x7fff7e91c000 -     0x7fff7e92effb  libz.1.dylib (70.200.4) <15F7B40A-424C-33BB-BF2C-7E8195128B78> /usr/lib/libz.1.dylib
    0x7fff7e99f000 -     0x7fff7e9a3ff3  libcache.dylib (81) <704331AC-E43D-343A-8C24-39201142AF27> /usr/lib/system/libcache.dylib
    0x7fff7e9a4000 -     0x7fff7e9aeff3  libcommonCrypto.dylib (60118.220.1) <9C865644-EE9A-3662-AB77-7C8A5E561784> /usr/lib/system/libcommonCrypto.dylib
    0x7fff7e9af000 -     0x7fff7e9b6fff  libcompiler_rt.dylib (63.4) <817772E3-E836-3FFD-A39B-BDCD1C357221> /usr/lib/system/libcompiler_rt.dylib
    0x7fff7e9b7000 -     0x7fff7e9c0ff3  libcopyfile.dylib (146.200.3) <5C5C4F35-DAB7-3CF1-940F-F47192AB8289> /usr/lib/system/libcopyfile.dylib
    0x7fff7e9c1000 -     0x7fff7ea45fdf  libcorecrypto.dylib (602.230.1) <C78D1A87-5543-3561-BEB4-3B480BA94ECB> /usr/lib/system/libcorecrypto.dylib
    0x7fff7eacc000 -     0x7fff7eb06ff7  libdispatch.dylib (1008.220.2) <2FDB1401-5119-3DF0-91F5-F4E105F00CD7> /usr/lib/system/libdispatch.dylib
    0x7fff7eb07000 -     0x7fff7eb36ff3  libdyld.dylib (640.2) <376E3F3A-6942-3B0E-AD5E-4B97E8255CF5> /usr/lib/system/libdyld.dylib
    0x7fff7eb37000 -     0x7fff7eb37ffb  libkeymgr.dylib (30) <A4EFD9A4-2EF3-3E18-B325-F527E3821939> /usr/lib/system/libkeymgr.dylib
    0x7fff7eb38000 -     0x7fff7eb44ff7  libkxld.dylib (4903.231.4) <7275D7AD-54CE-30BF-9459-18EA77E28ACC> /usr/lib/system/libkxld.dylib
    0x7fff7eb45000 -     0x7fff7eb45ff7  liblaunch.dylib (1336.220.5) <8563299C-2493-3DBD-8E88-3FC673DB47DD> /usr/lib/system/liblaunch.dylib
    0x7fff7eb46000 -     0x7fff7eb4bfff  libmacho.dylib (921) <6ADB99F3-D142-3A0A-B3CE-031354766ACC> /usr/lib/system/libmacho.dylib
    0x7fff7eb4c000 -     0x7fff7eb4effb  libquarantine.dylib (86.220.1) <58524FD7-63C5-38E0-9D90-845A79551C14> /usr/lib/system/libquarantine.dylib
    0x7fff7eb4f000 -     0x7fff7eb50ff3  libremovefile.dylib (45.200.2) <BA53CA8A-9974-3A43-9265-B110B1AE470F> /usr/lib/system/libremovefile.dylib
    0x7fff7eb51000 -     0x7fff7eb68ff3  libsystem_asl.dylib (356.200.4) <33C62769-1242-3BC1-9459-13CBCDECC7FE> /usr/lib/system/libsystem_asl.dylib
    0x7fff7eb69000 -     0x7fff7eb69fff  libsystem_blocks.dylib (73) <152EDADF-7D94-35F2-89B7-E66DCD945BBA> /usr/lib/system/libsystem_blocks.dylib
    0x7fff7eb6a000 -     0x7fff7ebf2fff  libsystem_c.dylib (1272.200.26) <D6C701A2-9F17-308D-B6AC-9E17EF31B7DF> /usr/lib/system/libsystem_c.dylib
    0x7fff7ebf3000 -     0x7fff7ebf6ff7  libsystem_configuration.dylib (963.200.27) <94898525-ECC8-3CC9-B312-CBEAAC305E32> /usr/lib/system/libsystem_configuration.dylib
    0x7fff7ebf7000 -     0x7fff7ebfaff7  libsystem_coreservices.dylib (66) <10818C17-70E1-328E-A3E3-C3EB81AEC590> /usr/lib/system/libsystem_coreservices.dylib
    0x7fff7ebfb000 -     0x7fff7ec01ffb  libsystem_darwin.dylib (1272.200.26) <07468CF7-982F-37C4-83D0-D5E602A683AA> /usr/lib/system/libsystem_darwin.dylib
    0x7fff7ec02000 -     0x7fff7ec08ff7  libsystem_dnssd.dylib (878.230.2) <FF9D5025-F060-334B-B6D8-C5D0BB6A55E3> /usr/lib/system/libsystem_dnssd.dylib
    0x7fff7ec09000 -     0x7fff7ec55ff3  libsystem_info.dylib (517.200.9) <54B65F21-2E93-3579-9B72-6637A03245D9> /usr/lib/system/libsystem_info.dylib
    0x7fff7ec56000 -     0x7fff7ec7eff7  libsystem_kernel.dylib (4903.231.4) <ABDAABCA-C22A-3960-AA4E-E91A9FF34929> /usr/lib/system/libsystem_kernel.dylib
    0x7fff7ec7f000 -     0x7fff7eccaff7  libsystem_m.dylib (3158.200.7) <AF25F8E8-194C-314F-A2D3-A424853EE796> /usr/lib/system/libsystem_m.dylib
    0x7fff7eccb000 -     0x7fff7ecefff7  libsystem_malloc.dylib (166.220.1) <4777DC06-F9C6-356E-82AB-86A1C6D62F3A> /usr/lib/system/libsystem_malloc.dylib
    0x7fff7ecf0000 -     0x7fff7ecfbff3  libsystem_networkextension.dylib (767.220.1) <74818C3D-9B68-3823-A737-6A4B782618F2> /usr/lib/system/libsystem_networkextension.dylib
    0x7fff7ecfc000 -     0x7fff7ed03fff  libsystem_notify.dylib (172.200.21) <65B3061D-41D7-3485-B217-A861E05AD50B> /usr/lib/system/libsystem_notify.dylib
    0x7fff7ed04000 -     0x7fff7ed0dfef  libsystem_platform.dylib (177.200.16) <83DED753-51EC-3B8C-A98D-883A5184086B> /usr/lib/system/libsystem_platform.dylib
    0x7fff7ed0e000 -     0x7fff7ed18fff  libsystem_pthread.dylib (330.230.1) <BA382BFC-6A17-3940-B417-D090EF2AF4F4> /usr/lib/system/libsystem_pthread.dylib
    0x7fff7ed19000 -     0x7fff7ed1cff7  libsystem_sandbox.dylib (851.230.3) <4D0CB1CA-160C-3C29-BE5D-131D68D43B1B> /usr/lib/system/libsystem_sandbox.dylib
    0x7fff7ed1d000 -     0x7fff7ed1fff3  libsystem_secinit.dylib (30.220.1) <5964B6D2-19D4-3CF9-BDBC-4EB1D42348F1> /usr/lib/system/libsystem_secinit.dylib
    0x7fff7ed20000 -     0x7fff7ed27ff7  libsystem_symptoms.dylib (820.237.2) <487E1794-4C6E-3B1B-9C55-95B1A5FF9B90> /usr/lib/system/libsystem_symptoms.dylib
    0x7fff7ed28000 -     0x7fff7ed3dff7  libsystem_trace.dylib (906.220.1) <4D4BA88A-FA32-379D-8860-33838723B35F> /usr/lib/system/libsystem_trace.dylib
    0x7fff7ed3f000 -     0x7fff7ed44ffb  libunwind.dylib (35.4) <EF1A77FD-A86B-39F5-ABEA-6100AB23583A> /usr/lib/system/libunwind.dylib
    0x7fff7ed45000 -     0x7fff7ed75fff  libxpc.dylib (1336.220.5) <DC50F33E-C47D-3256-BFE0-F8E9B5AEBE17> /usr/lib/system/libxpc.dylib

External Modification Summary:
  Calls made by other processes targeting this process:
    task_for_pid: 10
    thread_create: 0
    thread_set_state: 0
  Calls made by this process:
    task_for_pid: 0
    thread_create: 0
    thread_set_state: 0
  Calls made by all processes on this machine:
    task_for_pid: 351809
    thread_create: 0
    thread_set_state: 0

VM Region Summary:
ReadOnly portion of Libraries: Total=583.6M resident=0K(0%) swapped_out_or_unallocated=583.6M(100%)
Writable regions: Total=1.2G written=0K(0%) resident=0K(0%) swapped_out=0K(0%) unallocated=1.2G(100%)
 
                                VIRTUAL   REGION 
REGION TYPE                        SIZE    COUNT (non-coalesced) 
===========                     =======  ======= 
Accelerate framework               640K        6 
Activity Tracing                   256K        2 
CG backing stores                  992K        3 
CG image                          1864K       82 
CG raster data                     116K       11 
CoreAnimation                     71.1M      201 
CoreData Object IDs               4100K        3 
CoreGraphics                         8K        2 
CoreImage                          872K      107 
CoreUI image data                 5428K       72 
CoreUI image file                  680K       19 
Foundation                       426.8M        8 
Kernel Alloc Once                 2596K        8 
MALLOC                           456.5M       87 
MALLOC guard page                   32K        9 
MALLOC_NANO (reserved)           256.0M        2         reserved VM address space (unallocated)
Memory Tag 242                      12K        2 
Memory Tag 250                    12.8M       32 
Memory Tag 251                      60K        4 
SQLite page cache                  128K        3 
STACK GUARD                       56.0M       13 
Stack                             13.6M       13 
VM_ALLOCATE                        500K       37 
__DATA                            60.4M      527 
__FONT_DATA                          4K        2 
__LINKEDIT                       216.6M       11 
__TEXT                           367.1M      528 
__UNICODE                          564K        2 
mapped file                      274.9M       93 
shared memory                      892K       16 
===========                     =======  ======= 
TOTAL                              2.2G     1875 
TOTAL, minus reserved VM space     1.9G     1875 

Model: MacBookPro15,2, BootROM 220.230.16.0.0 (iBridge: 16.16.3118.5.1,0), 4 processors, Intel Core i5, 2.3 GHz, 16 GB, SMC 
Graphics: Intel Iris Plus Graphics 655, Intel Iris Plus Graphics 655, Built-In
Memory Module: BANK 0/ChannelA-DIMM0, 8 GB, LPDDR3, 2133 MHz, SK Hynix, -
Memory Module: BANK 2/ChannelB-DIMM0, 8 GB, LPDDR3, 2133 MHz, SK Hynix, -
AirPort: spairport_wireless_card_type_airport_extreme (0x14E4, 0x7BF), wl0: Sep 18 2018 16:24:57 version 9.130.86.7.32.6.21 FWID 01-83a3fe91
Bluetooth: Version 6.0.9f2, 3 services, 27 devices, 1 incoming serial ports
Network Service: Wi-Fi, AirPort, en0
USB Device: USB 3.1 Bus
USB Device: iBridge Bus
USB Device: iBridge DFR brightness
USB Device: iBridge Display
USB Device: Apple Internal Keyboard / Trackpad
USB Device: Headset
USB Device: iBridge ALS
USB Device: iBridge FaceTime HD Camera (Built-in)
USB Device: iBridge
Thunderbolt Bus: MacBook Pro, Apple Inc., 34.6
Thunderbolt Bus: MacBook Pro, Apple Inc., 34.6

```
