program BitmapTest;
{

  Delphi DUnit Test Project
  -------------------------
  This project contains the DUnit test framework and the GUI/Console test runners.
  Add "CONSOLE_TESTRUNNER" to the conditional defines entry in the project options
  to use the console test runner.  Otherwise the GUI test runner will be used by
  default.

}

{$IFDEF CONSOLE_TESTRUNNER}
{$APPTYPE CONSOLE}
{$ENDIF}

{$R 'bitmaps.res' 'bitmaps.rc'}

uses
  madExcept,
  madLinkDisAsm,
  madListHardware,
  madListProcesses,
  madListModules,
  TestFramework,
  GUITestRunner,
  TextTestRunner,
  DUnitTestRunner,
  Forms,
  TestBitmapLoadSave in 'TestBitmapLoadSave.pas',
  GR32 in '..\..\Source\GR32.pas',
  FileTestFramework in '..\DUnit\FileTestFramework.pas';

{$R *.RES}

begin
  Application.Initialize;
  if IsConsole then
    with TextTestRunner.RunRegisteredTests do
      Free
  else
    GUITestRunner.RunRegisteredTests;
end.


