package main

import (
    "bytes"
    "crypto/sha256"
    "encoding/hex"
    "fmt"
    "io"
    "io/ioutil"
    "mime/multipart"
    "net/http"
    "os"
    "path/filepath"
)

const updateDescription = `
🎉 Добавил новое 🎄
`
func main() {
    fmt.Println("Starting APK upload process...")

    apkPath, err := findApk("./build/app/outputs/apk/release/")
    if err != nil {
        fmt.Println("Error finding APK:", err)
        os.Exit(1)
    }
    fmt.Println("APK found at:", apkPath)

    checksum, err := calculateChecksum(apkPath)
    if err != nil {
        fmt.Println("Error calculating checksum:", err)
        os.Exit(1)
    }
    fmt.Println("Calculated checksum:", checksum)

    fmt.Println("Uploading file...")
	err = uploadFile(apkPath, checksum, updateDescription)
    if err != nil {
        fmt.Println("Error uploading file:", err)
        os.Exit(1)
    }
    fmt.Println("File uploaded successfully")
}

func findApk(dir string) (string, error) {
    fmt.Println("Searching for APK in directory:", dir)
    var apkPath string
    err := filepath.Walk(dir, func(path string, info os.FileInfo, err error) error {
        // Match the pattern of the APK file
        if filepath.Ext(path) == ".apk" {
            apkPath = path
            return filepath.SkipDir
        }
        return nil
    })
    return apkPath, err
}


func calculateChecksum(filePath string) (string, error) {
    fmt.Println("Calculating checksum for file:", filePath)
    file, err := os.Open(filePath)
    if err != nil {
        return "", err
    }
    defer file.Close()

    hasher := sha256.New()
    if _, err := io.Copy(hasher, file); err != nil {
        return "", err
    }

    return hex.EncodeToString(hasher.Sum(nil)), nil
}

func uploadFile(filePath, checksum, description string) error {
    fmt.Println("Preparing to upload file:", filePath)
    file, err := os.Open(filePath)
    if err != nil {
        return err
    }
    defer file.Close()

    body := &bytes.Buffer{}
    writer := multipart.NewWriter(body)
    part, err := writer.CreateFormFile("file", filepath.Base(filePath))
    if err != nil {
        return err
    }
    _, err = io.Copy(part, file)
    if err != nil {
        return err
    }

    err = writer.WriteField("checksum", checksum)
	if err != nil {
		return err
	}
	err = writer.WriteField("updateDescription", description)
    if err != nil {
        return err
    }

    err = writer.Close()
    if err != nil {
        return err
    }

    request, err := http.NewRequest("POST", "https://wayofdt.com/app-update-api/v1/upload", body)
    request.Header.Set("Content-Type", writer.FormDataContentType())

    fmt.Println("Sending request to server...")
    client := &http.Client{}
    resp, err := client.Do(request)
    if err != nil {
        return err
    }
    defer resp.Body.Close()

    responseBytes, err := ioutil.ReadAll(resp.Body)
    if err != nil {
        return err
    }
    fmt.Println("Server response:", string(responseBytes))

    return nil
}
