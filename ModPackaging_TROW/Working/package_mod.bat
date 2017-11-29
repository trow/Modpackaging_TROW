@echo off
setlocal

:: /* 本程序由 c4_angel AKA 四是而非 修改自 ModPackaging: https://github.com/Gibberlings3/ModPackaging ，感谢原作者 */

:: /* 初始化游戏环境对应的名称，不可修改 */
call "%~dp0..\ModPackaging\utilities\ie_games.bat"

:: /* 修改一下4个变量，指定Mod的名字、版本、作者名字和Mod目录名，前3项将出现在Windows的安装程序界面，请勿使用中文 */
set "mod_name=ModPackaging_TROW"
set mod_version=v1.0
set mod_author=c4_angel
set mod_folder=ModPackaging_TROW

:: /* 从以下项目中选择Mod所兼容的游戏环境并修改：*/
:: /* %bg1%, %bg2%, %bgt%, %tutu%, %bgee%, %bgiiee%, %iwd1%, %iwdee%, %iwd2%, %iwd2ee%, %iwd-in-bg2%, %pst%, %pstee%, %eet% */
set "compatible_games=%bg1%, %bg2%, %bgt%, %bgee%, %bgiiee%, or %eet%"

:: /* 修改以下5个变量匹配你的Mod： */
:: /* ico_folder：指定安装程序使用的图标和文本存放位置 */
:: /* audio_folder：sox和oggdec.exe所在目录，如果Mod不添加任何音频则无需修改 */
:: /* tispack_folder：包含Win32、OSX和Unix用于处理tilesets的子目录，如Mod不添加任何tilesets则无需修改 */
:: /* iconv_folder：iconv.exe的存放目录，如Mod不支持EE或不包含HANDLE_CHARSETS对文本进行转码则无需修改 */
:: /* mod_readme：Mod说明文档的在线地址，可以是任意网页或帖子等等，默认为TROW博德之门专区克伦威尔之家子版块 */
set ico_folder=%mod_folder%\style
set audio_folder=%mod_folder%\audio
set tispack_folder=%mod_folder%\tiz
set iconv_folder=%mod_folder%\languages\iconv
set mod_readme=https://trow.cc/board/showforum=49

:: /* 设置为不同系统打包安装文件，设为0表示不打包 */
set build_windows=1
set build_osx=1
set build_linux=1

:: /* 设置是否将Mod内文件名小写处理，启用=1，不启用=0 */
set lowercase_filenames=1

:: /* 真实打包程序 */
call "%~dp0..\ModPackaging\utilities\complete_packaging.bat"

endlocal
