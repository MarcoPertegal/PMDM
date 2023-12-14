import { Component } from '@angular/core';
import { environment } from '../environments/environments';
import { AuthService } from './services/auth.service';
import { FirestorageService } from './services/firestorage.service';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrl: './app.component.css'
})
export class AppComponent {
  title = environment.title;
  email = ! '';
  password = '';
  constructor(public authService: AuthService, public firestorage: FirestorageService) { }
}
