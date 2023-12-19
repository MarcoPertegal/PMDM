import { Component } from '@angular/core';
import { PlayerService } from '../../services/player.service';
import { Router } from '@angular/router';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrl: './home.component.css'
})
export class HomeComponent {
  name: string = '';

  constructor(public playerService: PlayerService, private router: Router) { }


  addPlayer() {
    this.playerService.createPlayer(this.name);
    this.router.navigateByUrl('/table');
  }
}
