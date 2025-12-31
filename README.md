
# OmniGraffle5 Pro + Scripting Brdige bug demo

This reproduces a bug seen in OmniGraffle 5 Pro 5.4.2 (v139.16 r171715) running
on 10.8.2 where OmniGraffle does not instantiate the right class of proxy object
when being called from Objective C via the Scripting Bridge. A reproduction case
can be found in the applicationDidFinishLaunching: method of this project's 
ScriptingBridgeBugDemo/COAppDelegate.m file. 






























