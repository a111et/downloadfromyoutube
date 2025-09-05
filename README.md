[Русский 🇷🇺 ](README_RU.md) | [English 🇬🇧 ](README.md)

### > **⚠️ The script itself is NOT translated into English.**

# Download YouTube videos from the Windows 10/11 context menu

Here is a handy script for downloading YouTube videos.  
With it, you can save either the full video or just its audio track.

<img width="567" height="131" alt="image" src="https://github.com/user-attachments/assets/82ab93ef-4d9c-48be-800c-8221e69ca6d9" />

---

## How to use the script?

1. **Copy the link** to the desired YouTube video.  
2. **Go to the folder** where you want to save the file using File Explorer (usually `"This PC"` or `"My Computer"`).  
3. **Right-click** inside the folder and select `Download from YouTube`.  
4. **Choose one of the download options:**
   - **Video**: Downloads the full video in the best available quality.  
   - **Video with aria2c**: Same as **Video**, but faster because it splits the download into parts.  
   - **Audio**: Downloads only the audio track in the best available quality.  
   - **Audio with aria2c**: Same as **Audio**, but faster because it splits the download into parts.  

---

## Script installation

The installation is very simple.  
Just run one of the provided installer files:

- `_install_DFY.cmd` — adds the option to the context menu.  
- `_install_DFY_shift.cmd` — adds the option to the context menu, but it will only appear if you hold **Shift**.  

---

## Script removal

Uninstalling is even easier.  
Simply run the file: `_uninstal.cmd`  

---

## If you encounter errors

Most likely you just need to update: [yt-dlp.exe](https://github.com/yt-dlp/yt-dlp/releases)  
Or try enabling a VPN.  

**Happy downloading!**

---

## Links

- [Original DownloadFromYoutube project](https://win10tweaker.ru/forum/topic/downloadfromyoutube)  
- [My GitHub project](https://github.com/a111et/downloadfromyoutube/releases)  

## This project uses
- [yt-dlp](https://github.com/yt-dlp/yt-dlp/)  
- [aria2](https://github.com/aria2/aria2)  
- [FFmpeg](https://github.com/BtbN/FFmpeg-Builds)  
