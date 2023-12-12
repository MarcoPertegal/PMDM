import { Component } from '@angular/core';
import { environment } from '../environments/environments.prod';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrl: './app.component.css'
})
export class AppComponent {
  title = environment.title;
}
