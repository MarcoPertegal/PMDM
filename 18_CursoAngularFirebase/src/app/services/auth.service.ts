import { Injectable } from '@angular/core';
import { AngularFireAuth } from '@angular/fire/compat/auth';
import { AngularFireDatabase } from '@angular/fire/compat/database';
import { map } from 'rxjs';
import { GoogleAuthProvider } from "firebase/auth";

@Injectable({
  providedIn: 'root'
})
export class AuthService {

  email = '';
  password = '';
  authUser!: any;

  constructor(public auth: AngularFireAuth, private db: AngularFireDatabase) { }

  //authState es un observable que nos va a dar información del usuario
  user = this.auth.authState.pipe(map(authState => {
    console.log('authState: ', authState);
    if (authState != null) {
      this.authUser = authState;
      return authState;
    } else {
      return null;
    }
  }))

  loging() {
    console.log('login');
    this.auth.signInWithEmailAndPassword(this.email, this.password)
      .then(user => {
        console.log('user logado: ', user);
        this.email = '';
        this.password = '';
        this.authUser = user.user;
        this.updateUserData(user.user);
      })
      .catch(error => {
        console.log('error user logado: ', error);
      })
  }

  logout() {
    console.log('logout');
    this.auth.signOut();
  }

  gloging() {
    console.log('google login');
    this.auth.signInWithPopup(new GoogleAuthProvider())
      .then(user => {
        console.log('user logado: ', user);
        this.email = '';
        this.password = '';
        this.authUser = user.user;
        this.updateUserData(user.user);
      })
      .catch(error => {
        console.log('error user logado: ', error);
      })
  }

  updateUserData(user: any) {
    console.log('user: ', user);
    const path = 'users/' + user.uid;
    const u = {
      email: user.email
    }
    //Si el objeto en este path existe lo actualiza o sino lo crea
    this.db.object(path).update(u)
      .catch(error => console.log(error));
  }

  getUsers() {
    const path = 'users/';
    return this.db.list(path).snapshotChanges();
  }

  removeUser(userUid: string) {
    const path = 'users/' + userUid;
    return this.db.object(path).remove();
  }
}
