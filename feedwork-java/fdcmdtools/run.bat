@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  cmdtools startup script for Windows
@rem
@rem ##########################################################################

if defined JAVA_HOME goto StartRun
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.
goto END

:StartRun
set CODE_DIR=
set BASE_PACKAGE_NAME=

set CODE_TEMPLATE_DIR=.\\template

if "" == "%CODE_DIR%" goto NullCODE_DIR
if "" == "%BASE_PACKAGE_NAME%" goto NullBASE_PACKAGE_NAME

@rem ****************   Run java command   ****************

java -jar fdcmdtools-190703.jar codegen codedir=%CODE_DIR% basepkg=%BASE_PACKAGE_NAME% ftldir=%CODE_TEMPLATE_DIR%

@rem java -Dfdconf.dbinfo=./dbinfo.conf -jar fdcmdtools-190703.jar codegen codedir=%CODE_DIR% basepkg=%BASE_PACKAGE_NAME% ftldir=%CODE_TEMPLATE_DIR% -E

goto END

@rem ----------------   Error dealing   -------------------------------------------------------

:NullCODE_DIR
echo Please set the CODE_DIR variable in this BAT file.
goto END

:NullBASE_PACKAGE_NAME
echo Please set the BASE_PACKAGE_NAME variable in this BAT file.
goto END

:END
exit /b 1
