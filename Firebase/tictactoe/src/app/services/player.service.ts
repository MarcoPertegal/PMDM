import { Injectable } from '@angular/core';
import { Firestore, addDoc, collection } from '@angular/fire/firestore';

const COLLECTION_PLAYERS = 'player'

@Injectable({
  providedIn: 'root'
})
export class PlayerService {

  constructor(public firestore: Firestore) { }

  async createPlayer(name: string) {
    const docRef = await addDoc(collection(this.firestore, COLLECTION_PLAYERS), {
      name: name
    });
    console.log('Document written with ID: ', docRef.id);
  }
}
