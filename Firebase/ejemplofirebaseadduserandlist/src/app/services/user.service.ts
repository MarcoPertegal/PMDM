import { Injectable } from '@angular/core';
import { Firestore } from '@angular/fire/firestore';
import { DocumentData, addDoc, collection, getDocs, query } from 'firebase/firestore';

const COLLECTION_USERS = 'users';

@Injectable({
  providedIn: 'root'
})
export class UserService {

  constructor(public firestore: Firestore) { }

  async createUser(name: string, age: number) {
    const docRef = await addDoc(collection(this.firestore, COLLECTION_USERS), {
      name: name,
      age: age,
    });
    console.log('Document written with ID: ', docRef.id);
  }

  async getUsers() {
    const q = query(collection(this.firestore, COLLECTION_USERS));
    const querySnapshot = await getDocs(q);

    const users: Array<{ id: string, data: DocumentData }> = [];
    querySnapshot.forEach((doc) => {
      users.push({ id: doc.id, data: doc.data() });
    });

    return users;
  }

}
