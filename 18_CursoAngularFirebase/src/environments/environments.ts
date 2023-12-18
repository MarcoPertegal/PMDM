// Import the functions you need from the SDKs you need
import { initializeApp } from "firebase/app";
import { getAnalytics } from "firebase/analytics";

export const environment = {
    production: false,
    firebaseConfig: {
        apiKey: "AIzaSyAseAxK4WSKg8XebzAGOHLdzA8UmlZrp70",
        authDomain: "cursoangularfirebase-prod.firebaseapp.com",
        databaseURL: "https://cursoangularfirebase-prod-default-rtdb.europe-west1.firebasedatabase.app",
        projectId: "cursoangularfirebase-prod",
        storageBucket: "cursoangularfirebase-prod.appspot.com",
        messagingSenderId: "763825322265",
        appId: "1:763825322265:web:5c1db143bea89b3c9e6d88",
        measurementId: "G-3SYXZJNTW7"
    },
    title: 'CursoAngularFirebase DEV'
};

// Initialize Firebase
const app = initializeApp(environment.firebaseConfig);
const analytics = getAnalytics(app);
