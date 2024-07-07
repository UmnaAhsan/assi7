



firebase.initializedApp({
    apiKey: "...",
    authDomain: "...",
    databaseURL: "...",
    projectId: "...",
    storageBucket: "...",
    messagingSenderId: "...",
    appId: "...",
});

const messaging = firebase.messaging();

messaging.onBackgroundMessage((messsage)=> {
    console.log("onBackgroundMessage", message);
});