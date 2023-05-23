const path = require("path");
const isDev = require("electron-is-dev");
const { app, BrowserWindow, ipcMain } = require('electron');
const { exec } = require('child_process');

let mainWindow;

const runProcess = (filename) => {
    console.log("[INFO] Starting file: " + filename);
    exec(`call .\\public\\batch\\${filename}`,
        (error, stdout, stderr) => {
            console.log(stdout);
            console.log(stderr);
            if (error !== null) {
                console.log(`exec error: ${error}`);
            }
        }
    );
};

function createWindow() {
    console.log("asdf: "+path.join(__dirname, 'preload.js'))
    mainWindow = new BrowserWindow({ 
        show: false,
        webPreferences: {
            preload: path.join(__dirname, 'preload.js')
        } 
    });

    mainWindow.maximize()
    mainWindow.show()

    ipcMain.on('set-title', (event, title) => {
        console.log("event" + event);
        console.log("title" + title);
    })

    ipcMain.on('process', (event, processes) => {
        processes.forEach((element) => {
            runProcess(element)
        })
    })


    mainWindow.loadURL(isDev ? "http://localhost:3000": 
        `file://${path.join(__dirname, "../build/index.html")}`);

    mainWindow.on("closed", () => (mainWindow = null));
}

app.on("ready", createWindow);

app.on("window-all-closed", () => {
    if (process.platform !== "darwin") {
        app.quit();
    }
});

app.on("activate", () => {
    if (mainWindow === null) {
        createWindow();
    }
});