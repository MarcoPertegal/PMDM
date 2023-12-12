import { Injectable } from '@angular/core';
import { AngularFireAuthModule } from '@angular/fire/compat/auth';

@Injectable({
  providedIn: 'root'
})
export class AuthService {

  constructor(public auth: AngularFireAuthModule) {
    user = this.auth.authState.pipe(new Map(authState => {
      console.log('authState: ', authState);
      if (authState) {
        return authState;
      } else {
        return null;
      }
    }))
  }

  logging() {
    console.log('login');
  }

  glogging() {
    console.log('login google');
  }

  logout() {
    console.log('login');
  }
}
