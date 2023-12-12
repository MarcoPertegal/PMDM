import { Component } from '@angular/core';
import { environment } from '../environments/environments.prod';
import { AuthService } from './services/auth.service';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrl: './app.component.css'
})
export class AppComponent {
  title = environment.title;

  constructor(public auth: AuthService) { }
}
