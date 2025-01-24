# Ghidra 安裝與設定指南 (macOS)

這個專案提供了在 macOS 系統上安裝和運行 Ghidra 的自動化 script。

## 檔案說明

本專案包含以下檔案：

1. `1.install_ghidra.sh` - 自動下載並安裝 Ghidra 的腳本
2. `2.auth_ghidra.sh` - 設定腳本執行權限
3. `3.setup-ghidra-in-apple-script-editor.txt` - Apple Script 設定指南

## 安裝步驟

### 1. 下載安裝腳本

首先複製所有 scripts 到您的本機。

### 2. 設定執行權限

執行以下指令來設定腳本的執行權限：

chmod +x 1.install_ghidra.sh

### 3. 執行安裝 script

運行安裝 script：

./1.install_ghidra.sh

### 4. 設定 Apple Script

在 Apple Script Editor

- 1.  開啟 Apple Script Editor
- 2.  複製以下程式碼： `3.setup-ghidra-in-apple-script-editor.txt` 的內容。
- 3.  貼上程式碼
- 4.  儲存
- 5.  關閉 Apple Script Editor

或是使用 docker image
