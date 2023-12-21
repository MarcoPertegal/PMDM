import { Injectable } from '@angular/core';
import { Firestore, addDoc, collection } from '@angular/fire/firestore';

const COLLECTION_GAMES = 'game'

@Injectable({
  providedIn: 'root'
})
export class GameService {
  //despues del from @angular/fire/firestore
  //push(doc.id)
  /*
  import { collection, query, where, onSnapshot } from "firebase/firestore";

const q = query(collection(db, "cities"), where("state", "==", "CA"));
const unsubscribe = onSnapshot(q, (querySnapshot) => {
  const cities = [];
  querySnapshot.forEach((doc) => {
      cities.push(doc.data().name);
  });
  console.log("Current cities in CA: ", cities.join(", "));
});
  */

  constructor(public firestore: Firestore) { }

  async findGames() {
    const docRef = await addDoc(collection(this.firestore, COLLECTION_GAMES), {
    });
  }

  async createGame(player1: string, player2: string) {
    const docRef = await addDoc(collection(this.firestore, COLLECTION_GAMES), {
      player1: player1,
      player2: player2,
    });
    console.log('Document written with ID: ', docRef.id);
  }
}
